import 'package:cloud_firestore/cloud_firestore.dart';

class Alert {
  final String title;
  final String description;
  final DateTime timestamp;

  Alert({
    required this.title,
    required this.description,
    required this.timestamp,
  });

  // Factory constructor to create an Alert instance from a JSON map
  factory Alert.fromJson(Map<String, dynamic> json) {
    return Alert(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      timestamp: (json['timestamp'] as Timestamp).toDate(),
    );
  }

  // Convert Alert instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'timestamp': timestamp,
    };
  }
}
