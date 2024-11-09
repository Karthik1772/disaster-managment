import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final String name;
  final String address;
  final VoidCallback? onTap;

  const LocationCard({super.key, required this.name, required this.address, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const Icon(Icons.local_hospital, color: Colors.red),
        title: Text(name, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
        subtitle: Text(address),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
