import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sourkanji_mobile/presentation/app/app.dart';
import 'package:sourkanji_mobile/shared/utils/app_logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  AppLogger.init();

  runApp(const App());
}
