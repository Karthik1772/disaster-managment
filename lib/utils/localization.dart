import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalizationConfig {
  // Supported locales
  static const List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('hi', 'IN'),
    Locale('mr', 'IN'),
  ];

  // Path to the translation files
  static const String translationPath = 'assets/language';

  // Helper method to set the locale dynamically
  static void setLocale(BuildContext context, Locale locale) {
    context.setLocale(locale);
  }

  // Get list of supported locales
  static List<Locale> getLocales() => supportedLocales;
}
