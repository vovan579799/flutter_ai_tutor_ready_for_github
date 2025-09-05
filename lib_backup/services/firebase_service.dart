
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Example: save user goal
  Future<void> saveGoal(String userId, Map<String, dynamic> goal) async {
    await _db.collection('goals').doc(userId).set(goal);
  }
}
