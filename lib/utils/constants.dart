import 'package:flutter/material.dart';

class Constants {
  // Application Info
  static const String appName = 'Response Disaster Management';

  // API Keys (replace these with actual keys)
  static const String newsApiKey = 'YOUR_NEWS_API_KEY';
  static const String googleMapsApiKey = 'YOUR_GOOGLE_MAPS_API_KEY';

  // Firestore Collection Names
  static const String alertsCollection = 'alerts';
  static const String healthcareCentersCollection = 'healthcare_centers';

  // Default Messages
  static const String defaultErrorMessage = 'An error occurred. Please try again later.';
  static const String defaultLoadingMessage = 'Loading...';
  static const String noDataFoundMessage = 'No data available at the moment.';

  // Colors
  static const Color primaryColor = Colors.blue;
  static const Color accentColor = Colors.orange;
  static const Color successColor = Colors.green;
  static const Color errorColor = Colors.red;

  // Icon Sizes
  static const double iconSizeSmall = 20.0;
  static const double iconSizeMedium = 24.0;
  static const double iconSizeLarge = 28.0;
}
