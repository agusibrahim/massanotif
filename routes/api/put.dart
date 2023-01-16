import 'package:dart_frog/dart_frog.dart';
import 'package:hive/hive.dart';

Future<Response> onRequest(RequestContext context) async {
  var box = Hive.box("trx");
  if (context.request.method != HttpMethod.post) {
    return Response(body: 'MUST POST, not ${context.request.method}');
  }
  var data = await context.request.json();
  if (data['trxid'] == null) {
    return Response(body: 'no trxid');
  }
  await box.put(data['trxid'], "p");
  return Response(body: 'data inserted!');
}
