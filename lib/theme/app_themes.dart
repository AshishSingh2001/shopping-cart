import 'package:flutter/material.dart';

import 'package:shopping_cart/enum/app_theme.dart';

final Map<AppTheme, ThemeData> appThemes = {
  AppTheme.dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
  ),
  AppTheme.light: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.grey,
  ),
};
