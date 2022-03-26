import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/domain/auth/i_auth_repository.dart';
import 'package:sourkanji_mobile/presentation/signup/signup_cubit.dart';
import 'package:sourkanji_mobile/presentation/signup/signup_page.dart';

class SignupModule extends Module {
  static const String path = "/signup/";

  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => SignupCubit(
            authRepository: i.get<IAuthRepository>(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => const SignupPage(),
        ),
      ];
}
