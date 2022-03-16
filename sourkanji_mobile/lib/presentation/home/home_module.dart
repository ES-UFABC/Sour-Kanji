import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/home/home_cubit.dart';
import 'package:sourkanji_mobile/presentation/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => HomeCubit()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (context, args) => const HomePage(),
        ),
      ];
}
