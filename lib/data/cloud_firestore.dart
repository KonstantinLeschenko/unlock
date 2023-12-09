import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFirestore {
  final FirebaseFirestore db;

  const CloudFirestore(this.db);

  Future addUser(Map<String, dynamic> data) async {
    final document = await db.collection('Users').add(data);
    return document;
  }

  Future addFeedBack(Map<String, dynamic> data) async {
    final document = await db.collection('feedback').add(data);
    return document;
  }
}
