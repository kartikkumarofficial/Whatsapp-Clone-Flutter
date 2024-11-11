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
      ChatPage(),
      Updatespage(),
      Communitiespage(),
      Callspage(),
    ];
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Container(
        height: srcheight*0.08,
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              navigationbarindex = index;
              // _pageController?.jumpToPage(index);
              _pageController?.animateToPage(
                index,
                duration: Duration(milliseconds: 10),
                curve: Curves.linear,
              );
            });
          },

          currentIndex: navigationbarindex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color.fromARGB(255, 7,21,29),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
            BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Communities'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          ],
        ),
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
