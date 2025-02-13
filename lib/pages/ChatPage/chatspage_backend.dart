import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsappclone/CustomWidgets/bottomnavigationbar.dart';
import 'package:whatsappclone/auth/auth_google.dart';
import 'package:whatsappclone/models/chat_user_model.dart';
import 'package:whatsappclone/pages/ChatPage/ChatTile.dart';
import 'package:whatsappclone/pages/ChatPage/chat_firebase.dart';
import 'package:whatsappclone/pages/DrawerScreens/StarredMessages.dart';
import 'package:whatsappclone/pages/DrawerScreens/linkeddevices.dart';
import 'package:whatsappclone/pages/DrawerScreens/newbroadcast.dart';
import 'package:whatsappclone/pages/DrawerScreens/newgroup.dart';
import 'package:whatsappclone/pages/DrawerScreens/payments.dart';
import 'package:whatsappclone/pages/ChatPage/chattextpage.dart';
import 'package:whatsappclone/pages/login/authscreen.dart';
import 'package:whatsappclone/pages/login/welcomepage.dart';
import 'package:whatsappclone/pages/selectcontactspage.dart';
import 'package:whatsappclone/pages/splashscreen.dart';
import '../callpage.dart';
import '../DrawerScreens/settings/settingspage.dart';

class ChatPageBackend extends StatefulWidget {
  const ChatPageBackend({super.key});

