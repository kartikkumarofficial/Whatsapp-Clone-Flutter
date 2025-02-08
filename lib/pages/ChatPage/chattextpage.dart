import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'chatspage.dart';

class ChatDetailsPage extends StatefulWidget {
  @override
  _ChatDetailsPageState createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  Future chooseFromGallery() async {
    final ImagePicker imageSelector = ImagePicker();
    final XFile? selectedImage =
    await imageSelector.pickImage(source: ImageSource.gallery);
    if (selectedImage != null) {
      setState(() {});
    }
  }

  Future<void> captureFromCamera() async {
    final ImagePicker imageSelector = ImagePicker();
    final XFile? capturedImage =
    await imageSelector.pickImage(source: ImageSource.camera);

    if (capturedImage != null) {
      setState(() {});
    }
  }

  final TextEditingController messageController = TextEditingController();
  List<String> conversation = [
    'Knock Knock!',
    '''Who's there? ''',
    'Candice',
    'Candice who?',
  ];

  final List optionsList = [
    'View profile',
    'Search conversation',
    'Add to contacts',
    'Media, links, and docs',
    'Silence alerts',
    'Additional options'
  ];

  void addNewMessage() {
    setState(() {
      conversation.add(messageController.text);
      messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var deviceSize = MediaQuery.of(context).size;
    final Map<String, dynamic> args =
    Get.arguments as Map<String, dynamic>;
    final String chatName = args['name'];
    final Image chatAvatar = args['image'];


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
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
            onPressed: () {
              captureFromCamera();
            },
            icon: const Icon(Icons.videocam_outlined, size: 28),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.phone_outlined),
            color: Colors.white,
          ),
          Container(
            color: Color.fromARGB(255, 11, 17, 21),
            child: PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 28,
              ),
              itemBuilder: (context) => optionsList
                  .map((item) => PopupMenuItem<String>(
                value: item,
                padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.zero,
                  child: ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.03),
                        child: Text(
                          item,
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ))
                  .toList(),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            //todo check the image
            image:AssetImage('assets/images/wallpaper/darkwallpaper.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: conversation.length,
                  itemBuilder: (context, index) {
                    return ChatBubble(
                        text: conversation[index],
                        isSender: index % 2 == 0);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff171e1e),
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.smiley , color: Colors.white70,)),

                    SizedBox(width: 10),

                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white70),
                        controller: messageController,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: 'Message',
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          chooseFromGallery();
                        },
                        icon: Icon(
                          Icons.attach_file,
                          color: Colors.white70,
                        )),
                    IconButton(
                      onPressed: () {
                        captureFromCamera();
                      },
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white70,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (messageController.text.isEmpty) {
                          Get.snackbar(
                            "Error",
                            "Message cannot be empty!",
                            snackPosition: SnackPosition.TOP,
                            duration: Duration(seconds: 2),
                            boxShadows: [
                              BoxShadow(
                                  color: Color(0xC7CC5858), blurRadius: 14)
                            ],
                            colorText: Colors.white,
                          );
                        } else {
                          addNewMessage();
                        }
                      },
                      icon: Icon(
                        Icons.send,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;

  ChatBubble({required this.text, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSender ? Color.fromRGBO(18,77,55,1.0) : Color.fromRGBO(30,38,42,1.0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSender ? Colors.white : Colors.white,
          ),
        ),
      ),
    );
  }
}
