import 'package:shopping_cart/enum/app_languages.dart';
import 'package:flutter/material.dart';

Locale getAppLocale({AppLanguage appLanguage = AppLanguage.en}) {
  return Locale(appLanguage.name);
}
