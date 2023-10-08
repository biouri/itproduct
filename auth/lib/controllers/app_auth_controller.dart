import 'package:auth/models/app_response_model.dart';
import 'package:auth/models/user.dart';
import 'package:conduit_core/conduit_core.dart';

class AppAuthController extends ResourceController {
  final ManagedContext managedContext;
  
  AppAuthController({
    required this.managedContext,
  });

  // Авторизация
  @Operation.post()
  Future<Response> signIn(@Bind.body() User user) async {
    if (user.password == null || user.username == null) {
      return Response.badRequest(body: AppResponseModel(
        message: "Поля password, username обязательны"
      ));
    }

    final User fetchedUser = User();

    // connect to DB
    // find user
    // check password
    // fetch user

    return Response.ok(
      AppResponseModel(
        data: {
          "id": fetchedUser.id,
          "refreshToken": fetchedUser.refreshToken,
          "accessToken": fetchedUser.accessToken, 
        },
        message: "Успешная авторизация"
      ).toJson(),
    );
  }
  
  // Создание пользователя
  @Operation.put()
  Future<Response> signUp(@Bind.body() User user) async {
    if (user.password == null || user.username == null || user.email == null) {
      return Response.badRequest(body: AppResponseModel(
        message: "Поля password, username, email обязательны"
      ));
    }

    final User fetchedUser = User();

    // connect to DB
    // create user
    // fetch user

    return Response.ok(
      AppResponseModel(
        data: {
          "id": fetchedUser.id,
          "refreshToken": fetchedUser.refreshToken,
          "accessToken": fetchedUser.accessToken, 
        },
        message: "Успешная регистрация"
      ).toJson(),
    );
  }

  // Обновление токена
  @Operation.post("refresh")
  Future<Response> refreshToken(@Bind.path("refresh") String refreshToken) async {
    final User fetchedUser = User();

    // connect to DB
    // find user
    // check token
    // fetch user

    return Response.ok(
      AppResponseModel(
        data: {
          "id": fetchedUser.id,
          "refreshToken": fetchedUser.refreshToken,
          "accessToken": fetchedUser.accessToken, 
        },
        message: "Успешное обновление токенов"
      ).toJson(),
    );
  }
}
