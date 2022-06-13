import 'package:equatable/equatable.dart';

import 'package:shopping_cart/utils/enum.dart';

class AppState extends Equatable {
  const AppState({this.appTheme, this.appLanguage});
  final AppTheme? appTheme;
  final AppLanguage? appLanguage;

  @override
  List<Object?> get props => [appTheme, appLanguage];
}
