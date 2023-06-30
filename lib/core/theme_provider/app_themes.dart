import 'package:flutter/material.dart';
import 'package:minh_interview_project/core/theme_provider/text_theme.dart';


import 'app_colors.dart';

class AppTheme {
  ThemeData lightTheme(context) => ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: AppColors.darkColor.primaryColor,
    hintColor: AppColors.darkColor.hintColor,
    cardColor: AppColors.darkColor.itemListBackgroundColor,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    textTheme: textTheme(context),
  );

  ThemeData darkTheme(context) => ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: AppColors.lightColor.primaryColor,
    hintColor: Colors.grey,
    cardColor: AppColors.lightColor.itemListBackgroundColor,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    textTheme: textTheme(context),
  );

  textTheme(context) => Theme.of(context).textTheme.copyWith(
    displayLarge: PrimaryFont.bold().copyWith(fontSize: 60),
    displayMedium: PrimaryFont.bold().copyWith(fontSize: 50),
    displaySmall: PrimaryFont.bold().copyWith(fontSize: 40),
    headlineMedium: PrimaryFont.bold().copyWith(fontSize: 30),
    headlineSmall: PrimaryFont.bold().copyWith(fontSize: 25),
    titleLarge: PrimaryFont.medium().copyWith(fontSize: 18),
    titleMedium: PrimaryFont.medium().copyWith(fontSize: 15),
    titleSmall: PrimaryFont.medium(),
    bodyLarge: PrimaryFont.thin(),
    labelLarge: PrimaryFont.bold(),
    bodySmall: PrimaryFont.bold(),
  );
}