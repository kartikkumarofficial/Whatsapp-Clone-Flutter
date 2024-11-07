import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/chatspage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int navigationbarindex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); //init pagecontrolerr
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [
      chatpage(),
      Center(child: Text('page2', style: TextStyle(fontSize: 40))),
      Center(child: Text('page3', style: TextStyle(fontSize: 40))),
      Center(child: Text('page4', style: TextStyle(fontSize: 40))),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            navigationbarindex = index;
            // _pageController?.jumpToPage(index);
            _pageController?.animateToPage(
              index,
              duration: Duration(milliseconds: 10),
              curve: Curves.linearToEaseOut,
            );
          });
        },
        currentIndex: navigationbarindex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color.fromARGB(255, 6, 21, 28),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            navigationbarindex = index;
          });
        },
        children: widgetList,
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
