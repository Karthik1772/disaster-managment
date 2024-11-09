import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/alert_model.dart';
import '../models/healthcare_model.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Fetch emergency alerts from Firestore
  Stream<List<Alert>> getAlerts() {
    return _db.collection('alerts').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Alert.fromJson(doc.data())).toList());
  }

  // Fetch healthcare facilities from Firestore
  Future<List<HealthcareCenter>> getHealthcareCenters() async {
    var snapshot = await _db.collection('healthcare_centers').get();
    return snapshot.docs.map((doc) => HealthcareCenter.fromJson(doc.data())).toList();
  }
}
