import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  if (!Platform.environment.containsKey("FCMKEY")) {
    print("plz set FCMKEY in env. signaling not working!!");
  } else {
    print("fcm key '${Platform.environment['FCMKEY']}' has been set!");
    Timer.periodic(const Duration(seconds: 10), (timer) {
      checkForStatus();
    });
  }
  Hive.init("dataku.db");

  Hive.openBox("trx");
  return serve(handler, ip, 7765);
}

void checkForStatus() {
  var box = Hive.box("trx");
  box.toMap().forEach((key, value) {
    Dio().post("https://test.massa.net/api/v2", data: {
      "jsonrpc": "2.0",
      "method": "get_operations",
      "params": [
        [key]
      ],
      "id": 0
    }).then((res) async {
      var result = res.data['result'] as List<dynamic>;
      if (result.isEmpty) {
        box.delete(key);
        sendNotif(key, "done");
      } else {
        print("status: ${result.first['is_final']}");
        if (result.first['is_final'] as bool) {
          box.delete(key);
          var r = await Dio().post("https://test.massa.net/api/v2", data: {
            "jsonrpc": "2.0",
            "method": "get_filtered_sc_output_event",
            "params": [
              {"start": null, "end": null, "emitter_address": null, "original_caller_address": null, "original_operation_id": key}
            ],
            "id": 0
          });
          var data = {};
          var resultd = r.data['result'] as List<dynamic>;
          if (resultd.isEmpty) {
            data["status"] = "OK";
            data["err"] = "";
            data["op"] = result.first['operation'];
            sendNotif(key, data);
            return;
          }
          var errjson = json.decode("${resultd.first['data']}");
          if (errjson['massa_execution_error'] != null) {
            data["status"] = "ER";
            data["err"] = errjson['massa_execution_error'];
            data["op"] = result.first['operation'];
          }
          sendNotif(key, data);
        }
      }
    });
  });
}

void sendNotif(key, data) {
  Dio(BaseOptions(headers: {
    "Content-Type": "application/json",
    "Authorization": "key=${Platform.environment['FCMKEY']}",
  })).post("https://fcm.googleapis.com/fcm/send", data: {"to": "/topics/trx_$key", "data": data}).then((d) {
    print("notif sent! ${d.data}");
  });
}
