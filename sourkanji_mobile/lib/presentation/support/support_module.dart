import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/support/support_controller.dart';
import 'package:sourkanji_mobile/presentation/support/support_page.dart';

class SupportModule extends Module {
  static const String path = "/support/";
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => SupportController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => const SupportPage(),
        ),
      ];
}
