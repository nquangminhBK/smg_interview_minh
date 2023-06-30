import 'package:flutter/material.dart';

class AppColors {
  Color primaryColor;
  Color secondaryColor;
  Color screenBackgroundColor;
  Color buttonBackgroundColor;
  Color titleTextColor;
  Color borderButtonColor;
  Color contentTextColor;
  Color itemListBackgroundColor;
  Color hintColor;
  Color cursorColor;
  Color buttonTextColor;
  Color textColorInBackground;
  Color bottomBarColor;
  Color cardColor;

  AppColors({
    required this.primaryColor,
    required this.secondaryColor,
    required this.screenBackgroundColor,
    required this.buttonBackgroundColor,
    required this.titleTextColor,
    required this.borderButtonColor,
    required this.contentTextColor,
    required this.itemListBackgroundColor,
    required this.hintColor,
    required this.cursorColor,
    required this.buttonTextColor,
    required this.textColorInBackground,
    required this.bottomBarColor,
    required this.cardColor,
  });

  static AppColors lightColor = AppColors(
      primaryColor: const Color(0xffA4c013),
      secondaryColor: const Color(0xffF4511E),
      screenBackgroundColor: const Color(0xfff1f1f1),
      buttonBackgroundColor: Colors.black,
      titleTextColor: Colors.black,
      contentTextColor: Colors.white,
      itemListBackgroundColor: Colors.black45,
      hintColor: Colors.grey,
      cursorColor: Colors.black,
      buttonTextColor: Colors.white,
      textColorInBackground: Colors.black,
      bottomBarColor: Colors.white,
      borderButtonColor: Colors.white,
      cardColor: Colors.white);

  static AppColors darkColor = AppColors(
    primaryColor: const Color(0xffBDDb0b),
    secondaryColor: const Color(0xffF4511E),
    screenBackgroundColor: const Color(0xFF212121),
    buttonBackgroundColor: Colors.black,
    titleTextColor: Colors.white,
    contentTextColor: Colors.black,
    itemListBackgroundColor: Colors.black45,
    hintColor: Colors.grey,
    cursorColor: Colors.grey,
    buttonTextColor: Colors.white,
    textColorInBackground: Colors.black,
    bottomBarColor: Colors.black,
    borderButtonColor: Colors.black,
    //cardColor:  const Color(0xFF1A1A1A),
    cardColor: const Color(0xff101010),
  );
}
