import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/callpage.dart';
import 'package:whatsappclone/pages/chatspage.dart';
import 'package:whatsappclone/pages/communitiespage.dart';
import 'package:whatsappclone/pages/updatespage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [
      ChatPage(),
      Updatespage(),
      Communitiespage(),
      Callspage(),
    ];

    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var smallscreen = srcwidth <= 640;
    var bigscreen = srcwidth > 640;

    return Scaffold(
      bottomNavigationBar: smallscreen
          ? Container(
        height: srcheight * 0.08,
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              _pageController?.animateToPage(
                index,
                duration: Duration(milliseconds: 10),
                curve: Curves.linear,
              );
            });
          },
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color.fromARGB(255, 7, 21, 29),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
            BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Communities'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          ],
        ),
      )
          : null,

      body: Row(
        children: [
          if (bigscreen)
            NavigationRail(
              selectedIndex: _selectedIndex,
              destinations: [
                NavigationRailDestination(icon: Icon(Icons.chat), label: Text('Chats')),
                NavigationRailDestination(icon: Icon(Icons.update), label: Text('Updates')),
                NavigationRailDestination(icon: Icon(Icons.people), label: Text('Communities')),
                NavigationRailDestination(icon: Icon(Icons.call), label: Text('Calls')),
              ],
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: widgetList,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData.dark(),
  ));
}
