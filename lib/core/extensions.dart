import 'package:flutter/material.dart';
import 'package:minh_interview_project/core/theme_provider/app_colors.dart';
import 'package:minh_interview_project/core/theme_provider/theme_provider.dart';
import 'package:provider/provider.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  ThemeData get appTheme => Theme.of(this);

  bool get isKeyBoardOpen => MediaQuery.of(this).viewInsets.bottom > 0;


  AppColors get currentAppColor => Provider.of<ThemeServiceProvider>(this).currentAppColor;

  ThemeMode get currentTheme => Provider.of<ThemeServiceProvider>(this, listen: false).currentTheme;
}
