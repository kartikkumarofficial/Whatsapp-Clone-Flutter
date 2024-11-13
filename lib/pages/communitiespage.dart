import 'package:flutter/material.dart';
import 'package:whatsappclone/main.dart';
import 'package:badges/badges.dart' as badges;
import 'package:badges/badges.dart';






class Communitiespage extends StatefulWidget {
   Communitiespage({super.key});



  @override
  State<Communitiespage> createState() => _CommunitiespageState();
}

class _CommunitiespageState extends State<Communitiespage> {
  @override
  Widget build(BuildContext context) {
    var srcheight=MediaQuery.of(context).size.height;
    var srcwidth =MediaQuery.of(context).size.width;
    final List arrDrawerItems = [
      'New Group',
      'New Broadcast',
      'Linked List',
      'Starred messages',
      'Payments',
      'Settings'
    ];
    List<String> arrChannelNames = [
      'Innovation Hub', 'Health Heroes', 'Adventure Seekers',
    ];

    List<String> arrCommunity1 = [
      'Latest Announcements', 'Mentorship Sessions', 'Community Chat',
    ];

    List<String> arrSubtitles = [
      'Meeting scheduled at 9 AM.', 'Share your progress updates.', 'How’s everyone doing?',
    ];

    List<String> arrSubtitles1 = [
      'Stay updated on technology.',
      'Task kab tak hojayega guys??',
      'Explore new travel stories.',
      'Discover delicious recipes.',
    ];

    List<String> arrTimes = [
      'Yesterday', '08:30 AM', '31/02/2007'
    ];

    List<Image> arrImages = [
      Image.asset('assets/images/communitiespage/library.jpg'),
      Image.asset('assets/images/communitiespage/research.jpg'),
      Image.asset('assets/images/communitiespage/travel.jpg'),
    ];


    return Scaffold(
      appBar: AppBar(

      elevation: 0,

      toolbarHeight: 70,
      backgroundColor: Color.fromARGB(255, 7,21,29),
      title: Text(
        'Communities',
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
        PopupMenuButton<String>(
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
      ],
    ),

      body:Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255,7,21,29),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
              padding: EdgeInsets.only(
                  top: srcheight*0.02, left: srcwidth * 0.04,bottom: srcwidth*0.02),
              child: SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      badges.BadgePositioned(



                        child: Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                              shape: BoxShape.rectangle
                          ),
                        
                          child: Padding(
                            padding: EdgeInsets.all(srcwidth*0.02),
                            child: Icon(
                              Icons.group_add,
                              color: Colors.white,
                              size: srcwidth * 0.1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: srcwidth*0.038),
                        child: Text('New Community',
                          style: TextStyle(
                              fontSize: srcwidth*0.056,
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
              Divider(
                thickness: 8,
                color: Color(0xff010100),

              ),

              Container(
                margin: EdgeInsets.only(left: srcwidth*0.04,bottom: srcwidth*0.01),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: srcwidth*0.068,
                      backgroundImage: AssetImage('assets/images/communitiespage/tech.jpg'),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Tech Enthusiasts 2024',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: srcwidth*0.05,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 0.3,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: arrCommunity1.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      arrCommunity1[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.only(left: srcwidth*0.009),
                      child: CircleAvatar(
                        backgroundImage: arrImages[index].image,
                      ),
                    ),
                    trailing: Text(
                      arrTimes[index],
                      style: TextStyle(color: Colors.grey),
                    ),
                    subtitle: Text(
                      arrSubtitles1[index],
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: srcwidth*0.068,),
                height: 50,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: srcwidth*0.093),
                      child: Text(
                        'View all', // Changed text
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 8,
                color: Color(0xff010100),

              ),
              Container(
                margin: EdgeInsets.only(left: srcwidth*0.04,bottom: srcwidth*0.01),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: srcwidth*0.068,
                      backgroundImage: AssetImage('assets/images/communitiespage/tech.jpg'),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Tech Enthusiasts 2024',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: srcwidth*0.05,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 0.3,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: arrCommunity1.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      arrCommunity1[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Padding(
                      padding: EdgeInsets.only(left: srcwidth*0.0069),
                      child: CircleAvatar(
                        backgroundImage: arrImages[index].image,
                      ),
                    ),
                    trailing: Text(
                      arrTimes[index],
                      style: TextStyle(color: Colors.grey),
                    ),
                    subtitle: Text(
                      arrSubtitles1[index],
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: srcwidth*0.068,),
                height: 50,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: srcwidth*0.093),
                      child: Text(
                        'View all', // Changed text
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 8,
                color: Color(0xff010100),

              ),


            ],
          ),
        ),

      ),


    );
  }
}
