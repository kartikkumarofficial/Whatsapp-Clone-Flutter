import 'package:flutter/material.dart';
import 'package:whatsappclone/main.dart';
import 'DrawerScreens/newgroup.dart';
import 'DrawerScreens/settings/settingspage.dart';



class Updatespage extends StatefulWidget {
  const Updatespage({super.key});

  @override
  State<Updatespage> createState() => _UpdatespageState();
}

class _UpdatespageState extends State<Updatespage> {
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
    List<String> arrNames = [
      'Innovation Hub', 'Health Heroes', 'Adventure Seekers', 'Your Everyday Kitchen', 'Readers Paradise',
      'Entrepreneur Insights', 'Melody Makers', 'Parenting Pioneers', 'Photography Pros',
      'Positive Vibes', 'E-Sports Masters',
    ];
    List<String> arrChannels = [
      'Innovation Hub', 'Health Heroes', 'Adventure Seekers', 'Your Everyday Kitchen', 'Readers Paradise',
      'Entrepreneur Insights', 'Melody Makers', 'Parenting Pioneers', 'Photography Pros',
      'Positive Vibes', 'E-Sports Masters',
    ];
    List<Image> arrChannelImage = [
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/meta.png'),
      Image.asset('assets/images/communitiespage/library.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/food.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/travel.jpg'),
      Image.asset('assets/images/communitiespage/workout.jpg'),
      Image.asset('assets/images/communitiespage/research.jpg'),
      Image.asset('assets/images/meta.png'),
      Image.asset('assets/images/communitiespage/library.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/food.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/travel.jpg'),
      Image.asset('assets/images/communitiespage/workout.jpg'),
      Image.asset('assets/images/communitiespage/research.jpg'),
    ];

    List<String> arrSubtitles = [
      'Latest tech news.', 'Fitness hacks and tips.', 'Travel adventures.', 'Delicious cooking ideas.',
      'Book reviews', 'Startup journeys and advice.', 'Music trends and updates.',
      'Parenting advice and support.', 'Photography tutorials.', 'Inspiring quotes daily.',
      'Gaming trends and updates.',
    ];
    List<String> StatusNames = [
      'MyStatus', 'Mummy', 'Bhai', 'Papa',
    'Benaam', 'Badnaam', 'chotu', 'who', 'who', 'who', 'who', 'who'
    ];

    List<String> arrTime = [
      '07:00 AM', '08:30 AM', '09:45 AM', '11:30 AM', '01:00 PM', '02:30 PM', '04:00 PM', '05:30 PM',
      '06:15 PM', '08:30 PM', '10:00 PM',
    ];
    List<String> arrChannelNames = [
      'Tech Gurus', 'Daily News Hub', 'Travel Tales', 'Gadget Geeks', 'Fitness Freaks',

    ];

    List<String> arrFollowers = [
      '2.8M Followers','4.9M Followers','191M Followers','122M Followers',
      '2.8M Followers','4.9M Followers','191M Followers','122M Followers',
      '2.8M Followers','4.9M Followers','191M Followers','122M Followers'
    ];

    List<Image> arrImages = [
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),
      Image.asset('assets/images/communitiespage/tech.jpg'),

    ];

    return Scaffold(
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
                padding: EdgeInsets.zero,

                child: Container(
                  padding: EdgeInsets.zero,
                  // width: double.infinity,
                  // color: Color.fromARGB(255,7,21,29),
                  child: ListTile(
                    // tileColor: Color.fromARGB(255,7,21,29),


                      title: Padding(
                        padding: EdgeInsets.only(left: srcwidth*0.03),
                        child: Text(item,style: TextStyle(color: Colors.black),),
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
                }

              },
            ),
          ),
        ],
      ),

      body:Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255,11,17,21),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: srcheight*0.017,left: srcwidth*0.05),
                  child:
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Status',
                      style: TextStyle(
                          fontSize: srcwidth*0.06,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                    ),
                  ),
            SizedBox(
              height: srcwidth*0.328,
              child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: arrImages.length,
                  itemBuilder: (context,index)=>Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.green,
                            width: srcwidth*0.006),
                        shape: BoxShape.circle),

                    margin: EdgeInsets.symmetric(horizontal: srcwidth*0.015),
                    child: Center(
                      // height: srcheight*0.01,
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top: srcwidth*0.08),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: arrChannelImage[index].image,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: srcwidth*0.01),
                            child: Text(StatusNames[index],
                            style: TextStyle(
                              color: Colors.white,
                            ),),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
                  Divider(
                    thickness: 1,
                    color:Color.fromARGB(255,31,43,50),
                  ),
                  Padding(padding: EdgeInsets.only(top: srcheight*0.01,left: srcwidth*0.05),
                    child:
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text('Channels',
                            style: TextStyle(
                                fontSize: srcwidth*0.06,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: srcwidth*0.45),
                            child: Text('Explore   >',
                              style: TextStyle(
                                  fontSize: srcwidth*0.04,
                                  color: Color(0xff08E23D),
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(

                    child: SingleChildScrollView(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: arrNames.length,
                          itemBuilder: (context,index)=> ListTile(title:Text(arrNames[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                            subtitle:Row(
                              children: [
                                Icon(Icons.photo,color: Colors.grey,),
                                Text(arrSubtitles[index],style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                            leading: CircleAvatar(
                              backgroundImage:arrChannelImage[index].image ,
                              backgroundColor:Colors.white,
                            ),
                            trailing: Text(arrTime[index],
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13
                              ),),)
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: srcwidth * 0.05,top: srcwidth*0.02),
                      child: Text(
                        'Find channels to follow',
                        style: TextStyle(
                            color: Color.fromARGB(255, 135, 145, 147),
                            fontSize: srcwidth * 0.038,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(

                    child: SingleChildScrollView(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: arrChannelNames.length,
                          itemBuilder: (context,index)=> ListTile(title:Text(arrChannelNames[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                            subtitle:Row(
                              children: [
                                Icon(Icons.photo,color: Colors.grey,),
                                Text(arrFollowers[index],style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                            leading: CircleAvatar(
                              backgroundImage:arrImages[index].image ,
                              backgroundColor:Colors.white,
                            ),
                            trailing: Container(
                              height: srcwidth*0.09,
                              child: ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 0, 55, 40),
                                    foregroundColor: Colors.white,
                                  ),
                                  child: Text("Follow")),
                            )
                              
                          ),
                      ),
                    ),
                  ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding:  EdgeInsets.only(left: srcwidth*0.05),
            child: ElevatedButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255,7,21,29),
                foregroundColor: Colors.green, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Rounded edges
                  side: BorderSide(color: Color.fromARGB(255, 52,60,63)),
                ),
                elevation: 0,
              ),
              child: Text('Explore more'),
            ),
          ),
        ),




                ],
              ),
            ),


          ),
          Positioned(
              height: srcwidth*0.14,
              width: srcwidth*0.14,
              bottom: srcwidth*0.06,
              right: srcwidth*0.04,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(srcwidth*0.045)
                  ),
                  padding: EdgeInsets.all(14),
                  backgroundColor: Colors.green,
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: srcwidth*0.065,

                ),)

          ),
          Positioned(
              height: srcwidth*0.115,
              width: srcwidth*0.11,
              bottom: srcwidth*0.24,
              right: srcwidth*0.055,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(srcwidth*0.035)
                  ),
                  padding: EdgeInsets.all(7),
                  backgroundColor: Color.fromARGB(255,24,46,49),
                ),
                child: Icon(Icons.edit,
                  color: Colors.white,
                   ),)

          ),
        ],

      ),
    );
  }
}
