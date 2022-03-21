import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sourkanji_mobile/shared/utils/app_logger.dart';

class HiveService implements Disposable {
  static HiveService get to => Modular.get();
  static Future<HiveService> get toAsync => Modular.getAsync();

  // Boxes
  final String authBoxName = 'auth';
  late Box authBox;

  Future<HiveService> init() async {
    await Hive.initFlutter();
    final boxes = await Future.wait([
      Hive.openBox(authBoxName),
    ]);
    authBox = boxes[0];

    // ignore: no_runtimetype_tostring
    AppLogger.v('$runtimeType ready!');

    return this;
  }

  Future<List<int>> clearBoxes() async {
    return Future.wait([
      authBox.clear(),
    ]);
  }

  @override
  void dispose() {
    Hive.close();
  }
}
