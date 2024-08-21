import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: bodyMedium(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.symmetric(vertical: 15),
    ),
  ),
  brightness: Brightness.light,
  useMaterial3: true,
  textTheme: TextTheme(
      titleMedium: titleMedium(),
      bodyLarge: bodyLarge(),
      bodyMedium: bodyMedium(),
      titleSmall: titleSmall()),
);

TextStyle? titleMedium() {
  return const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
}

TextStyle? titleSmall() {
  return const TextStyle(fontSize: 12, fontWeight: FontWeight.w400);
}

TextStyle? bodyLarge() {
  return const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold);
}

TextStyle? bodyMedium() {
  return const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500);
}
