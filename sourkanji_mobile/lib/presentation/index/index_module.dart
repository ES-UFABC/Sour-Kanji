import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/index/index_controller.dart';
import 'package:sourkanji_mobile/presentation/index/index_page.dart';

class IndexModule extends Module {
  static const String path = "/index";

  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => IndexControler(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => const IndexPage(),
        ),
      ];
}
