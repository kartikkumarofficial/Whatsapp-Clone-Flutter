
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/models/chat_user_model.dart';
import 'chattextpage.dart';

class CustomChatTile extends StatelessWidget {
  final ChatUser chatUser;
  final double srcWidth;

  const CustomChatTile({
    Key? key,
    required this.chatUser,
    required this.srcWidth, required String name, required imageUrl, required message, required time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ChatDetailsPage(), arguments: {
          'name': chatUser.name,
          'image': chatUser.image,
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade800, width: 0.5)),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: srcWidth * 0.06,
              backgroundImage: NetworkImage(chatUser.image),
              backgroundColor: Colors.white,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chatUser.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.check, size: 16, color: Colors.grey),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          chatUser.lastMessage, // Assuming lastMessage exists in ChatUser model
                          style: const TextStyle(color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              chatUser.lastActive, // Assuming lastMessageTime exists in ChatUser model
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }}