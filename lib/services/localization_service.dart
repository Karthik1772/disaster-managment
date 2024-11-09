import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalizationService {
  // Set app language to the specified locale
  void setLocale(BuildContext context, Locale locale) {
    context.setLocale(locale);
  }

  // Get list of supported locales
  List<Locale> get supportedLocales => [
        const Locale('en', 'US'),
        const Locale('hi', 'IN'),
        const Locale('mr', 'IN'),
      ];
}