  @override
  State<ChatPageBackend> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPageBackend> {


  List<ChatUser> list =[];
  //todo fix image picker to fetch images
  File? image;
  Future pickImage() async {
    try {
      await ImagePicker().pickImage(source: ImageSource.camera);
      if(image==null) return;
      final imageTemporary = File(image!.path);
      this.image = imageTemporary;
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to pick image : $e'),));
    }
  }


  final List arrDrawerItems = [
    'New Group',
    'New Broadcast',
    'Linked Devices',
    'Starred messages',
    'Payments',
    'Settings'
  ];

  // get srcWidth => null;
  double get srcWidth => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    var srcheight=MediaQuery.of(context).size.height;
    var srcwidth =MediaQuery.of(context).size.width;
    var size =MediaQuery.of(context).size;
    List<String> arrNames = [
      '', 'Supreme Leader', 'Mummy', 'Papa', 'Bunty ka Sabun',
      'Chi Chiii', 'Shivlayz', 'Abhinav', 'Anmol Bunz', 'Vedraj'
    ];

    List<String> arrMessages = [
      'Last message.', 'Roger that', 'khana khaya?',
      'Padh bhi liya kar kabhi', 'Or kaisa hai',
      'ok', 'layz khilade', 'typing...',
      'aja ghumne chalte hai', 'bahar hun',
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
        backgroundColor: Color.fromARGB(255,11,17,21),
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
            onPressed: () {
              setState(() {
                pickImage();
              });
            },
          ),
          Container(
            color: Color.fromARGB(255,11,17,21),
            child: PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 28,
              ),
              itemBuilder: (context) => arrDrawerItems
                  .map((item) => PopupMenuItem<String>(
                value: item,
                padding: EdgeInsets.zero,

                child: Container(
                  // color: Color.fromARGB(255,11,17,21),
                  padding: EdgeInsets.zero,
                  // width: double.infinity,
                  // color: Color.fromARGB(255,7,21,29),
                  child: ListTile(
                    // tileColor: Color.fromARGB(255,7,21,29),


                      title: Padding(
                        padding: EdgeInsets.only(left: srcwidth*0.03),
                        child: Text(item,style: TextStyle(color: Colors.white),),
                      )),
                ),
              ))
                  .toList(),
              onSelected: (value) {
                if(value=='Settings'){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SettingsPage() ));
                }else if (value =='New Group'){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewgroupPage(),));
                }else if (value =='Linked Devices'){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => LinkedDevicesPage(),));
                } else if (value =='New Broadcast'){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NewBroadcastPage(),));
                }else if (value =='Payments'){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PaymentsPage(),));
                }
                else if (value =='Starred messages'){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => StarredMessagesPage(),));}

              },
            ),
          ),
        ],
      ),
      body:

      Stack(
        children: [
          Container(
            color: Color.fromARGB(255,11,17,21),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top:10,right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(30)
                        ),
                        height: srcheight*0.055,
                        width: srcwidth*1,

                        child: TextField(
                          style: TextStyle(color: Colors.white),

                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(

                            filled: true,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 8.0,top: 4,bottom: 4),
                              child: Image.asset('assets/images/meta.png',
                                height: srcheight*0.004,),
                            ),
                            hintText: '   Ask Meta AI or Search',
                            hintStyle: TextStyle(fontSize: srcwidth*0.04,
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



                    SizedBox(height: srcwidth*0.02),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: size.height*0.037,
                              width: size.width*0.1,
                              decoration: BoxDecoration(
                                  color: const Color(0xff20292f),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Center(child: Text("All",style: TextStyle(color: Colors.white38))),
                            ),
                            Container(
                              height: size.height*0.037,
                              width: size.width*0.18,
                              decoration: BoxDecoration(
                                  color: const Color(0xff20292f),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Center(child: Text("Unread",style: TextStyle(color: Colors.white38))),
                            ),

                            Container(
                              height:size.height*0.037,
                              width: size.width*0.24,
                              decoration: BoxDecoration(
                                  color: const Color(0xff20292f),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Center(child: Text("Favourities",style: TextStyle(color: Colors.white38),)),
                            ),

                            InkWell(
                              onTap: (){}, //todo have to add ontap functionallity here
                              child: Container(
                                height: size.height*0.037,
                                width: size.width*0.17,
                                decoration: BoxDecoration(
                                    color: const Color(0xff20292f),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: const Center(child: Text("Groups",style: TextStyle(color: Colors.white38),)),
                              ),
                            ),
                            Container(
                              height: size.height*0.037,
                              width: size.width*0.1,
                              decoration: BoxDecoration(
                                  color: const Color(0xff20292f),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Center(child: Icon(Icons.add,color: Colors.white38,)),
                            ),


                          ],
                        ),

                      ),
                    ),

                  ],
                ),


                Expanded(
                  child: StreamBuilder(
                      stream: firebase.getAllUsers() ,

                      builder: (context,snapshot){
                        switch(snapshot.connectionState){

                        // data is loading
                          case ConnectionState.waiting:
                          case ConnectionState.none:
                            return Center(child: CircularProgressIndicator(),);


                        //if some or all data is loaded
                          case ConnectionState.active:
                          case ConnectionState.done:
                        }


                        if(snapshot.hasData){

                          final data = snapshot.data?.docs;
                          List<ChatUser> list = data?.map((e) => ChatUser.fromJson(e.data())).toList() ?? [];


                        }

                        return Expanded(
                          child: StreamBuilder(
                            stream: firebase.getAllUsers(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return const Center(child: CircularProgressIndicator());
                              }

                              if (snapshot.hasError) {
                                return Center(child: Text('Error: ${snapshot.error}'));
                              }

                              if (!snapshot.hasData || snapshot.data?.docs.isEmpty == true) {
                                return const Center(child: Text('No chats available.', style: TextStyle(color: Colors.white)));
                              }

                              final data = snapshot.data!.docs;
                              List<ChatUser> chatList =
                              data.map((e) => ChatUser.fromJson(e.data() as Map<String, dynamic>)).toList();

                              return ListView.builder(
                                itemCount: chatList.length,
                                itemBuilder: (context, index) {
                                  return CustomChatTile(
                                    chatUser: chatList[index],
                                    name: chatList[index].name,
                                    imageUrl: chatList[index].image,
                                    message: chatList[index].lastMessage,
                                    time: chatList[index].lastMessage,
                                    srcWidth: srcWidth,
                                  );
                                },
                              );
                            },
                          ),
                        );
                      }
                  ),
                ),




              ],

            ),
          ),
          Positioned(
              height: srcwidth*0.14,
              width: srcwidth*0.14,
              bottom: srcwidth*0.06,
              right: srcwidth*0.04,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(SelectContactsPage());
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(srcwidth*0.045)
                  ),
                  padding: EdgeInsets.all(14),
                  backgroundColor: Colors.green,
                ),
                child: Icon(
                  Icons.chat,
                  color: Colors.black,
                  size: srcwidth*0.065,

                ),)

          ),
          Positioned(
              height: srcwidth*0.11,
              width: srcwidth*0.11,
              bottom: srcwidth*0.24,
              right: srcwidth*0.055,
              child: ElevatedButton(
                onPressed: () {
                  // Get.to(WelcomeScreen());
                  GoogleSignInProvider().signOut();
                  Get.to(Splashscreen());
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(srcwidth*0.035)
                  ),
                  padding: EdgeInsets.all(7),
                  backgroundColor: Color.fromARGB(255,24,46,49),
                ),
                child: Image.asset('assets/images/meta.png',
                  height: srcwidth*0.2,
                  width: srcwidth*0.2 , ),)

          ),


        ],

      ),
    );
  }
}
