import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emergency Alerts')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('alerts').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          return ListView(
            children: snapshot.data!.docs.map((doc) {
              return ListTile(
                title: Text(doc['title']),
                subtitle: Text(doc['description']),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
