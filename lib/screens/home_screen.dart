import 'package:flutter/material.dart';
import 'alert_screen.dart';
import 'precaution_screen.dart';
import 'healthcare_screen.dart';
import 'first_aid_screen.dart';
import 'news_screen.dart';
import 'chat_screen.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Disaster Management')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(title: 'Emergency Alerts', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AlertScreen()));
            }),
            CustomButton(title: 'Precautionary Measures', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PrecautionScreen()));
            }),
            CustomButton(title: 'Healthcare Facilities', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HealthcareScreen()));
            }),
            CustomButton(title: 'First Aid', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstAidScreen()));
            }),
            CustomButton(title: 'Disaster News', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen()));
            }),
            CustomButton(title: 'Emergency Chatbot', onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen()));
            }),
          ],
        ),
      ),
    );
  }
}
