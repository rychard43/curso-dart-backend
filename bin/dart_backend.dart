import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

void main() async {
  
  final server = await shelf_io.serve((request) => Response(200, body: 'OK'), 'localhost', 8080);

  print('Servidor Iniciado ${server.address.host}:${server.port}');





}
