import 'package:flutter/material.dart';

class Callspage extends StatefulWidget {
  const Callspage({super.key});

  @override
  State<Callspage> createState() => _CallspageState();
}

class _CallspageState extends State<Callspage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    final List arrDrawerItems = [
      'New Group',
      'New Broadcast',
      'Linked List',
      'Starred messages',
      'Payments',
      'Settings'
    ];
    List<String> arrNames = [
      'Supreme Leader', 'Mummy', 'Bhai', 'Koi toh hai', 'Pata nahi kon',
      'hmmm....', 'Benaam', 'Badnaam', 'chotu', 'kuch toh naam hai'
    ];

    List<Icon> arrIcon = [
      Icon(Icons.call), Icon(Icons.call), Icon(Icons.videocam), Icon(Icons.call), Icon(Icons.videocam),
      Icon(Icons.call), Icon(Icons.videocam), Icon(Icons.call), Icon(Icons.videocam), Icon(Icons.videocam), Icon(Icons.call),
    ];

    List<Image> arrImages = [
      Image.asset('assets/images/communitiespage/library.jpg'),
      Image.asset('assets/images/communitiespage/research.jpg'),
      Image.asset('assets/images/communitiespage/travel.jpg'),
      Image.asset('assets/images/communitiespage/library.jpg'),
      Image.asset('assets/images/communitiespage/research.jpg'),
      Image.asset('assets/images/communitiespage/travel.jpg'),
      Image.asset('assets/images/communitiespage/library.jpg'),
      Image.asset('assets/images/communitiespage/research.jpg'),
      Image.asset('assets/images/communitiespage/travel.jpg'),
      Image.asset('assets/images/communitiespage/library.jpg'),
      Image.asset('assets/images/communitiespage/research.jpg'),
      Image.asset('assets/images/communitiespage/travel.jpg'),
    ];

    List<String> arrTimes = [
      '08:00 AM', '08:05 AM', '09:30 AM', '11:00 AM', '12:45 PM',
      'Yesterday', 'Yesterday', 'Yesterday', 'Yesterday', 'Yesterday', 'Yesterday'
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 7, 21, 29),
        title: Text(
          'Calls',
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 7, 21, 29),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: srcwidth * 0.04),
              child: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.0, top: srcwidth * 0.02),
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: srcwidth * 0.05,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
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
                      Icon(Icons.call_received,size: srcwidth*0.04, color: Colors.green),
                      Padding(
                        padding: EdgeInsets.only(left: srcwidth*0.01),
                        child: Text(arrTimes[index]),
                      ),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: arrImages[index].image,
                    backgroundColor: Colors.white,
                  ),
                  trailing: Icon(arrIcon[index].icon, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
