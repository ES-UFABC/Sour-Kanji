import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/kanji/kanji_controller.dart';
import 'package:sourkanji_mobile/presentation/kanji/kanji_page.dart';

class KanjiModule extends Module {
  static const String path = "/kanji";

  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => KanjiControler(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => const KanjiPage(),
        ),
      ];
}
