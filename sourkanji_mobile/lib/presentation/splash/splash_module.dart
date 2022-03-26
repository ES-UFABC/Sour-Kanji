import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/splash/splash_controller.dart';
import 'package:sourkanji_mobile/presentation/splash/splash_page.dart';

class SplashModule extends Module {
  static const String path = "/";

  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => SplashControler(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => const SplashPage(),
        ),
      ];
}
