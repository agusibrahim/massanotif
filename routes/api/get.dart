import 'package:dart_frog/dart_frog.dart';
import 'package:hive/hive.dart';

Future<Response> onRequest(RequestContext context) async {
  var box = Hive.box("trx");
  if (context.request.method != HttpMethod.get) {
    return Response(body: 'MUST GET, not ${context.request.method}');
  }
  var data = "";
  box.toMap().forEach((key, value) {
    data += "$key = $value\n";
  });
  return Response(body: data);
}
