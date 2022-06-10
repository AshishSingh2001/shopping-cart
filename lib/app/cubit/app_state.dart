import 'package:shopping_cart/enum/app_languages.dart';
import 'package:shopping_cart/enum/app_theme.dart';
import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  final AppTheme? appTheme;
  final AppLanguage? appLanguage;

  const AppState({this.appTheme, this.appLanguage});

  @override
  List<Object?> get props => [appTheme, appLanguage];
}
