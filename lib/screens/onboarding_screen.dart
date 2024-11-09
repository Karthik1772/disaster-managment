import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to Disaster Management",
          body: "Helping you stay informed and prepared during emergencies.",
          image: Image.asset('assets/images/onboarding1.png'),
        ),
        PageViewModel(
          title: "Stay Alert",
          body: "Receive real-time alerts during emergencies.",
          image: Image.asset('assets/images/onboarding2.png'),
        ),
        PageViewModel(
          title: "Find Help",
          body: "Locate nearby healthcare facilities and resources.",
          image: Image.asset('assets/images/onboarding3.png'),
        ),
      ],
      onDone: () => Navigator.pushReplacementNamed(context, '/home'),
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Done"),
    );
  }
}
