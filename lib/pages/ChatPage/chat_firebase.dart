import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/models/chat_user_model.dart';
import 'chattextpage.dart';
//services ft firestore services
import 'package:cloud_firestore/cloud_firestore.dart';


class firebase {


  static final FirebaseAuth auth = FirebaseAuth.instance;

  //to return current user
  static get userr => auth.currentUser!;

  // var uid = auth.currentUser!.uid;
  static FirebaseFirestore firestore = FirebaseFirestore.instance;


  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllMessages() {
    return firestore.collection('messages').orderBy(
        'timestamp', descending: false).snapshots();
  }

  //function to get all users from firestore database
  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllUsers() {
    return firestore.collection('users').snapshots();
  }

  //function to check if user exists or not , has a specific uid
  static Future<bool> userExists() async {
    final doc = await firestore.collection('users').doc(auth.currentUser!.uid).get();
    return doc.exists;
  }



  //function to create a new user
  static Future<void> createUser() async{
    final time=DateTime.now().millisecondsSinceEpoch.toString();

    final user = ChatUser(
        email: userr.email!.toString(),
        name: userr.displayName.toString(),
        userId: userr.uid,
        image: auth.currentUser!.photoURL.toString(),
    createdAt: time,
    lastActive: time,
    about: "Hey , I am using WhatsApp!",
    isOnline: false,
    pushToken: '');
    return
      await firestore.collection('users').doc(userr!.uid).set(user.toJson());

  }




//function to send a message to a specific id
  static Future<void> sendMessage(String text) async {
    await firestore.collection('messages').add({
      'text': text,
      'senderId':userr.uid,

      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  //chats(collection) -> chatId(doc) -> messages(collection) ->message(doc)


}
