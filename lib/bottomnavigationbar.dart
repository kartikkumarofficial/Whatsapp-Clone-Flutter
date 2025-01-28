import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/callpage.dart';
import 'package:whatsappclone/pages/ChatPage/chatspage.dart';
import 'package:whatsappclone/pages/communitiespage.dart';
import 'package:whatsappclone/pages/UpdatesPage/updatespage.dart';

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
        height: srcheight * 0.1,
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              _pageController?.animateToPage(
                index,
                duration: Duration(milliseconds: 10),
                curve: Curves.elasticIn,
              );
            });
          },
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white70,
          backgroundColor: Color.fromARGB(255, 11, 17, 21),
          type: BottomNavigationBarType.fixed,
          elevation: 0, // Remove shadow
          items: [
            BottomNavigationBarItem(
              icon: _buildSelectedItem(0, Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: _buildSelectedItem(1, Icons.update),
              label: 'Updates',
            ),
            BottomNavigationBarItem(
              icon: _buildSelectedItem(2, Icons.people),
              label: 'Communities',
            ),
            BottomNavigationBarItem(
              icon: _buildSelectedItem(3, Icons.call),
              label: 'Calls',
            ),
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

  Widget _buildSelectedItem(int index, IconData icon) {
    bool isSelected = _selectedIndex == index;
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.green.withOpacity(0.3) : Colors.transparent,
        borderRadius: BorderRadius.circular(40),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Icon(
        icon,
        size: 30,
        color:  Colors.white70,
      ),
    );
  }
}
