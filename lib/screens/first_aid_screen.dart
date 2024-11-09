import 'package:flutter/material.dart';

class FirstAidScreen extends StatelessWidget {
  final List<String> firstAidInstructions = [
    "Check for responsiveness and breathing. If unresponsive and not breathing, call emergency services immediately.",
    "If bleeding, apply pressure to the wound using a clean cloth or bandage.",
    "For burns, run cool water over the affected area for at least 10 minutes.",
    "If choking, perform the Heimlich maneuver if trained to do so.",
    "For fractures, avoid moving the affected limb. Immobilize it if possible.",
    "Stay calm and reassure the person until professional help arrives.",
  ];

  FirstAidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Aid Instructions'),
      ),
      body: ListView.builder(
        itemCount: firstAidInstructions.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.health_and_safety, color: Colors.green),
              title: Text(
                firstAidInstructions[index],
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
