import 'dart:math';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class CardOfADayFromFirebase {
  String? cardOfADayURL;

  Future getData() async {
    try {
      await downloadURL();
      return cardOfADayURL;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }

  Future<void> downloadURL() async {
    int number = Random().nextInt(126) + 1;

    cardOfADayURL = await FirebaseStorage.instance
        .ref()
        .child('source_$number.png')
        .getDownloadURL();
  }
}
