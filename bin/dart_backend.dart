import 'package:shelf/shelf_io.dart' as shelf_io;

import 'server_handler_base.dart';

void main() async {
  var serverHandlerBase = ServerHandlerBase();

  final server =
      await shelf_io.serve(serverHandlerBase.handler, 'localhost', 8080);

  print('Servidor Iniciado ${server.address.host}:${server.port}');
}
