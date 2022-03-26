import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/shared/env.dart';

class HttpService implements Disposable {
  static HttpService get to => Modular.get();
  late final Dio _client = Dio(
    BaseOptions(
      baseUrl: Env.baseUrl,
    ),
  );
  Dio get client => _client;

  HttpService init() {
    _client.interceptors.add(LogInterceptor());
    return this;
  }

  @override
  void dispose() {
    _client.close();
  }
}
