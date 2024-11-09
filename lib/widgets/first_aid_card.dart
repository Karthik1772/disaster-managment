import 'package:flutter/material.dart';

class FirstAidCard extends StatelessWidget {
  final String instruction;

  const FirstAidCard({super.key, required this.instruction});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const Icon(Icons.health_and_safety, color: Colors.green),
        title: Text(
          instruction,
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
