import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/home/home_cubit.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_base_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeCubit> {
  @override
  Widget build(BuildContext context) {
    return SkBasePage(
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
