import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/pages/DrawerScreens/newgroup.dart';
import 'package:whatsappclone/pages/NewCommunityIntro.dart';
import 'package:whatsappclone/pages/NewContact.dart';

class SelectContactsPage extends StatefulWidget {
  const SelectContactsPage({super.key});

  @override
  State<SelectContactsPage> createState() => _SelectContactsPageState();
}

class _SelectContactsPageState extends State<SelectContactsPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

    List<String> arrNames = [
      'Prime Minister (You)',
      'Supreme Leader', 'Mummy', 'Bhai', 'Koi toh hai', 'Pata nahi kon',
      'Supreme Leader'

    ];

    final List arrDrawerItems = [
      'Invite a friend',
      'Contacts',
      'Refresh',
      'Help',
    ];


    List<String> arrMessages = [
      'Message yourself',
      'शिव भक्त 🔱🔱',
      'Status',
      'Hello. I\'m using WhatsApp Business.',
      '',
      '',
      '',
      'शिव भक्त 🔱🔱',
      'Status',
      'Hello. I\'m using WhatsApp Business.',
      '',
      '',
      '',
      'शिव भक्त 🔱🔱',
      'Status',
      'Hello. I\'m using WhatsApp Business.',
      '',
      '',
      '',
    ];

    List<Color> avatarColors = [
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.transparent,
      Colors.grey,
      Colors.grey,
      Colors.grey,
    ];

    List<Image?> arrImages = [
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
      Image.asset('assets/images/chatpage/mfriend.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/frndgrp.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/mfriend.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/bro2.jpg'),
      Image.asset('assets/images/chatpage/mfriend.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/frndgrp.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/mfriend.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/bro2.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  'Select contact',
                  style: TextStyle(
                    fontSize: srcwidth * 0.045,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '391 contacts',
                  style: TextStyle(
                    fontSize: srcwidth * 0.03,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),


        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
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
                  width: srcwidth*0.4,
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

            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 11, 17, 21),
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Icon(
                    Icons.group,
                    color: Colors.green,
                  ),
                  title: Text(
                    'New group',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: srcwidth * 0.045,
                    ),
                  ),
                  onTap: (){
                    Get.to(NewgroupPage());
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_add,
                    color: Colors.green,
                  ),
                  title: Text(
                    'New contact',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: srcwidth * 0.045,
                    ),
                  ),
                  trailing: Icon(
                    Icons.qr_code,
                    color: Colors.white,
                  ),
                  onTap: (){ Get.to(NewContactPage());}
                ),
                ListTile(
                  leading: Icon(
                    Icons.groups_rounded,
                    color: Colors.green,
                  ),
                  title: Text(
                    'New community',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: srcwidth * 0.045,
                    ),
                  ),
                  onTap: (){
                    Get.to(NewCommunityIntroPage());
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.smart_toy_outlined,
                    color: Colors.green,
                  ),
                  title: Text(
                    'Chat with AIs',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: srcwidth * 0.045,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: srcwidth * 0.043, top: srcwidth * 0.02),
                  child: Text(
                    'Contacts on WhatsApp',
                    style: TextStyle(
                      color: Color.fromARGB(255, 135, 145, 147),
                      fontSize: srcwidth * 0.038,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: arrNames.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      arrNames[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          arrMessages[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    leading: CircleAvatar(
                      radius: srcwidth * 0.06,
                      backgroundColor: avatarColors[index],
                      backgroundImage: arrImages[index]!.image,
                      child: arrImages[index] == null
                          ? Text(
                        arrNames[index][0],
                        style: TextStyle(color: Colors.white),
                      )
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
