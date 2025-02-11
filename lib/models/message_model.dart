import 'package:flutter/material.dart';

class Message {
  bool isSeen;
  String msgtype;
  String receiverId;
  String senderId;
  String text;
  DateTime timestamp;

  Message({
    required this.isSeen,
    required this.msgtype,
    required this.receiverId,
    required this.senderId,
    required this.text,
    required this.timestamp,
  });

}


