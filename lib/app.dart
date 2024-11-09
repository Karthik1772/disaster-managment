

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'screens/home_screen.dart';
import 'screens/onboarding_screen.dart';

class ResponseApp extends StatelessWidget {
  const ResponseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disaster Management',
      theme: ThemeData(primarySwatch: Colors.blue),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
