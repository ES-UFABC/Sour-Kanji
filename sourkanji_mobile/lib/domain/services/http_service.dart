import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/shared/utils/app_logger.dart';

class HttpService implements Disposable {
  static HttpService get to => Modular.get();
  static Future<HttpService> get toAsync => Modular.getAsync();
  late final Dio _client;
  Dio get client => _client;

  Future<HttpService> init() async {
    _client = Dio();

    // ignore: no_runtimetype_tostring
    AppLogger.v('$runtimeType ready!');

    return this;
  }

  @override
  void dispose() {
    _client.close();
  }
}
