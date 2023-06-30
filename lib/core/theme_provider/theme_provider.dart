
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get_it/get_it.dart';

import '../constants.dart';
import '../shared_preferences/shared_preferences.dart';
import 'app_colors.dart';

class ThemeServiceProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  AppColors currentAppColor = AppColors.lightColor;
  SharedPreferences sharedPreference = GetIt.I<SharedPreferences>();

  ThemeServiceProvider() {
    bool? isDarkMode = sharedPreference.getValue(isDarkModeKey);
    if (isDarkMode == null) {
      if (SchedulerBinding.instance.window.platformBrightness == Brightness.dark) {
        setDarkTheme();
        return;
      }
      setLightTheme();
      return;
    }
    if (isDarkMode) {
      setDarkTheme();
      return;
    } else {
      setLightTheme();
      return;
    }
  }

  setDarkTheme() {
    sharedPreference.setValue(isDarkModeKey, true);
    currentTheme = ThemeMode.dark;
    currentAppColor = AppColors.darkColor;
    debugPrint("set dark theme");
    notifyListeners();
  }

  setLightTheme() {
    sharedPreference.setValue(isDarkModeKey, false);
    currentTheme = ThemeMode.light;
    currentAppColor = AppColors.lightColor;
    debugPrint("set light theme");
    notifyListeners();
  }

  switchTheme() async {
    bool? isDarkMode = sharedPreference.getValue(isDarkModeKey);
    if (isDarkMode ?? false) {
      setLightTheme();
    } else {
      setDarkTheme();
    }
  }
}