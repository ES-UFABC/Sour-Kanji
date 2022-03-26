import 'package:flutter/material.dart';

class SessionService {
  static final SessionService _sessionService = SessionService._internal();

  factory SessionService() {
    return _sessionService;
  }

  SessionService._internal();

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
}
