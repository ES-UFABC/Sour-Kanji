import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/signup/signup_page.dart';

class SignupModule extends Module {
  static const String path = "/signup/";

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => SignupPage(),
        ),
      ];
}
