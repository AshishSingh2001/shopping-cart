import 'package:logger/logger.dart';

import 'package:shopping_cart/env/env.dart';

class AppLogger {
  AppLogger._() {
    Logger.level = loggerLevel;

    _logger = Logger(printer: PrettyPrinter());
  }
  static final AppLogger _instance = AppLogger._();
  static AppLogger get instance => _instance;

  static late Logger _logger;

  void i(dynamic message) {
    _logger.i(message);
  }

  void d(dynamic message) {
    _logger.d(message);
  }

  void v(dynamic message) {
    _logger.v(message);
  }

  void w(dynamic message) {
    _logger.w(message);
  }

  void e(dynamic message) {
    _logger.e(message);
  }

  void wtf(dynamic message) {
    _logger.wtf(message);
  }
}
