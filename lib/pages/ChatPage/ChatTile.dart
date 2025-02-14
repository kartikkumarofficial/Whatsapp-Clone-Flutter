import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/models/chat_user_model.dart';
import 'package:whatsappclone/pages/EditContact.dart';
import 'package:whatsappclone/pages/NewContact.dart';
import 'chattextpage.dart';

class CustomChatTile extends StatelessWidget {
  final ChatUser chatUser;
  final double srcWidth;

  const CustomChatTile({
    Key? key,
    required this.chatUser,
    required this.srcWidth, required String name, required String imageUrl, required message, required time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {

        // print("User Image URL: ${chatUser.image}");
        Get.to(ChatDetailsPage(), arguments: {
          'name': chatUser.name,
          'image': chatUser.image,
        });
      },
      leading: InkWell(
        onTap: (){
          Get.to(EditContactPage(),
            arguments: {
          'name': chatUser.name,
          'image': chatUser.image,}

          );
        },
        child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey.shade200,
        child: ClipOval(
        child: CachedNetworkImage(
        imageUrl: chatUser.image,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
        ),),
        ),
      ),
      title: Text(
        chatUser.name,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      subtitle: Row(
        children: [
          const Icon(Icons.check, size: 16, color: Colors.grey),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              chatUser.lastMessage,
              style: const TextStyle(color: Colors.grey),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      trailing: Text(
        chatUser.lastActive,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 13,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
    );
  }
}


