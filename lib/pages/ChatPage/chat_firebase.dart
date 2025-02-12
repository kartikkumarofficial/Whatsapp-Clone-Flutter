import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'chattextpage.dart';
//services ft firestore services
import 'package:cloud_firestore/cloud_firestore.dart';


class firebase {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllMessages() {
    return firestore.collection('messages').orderBy(
        'timestamp', descending: false).snapshots();
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllUsers() {
    return firestore.collection('users').snapshots();
  }

  // static Future<bool> userExists() async{
    // return await firestore.collection('users').doc();
  // }


  static Future<void> sendMessage(String text) async {
    await firestore.collection('messages').add({
      'text': text,
      // 'senderId':chatName,

      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  //chats(collection) -> chatId(doc) -> messages(collection) ->message(doc)


}
