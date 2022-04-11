import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/about/about_controller.dart';
import 'package:sourkanji_mobile/presentation/about/about_page.dart';

class AboutModule extends Module {
  static const String path = "/about/";
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => AboutController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => const AboutPage(),
        ),
      ];
}
