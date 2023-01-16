import 'package:dart_frog/dart_frog.dart';
import 'package:hive/hive.dart';

Future<Response> onRequest(RequestContext context) async {
  return Response(body: 'Welcome to massa signaling, visit https://github.com/agusibrahim/massanotif/ for more info');
}
