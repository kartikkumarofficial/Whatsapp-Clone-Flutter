import 'package:flutter/material.dart';
import 'package:whatsappclone/main.dart';



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
        backgroundColor: Color.fromARGB(255, 7,21,29),
        title: Text(
          'Updates',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: srcwidth*0.07,
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
          IconButton(
            icon: Icon(
              Icons.search,
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
                    border: Border.all(color: Colors.green,width: srcwidth*0.006),
                    shape: BoxShape.circle),

                margin: EdgeInsets.symmetric(horizontal: srcwidth*0.015),
                child: Center(
                  // height: srcheight*0.01,
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: srcwidth*0.089),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: arrImages[index].image,),
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
              Padding(padding: EdgeInsets.only(top: srcheight*0.017,left: srcwidth*0.05),
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
                        child: Text('Explore >',
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
              ),
             



            ],
          ),
        ),


      ),
    );
  }
}
