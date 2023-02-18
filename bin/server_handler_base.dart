import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class ServerHandlerBase {
  Handler get handler {
    final router = Router();

    router.get('/', (Request request) {
      return Response(200, body: 'Teste de primeira rota get');
    });

    router.get('/ola/primeira-rota/<dado>', (Request request, String dado) {
      return Response.ok("Olá, essa é a primeira rota: $dado");
    });

    router.get('/query', (Request request) {
      String? dado = request.url.queryParameters['dado'];
      return Response.ok("Olá, dado da rota query: $dado");
    });

    return router;
  }
}
