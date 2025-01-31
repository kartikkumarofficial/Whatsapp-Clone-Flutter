import 'package:flutter/material.dart';

class BlockedContactsPage extends StatefulWidget {
  const BlockedContactsPage({super.key});

  @override
  State<BlockedContactsPage> createState() => _BlockedContactsPageState();
}

class _BlockedContactsPageState extends State<BlockedContactsPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    List<String> arrNames = [
      'Bunty ka Sabun', 'Drake', 'Dholak Wala Babu',
      'Golu ka Golgappa', 'Shivlayz', 'hmm...',
      'Jintu ka Jadoo', 'Lassi ka Bunda', 'Bhai ka Biryani', 'Pillu ka Pataka'
    ];
    List<String> arrFreqContactedNames = [
      'Supreme Leader', 'Mummy', 'Bhai', 'Koi toh hai', 'Pata nahi kon',
    ];
    List<String> arrMessages = [
      'Code karo, aish karo.', 'Life ka code debug ho raha hai.',
      'Kaam chalu hai, disturb mat kar.',
      'Coffee first, baaki baad mein.',
      'Abhi offline, phir milte hain.', 'Dream big, sleep more.',
      'Life in progress, please wait...',
      'Na yaar, ho gaya ab.', 'Padh lo beta, samay kam hai.',
      'Duniya jalti hai mere skills pe.', 'Main mast, tu dust.',
      'Beta, chill maar zyada tension nahi.', 'Zindagi ko optimize kar raha hoon.',
      'Hustle ho raha hai, aur kya?', 'Aaj mood off hai.', 'Suno, time kam hai.',
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

    var phoneNumber = '+91 38782678';


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Blocked contacts',
          style: TextStyle(
            color: Colors.white,
            fontSize: srcwidth * 0.048,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 4.0),
            child: IconButton(
            icon: Icon(
              Icons.person_add_alt_1_outlined,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {},
                    ),
          ),

        ],
      ),
      body: Stack(
        children: [
          Container(
          color:Color.fromARGB(255,11,17,21),
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            physics: AlwaysScrollableScrollPhysics() ,
            children: [
              Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 31, 43, 50),
              ),





              Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.043, top: srcwidth * 0.02,bottom: srcwidth*0.01),
                child: Text(
                  'Contacts',
                  style: TextStyle(
                      color: Color.fromARGB(255, 135, 145, 147),
                      fontSize: srcwidth * 0.038,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: arrNames.length,
                itemBuilder: (context, index) => Padding(
                  padding:  EdgeInsets.only(top:10),
                  child: ListTile(
                    title: Text(
                      arrNames[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    // subtitle: Row(
                    //   children: [
                    //     Text(
                    //       arrMessages[index],
                    //       style: TextStyle(color: Colors.grey),
                    //     )
                    //   ],
                    // ),
                    leading: CircleAvatar(
                      radius: srcwidth * 0.06,
                      backgroundImage: arrImages[index].image,
                      backgroundColor: Colors.white,
                    ),
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
