import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class firebase {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;


  static Stream<QuerySnapshot<Map<String,dynamic>>> getAllMessages(){
    return firestore.collection('chats').orderBy('timestamp',descending: false).snapshots();
}

}

