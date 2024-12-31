import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addJournal(String title, String content) async {
    await _firestore.collection('journals').add({
      'title': title,
      'content': content,
      'dateCreated': DateTime.now().toIso8601String(),
    });
  }
}
