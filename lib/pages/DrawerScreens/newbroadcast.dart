import 'package:flutter/material.dart';

class NewBroadcastPage extends StatefulWidget {
  const NewBroadcastPage({super.key});

  @override
  State<NewBroadcastPage> createState() => _NewBroadcastPageState();
}

class _NewBroadcastPageState extends State<NewBroadcastPage> {
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor:Color.fromARGB(255,11,17,21),
        title: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'New Broadcast',
                style: TextStyle(
                  fontSize: srcwidth * 0.042,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: srcwidth * 0.008),
                child: Text(
                  '0 of 256 selected',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.032,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: srcheight*0.01,),
                  Text('Only contacts with $phoneNumber in their address' , style: TextStyle(color: Colors.grey, fontSize: srcwidth*0.038),),
                  Text('book will receive your broadcast messages.' , style: TextStyle(color: Colors.grey,fontSize: srcwidth*0.038),),
                  SizedBox(height: srcheight*0.01,),

                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 31, 43, 50),
                // color: Colors.blueGrey,
                ),
              ),



              Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.043, top: srcwidth * 0.02),
                child: Text(
                  'Contacts on WhatsApp',
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
                      )
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: srcwidth * 0.06,
                    backgroundImage: arrImages[index].image,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),

            ],
          ),
        ),
          Positioned(
              height: srcwidth*0.15,
              width: srcwidth*0.15,
              bottom: srcwidth*0.06,
              right: srcwidth*0.04,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(srcwidth*0.05)
                  ),
                  padding: EdgeInsets.all(16),
                  backgroundColor: Colors.green,
                ),
                child: Icon(
                Icons.check,
                  color: Colors.black,
                  size: srcwidth*0.065,

                ),)

          ),],
      ),
    );
  }
}
