import 'package:flutter/material.dart';

class PrecautionScreen extends StatelessWidget {
  final List<String> precautions = [
    "Stay calm and follow official instructions.",
    "Prepare an emergency kit with essentials like water, food, and first-aid supplies.",
    "Have a family emergency plan in place and practice it regularly.",
    "Keep important documents and emergency contacts accessible.",
    "Stay informed via official sources for updates and warnings.",
    "Avoid risky areas and routes during natural disasters.",
  ];

  PrecautionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Precautionary Measures'),
      ),
      body: ListView.builder(
        itemCount: precautions.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.warning, color: Colors.orange),
              title: Text(
                precautions[index],
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
