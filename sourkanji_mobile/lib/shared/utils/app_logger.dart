import 'package:logger/logger.dart';

class AppLogger {
  static Logger? _logger;

  static void init({
    Level level = Level.verbose,
  }) {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 3,
        printTime: level == Level.error,
      ),
      level: level,
    );
  }

  static void write(
    String text, {
    bool isError = false,
    bool isWarning = false,
    bool isInfo = false,
    bool isDebug = false,
  }) {
    assert(_logger != null);
    Future<void>.microtask(() {
      if (isError) {
        _logger?.e(text);
      } else if (isWarning) {
        _logger?.w(text);
      } else if (isInfo) {
        _logger?.i(text);
      } else if (isDebug) {
        _logger?.d(text);
      } else {
        _logger?.v(text);
      }
    });
  }

  /// Log Info
  static void i(dynamic log) {
    Future<void>.microtask(
      () => _logger?.i(log),
    );
  }

  /// Log Debug
  static void d(dynamic log) {
    Future<void>.microtask(
      () => _logger?.d(log),
    );
  }

  /// Log Warning
  static void w(dynamic log) {
    Future<void>.microtask(
      () => _logger?.w(log),
    );
  }

  /// Log Error
  static void e(dynamic log) {
    Future<void>.microtask(
      () => _logger?.e(log),
    );
  }

  /// Log What a terrible error
  static void wtf(dynamic log) {
    Future<void>.microtask(
      () => _logger?.wtf(log),
    );
  }

  /// Log Verbose
  static void v(dynamic log) {
    Future<void>.microtask(
      () => _logger?.v(log),
    );
  }
}
