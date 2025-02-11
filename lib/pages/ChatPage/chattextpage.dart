import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../CustomWidgets/ChatBubble.dart';
import '../../models/message_model.dart';
import 'chat_firebase.dart';

class ChatDetailsPage extends StatefulWidget {
  @override
  _ChatDetailsPageState createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  final TextEditingController messageController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  List<Message> _list=[


  ];

  List<String> conversation = [
    'Knock Knock!',
    'Who\'s there?',
    'Candice',
    'Candice who?',
  ];

  Future chooseFromGallery() async {
    final ImagePicker imageSelector = ImagePicker();
    final XFile? selectedImage = await imageSelector.pickImage(source: ImageSource.gallery);
    if (selectedImage != null) {
      setState(() {});
    }
  }

  Future<void> captureFromCamera() async {
    final ImagePicker imageSelector = ImagePicker();
    final XFile? capturedImage = await imageSelector.pickImage(source: ImageSource.camera);
    if (capturedImage != null) {
      setState(() {});
    }
  }

  void addNewMessage() async {
    if (messageController.text.isNotEmpty) {
      await firebase.sendMessage(messageController.text);

      setState(() {
        conversation.add(messageController.text);
        messageController.clear();
      });

      Future.delayed(Duration(milliseconds: 300), () {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      });
    } else {
      Get.snackbar(
        "Error",
        "Message cannot be empty!",
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 2),
        boxShadows: [BoxShadow(color: Color(0xC7CC5858), blurRadius: 14)],
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = Get.arguments as Map<String, dynamic>;
    final String chatName = args['name'];
    final Image chatAvatar = args['image'];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: chatAvatar.image,
              radius: 19,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    chatName,
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Online',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xff0B1014),
        actions: [
          IconButton(
            onPressed: captureFromCamera,
            icon: const Icon(Icons.videocam_outlined, size: 28, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.phone_outlined, color: Colors.white),
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert, color: Colors.white, size: 28),
            itemBuilder: (context) => [
              'View profile',
              'Search conversation',
              'Add to contacts',
              'Media, links, and docs',
              'Silence alerts',
              'Additional options'
            ].map((item) {
              return PopupMenuItem<String>(
                value: item,
                child: ListTile(title: Text(item, style: TextStyle(color: Colors.white))),
              );
            }).toList(),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/wallpaper/brightwallpaper.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [

              //dynamic chats
              Expanded(
                child: StreamBuilder(
                  stream: firebase.getAllMessages(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }
                    final data = snapshot.data?.docs;
                    if (data == null || data.isEmpty) {
                      return const Center(child: Text('No messages available'));
                    }
                    _list.clear();
                    _list.add(Message(isSeen: false, msgtype: 'text', receiverId: 'user1', senderId: 'user1', text: 'msg1 this is crossid', timestamp: DateTime.timestamp()));
                    _list.add(Message(isSeen: false, msgtype: 'text', receiverId: 'user1', senderId: 'user1', text: 'msg1 this is cross id as well a bit long , uk djsdjsadk jdsajdsak ksnd jajasldkjj asljd jlaslkdas jkljjdflk jldfksj kld', timestamp: DateTime.timestamp()));
                    _list.add(Message(isSeen: false, msgtype: 'text', receiverId: 'Mummy', senderId: 'user1', text: 'msg2 this is sameid', timestamp: DateTime.timestamp()));

                    return ListView.builder(
                      itemCount: _list.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return MessageCard(message: _list[index]);
                      },
                    );
                  },
                ),
              ),




              // Static conversation messages
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView.builder(
                    controller: scrollController,
                    reverse: false,
                    itemCount: conversation.length,
                    itemBuilder: (context, index) {
                      return ChatBubble(
                        text: conversation[index],
                        isSender: index % 2 == 0,
                      );
                    },
                  ),
                ),
              ),















              //textfield keyboard
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff171e1e),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.smiley, color: Colors.white70),
                      ),
                      Expanded(
                        child: TextField(
                          controller: messageController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Message',
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: chooseFromGallery,
                        icon: Icon(Icons.attach_file, color: Colors.white70),
                      ),
                      IconButton(
                        onPressed: captureFromCamera,
                        icon: Icon(Icons.camera_alt_outlined, color: Colors.white70),
                      ),
                      IconButton(
                        onPressed: addNewMessage,
                        icon: Icon(Icons.send, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
