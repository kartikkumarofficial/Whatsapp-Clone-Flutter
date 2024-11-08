import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> arrDrawerItems = [
    'New Group',
    'New Broadcast',
    'Linked List',
    'Starred messages',
    'Payments',
    'Settings'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 6, 21, 28),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.qr_code_scanner_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView.builder(
          itemCount: arrDrawerItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(arrDrawerItems[index]),
              onTap: () {},
            );
          },
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
