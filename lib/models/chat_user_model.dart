import 'package:flutter/material.dart';

// To parse this JSON data, do
//
//     final chatUser = chatUserFromJson(jsonString);

import 'dart:convert';

ChatUser chatUserFromJson(String str) => ChatUser.fromJson(json.decode(str));

String chatUserToJson(ChatUser data) => json.encode(data.toJson());

class ChatUser {
  String about;
  String createdAt;
  String email;
  String image;
  bool isOnline;
  String lastActive;
  String name;
  String pushToken;
  String userId;

  ChatUser({
    required this.about,
    required this.createdAt,
    required this.email,
    required this.image,
    required this.isOnline,
    required this.lastActive,
    required this.name,
    required this.pushToken,
    required this.userId,
  });

  factory ChatUser.fromJson(Map<String, dynamic> json) => ChatUser(
    about: json["about"]?? '',
    createdAt: json["created_at"]?? '',
    email: json["email"]?? '',
    image: json["image"]?? '',
    isOnline: json["is_online"]?? false,
    lastActive: json["last_active"]?? 'last_active_here',
    name: json["name"]?? '',
    pushToken: json["push_token"]?? '',
    userId: json["userId"]?? '',
  );

  get imageUrl => null;

  get lastMessage => about;

  get lastMessageTime => null;

  Map<String, dynamic> toJson() => {
    "about": about,
    "created_at": createdAt,
    "email": email,
    "image": image,
    "is_online": isOnline,
    "last_active": lastActive,
    "name": name,
    "push_token": pushToken,
    "userId": userId,
  };
}
