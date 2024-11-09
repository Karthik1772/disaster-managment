import 'package:flutter/material.dart';
import 'constants.dart';

class AppStyles {
  // Text Styles
  static const TextStyle heading = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle subheading = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16.0,
    color: Colors.black87,
  );

  static const TextStyle errorText = TextStyle(
    fontSize: 16.0,
    color: Constants.errorColor,
  );

  static const TextStyle successText = TextStyle(
    fontSize: 16.0,
    color: Constants.successColor,
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 16.0,
    color: Constants.primaryColor,
    decoration: TextDecoration.underline,
  );

  // Button Style
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Constants.primaryColor,
    textStyle: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  );

  // Card Style
  static BoxDecoration cardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 5,
        offset: const Offset(0, 3),
      ),
    ],
  );
}
