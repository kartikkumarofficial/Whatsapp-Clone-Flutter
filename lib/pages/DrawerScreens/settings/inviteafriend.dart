import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InviteaFriendPage extends StatefulWidget {
  const InviteaFriendPage({super.key});

  @override
  State<InviteaFriendPage> createState() => _InviteaFriendPageState();
}

class _InviteaFriendPageState extends State<InviteaFriendPage> {
  @override
  Widget build(BuildContext context) {
    List<File?> avatars = List.generate(15, (index) => null);
    List<String> titles = [
      "Supreme Leader", "Mummy", "Bhai", "Koi toh hai", "Pata nahi kon",
      "Hmm...", "Benaam", "Badnaam", "Chotu", "Kuch toh naam hai",
      "Ajeeb Bandha", "Someone Special", "Flutter Fan", "C Master", "AI Enthusiast"
    ];
    List<String> subtitles = List.generate(titles.length, (index) => "+91 98765${index}4321");

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text("Invite a Friend", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xff0e1717),
      ),
      backgroundColor: const Color(0xff0e1717),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: titles.length,
                  itemBuilder: (context, index) {
                    return  index==0 ? Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color.fromRGBO(32,193,94,1.0,),
                            child: Icon(Icons.share_outlined, color: const Color(0xff0e1717) , ),
                          ),
                          title: Text(
                            "Share link",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text("        From Contacts", style: TextStyle(color: Colors.white54), ),
                          ],
                        )
                      ],
                    ) :ListTile(
                      leading: CircleAvatar(
                        child: avatars[index] != null
                            ? Image.file(avatars[index]!)
                            : Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text(
                        titles[index],
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      subtitle: Text(subtitles[index], style: TextStyle(color: Colors.white54)),
                      trailing: Text("Invite", style: TextStyle(fontSize: 15 , color: Color.fromRGBO(60,168,113,1.0))),
                    )   ;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
