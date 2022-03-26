import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/splash/splash_controller.dart';
import 'package:sourkanji_mobile/shared/extensions/build_context_ext.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashControler> {
  @override
  void initState() {
    controller.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: context.mediaQuery.viewPadding.top),
          LinearProgressIndicator(),
          Expanded(
            child: Center(
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          SizedBox(height: context.mediaQuery.viewPadding.bottom),
        ],
      ),
    );
  }
}
