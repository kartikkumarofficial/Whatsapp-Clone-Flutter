import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List arrDrawerItems = [
    'New Group',
    'New Broadcast',
    'Linked List',
    'Starred messages',
    'Payments',
    'Settings'
  ];

  @override
  Widget build(BuildContext context) {
    var srcheight=MediaQuery.of(context).size.height;
    var srcwidth =MediaQuery.of(context).size.width;
    List<String> arrNames = [
      'Supreme Leader', 'Mummy', 'Bhai', 'Koi toh hai', 'Pata nahi kon',
      'hmmm....', 'Benaam', 'Badnaam', 'chotu', 'kuch toh naam hai'
    ];

    List<String> arrMessages = [
      'Last message.', 'Kya dekh raha hai?', 'Padhai karle.',
      'Aise lagegi placement?', 'Jake Flutter seekh.',
      'Samajh mein aaya', 'kya', 'typing...',
      'Coding kar.', 'Naya seekhne ka waqt hai.',
    ];


    List<String> arrTime = [
      '06:23 AM', '08:12 AM', '10:05 AM', '11:50 AM', '01:30 PM',
      '02:45 PM', '04:15 PM', '05:55 PM', '07:10 PM', '08:50 PM', '10:25 PM'
    ];


    List<Image> arrImages = [
      Image.asset('assets/images/chatpage/father.jpg'),
      Image.asset('assets/images/chatpage/mother.jpg'),
      Image.asset('assets/images/chatpage/bro.jpg'),
      Image.asset('assets/images/chatpage/mfriend.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/frndgrp.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/mfriend.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/bro2.jpg'),
    ];




    return Scaffold(
      // extendBodyBehindAppBar: true,

      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 7,21,29),
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
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {},
          ),
          Container(
            color: Color.fromARGB(255,7,21,29),
            child: PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 28,
              ),
              itemBuilder: (context) => arrDrawerItems
                  .map((item) => PopupMenuItem<String>(
                value: item,
                child: Text(item),
              ))
                  .toList(),
              onSelected: (value) {

              },
            ),
          ),
        ],
      ),
      body:

      Container(
        color: Color.fromARGB(255,7,21,29),

        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top:10,right: 10),
              child: Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(30)
                ),
                height: srcheight*0.06,
                width: srcwidth*1,
                child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    filled: true,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 2,bottom: 2),
                        child: Image.asset('assets/images/meta.png',
                        height: srcheight*0.004,),
                      ),
                      hintText: '   Ask Meta AI or Search',
                    hintStyle: TextStyle(fontSize: srcwidth*0.045,
                    color: Colors.grey),
                    fillColor: Color.fromARGB(255,35,43,51),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                      // Image.asset('assets/images/meta.png'),
                  ),
                ),

            ),
            SizedBox(height: srcwidth*0.01),
            Expanded(
              child: ListView.builder(
                  itemCount: arrNames.length,
                  itemBuilder: (context,index)=> ListTile(title:Text(arrNames[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white,
                    ),),
                    subtitle:Row(
                      children: [
                        Icon(Icons.check),
                        Text(arrMessages[index],style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    leading: CircleAvatar(
                      radius: srcwidth*0.06,
                      backgroundImage:arrImages[index].image ,
                      backgroundColor:Colors.white,
                    ),
                    trailing: Text(arrTime[index],
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13
                      ),),)
              ),
            ),

          ],
        ),
      ),
    );
  }
}
