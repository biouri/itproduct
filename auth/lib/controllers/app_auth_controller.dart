import 'package:auth/models/app_response_model.dart';
import 'package:conduit_core/conduit_core.dart';

class AppAuthController extends ResourceController {
  final ManagedContext managedContext;
  
  AppAuthController({
    required this.managedContext,
  });

  // Авторизация
  @Operation.post()
  Future<Response> signIn() async {
    return Response.ok(
      AppResponseModel(
        data: {
          "id": "1",
          "refreshToken": "refreshToken",
          "accessToken": "accessToken", 
        },
        message: "signIn ok"
      ).toJson(),
    );
  }
  
  // Создание пользователя
  @Operation.put()
  Future<Response> signUp() async {
    return Response.ok(
      AppResponseModel(
        data: {
          "id": "1",
          "refreshToken": "refreshToken",
          "accessToken": "accessToken", 
        },
        message: "signUp ok"
        ).toJson(),
      );
  }

  // Обновление токена
  @Operation.post("refresh")
  Future<Response> refreshToken() async {
    return Response.unauthorized(
      body: AppResponseModel(error: "token is not valid").toJson()
    );
  }
}
