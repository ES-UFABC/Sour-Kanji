import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/signin/signin_cubit.dart';
import 'package:sourkanji_mobile/presentation/signin/signin_page.dart';

class SigninModule extends Module {
  static const String path = "/signin/";

  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => SigninCubit(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => SigninPage(),
        ),
      ];
}
