import 'package:dart_frog/dart_frog.dart';
import 'package:hive/hive.dart';

Future<Response> onRequest(RequestContext context) async {
  var box = Hive.box("jos");
  box.put("visit", box.get("visit") == null ? 1 : box.get("visit") + 1);
  return Response(body: 'Welcome to Dart Frog! (${box.get("visit")})');
}
