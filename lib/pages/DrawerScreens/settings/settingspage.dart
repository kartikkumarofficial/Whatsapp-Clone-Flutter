import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/Account.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Privacy/Privacy.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/StorageAndData.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

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
        backgroundColor: Color.fromARGB(255,11,17,21),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
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
      body: Container(
        color:Color.fromARGB(255,11,17,21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.03),
              child: Container(
                height: srcwidth * 0.22,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chatpage/bro.jpg'),
                      radius: srcwidth * 0.08,
                    ),
                    SizedBox(width: srcwidth * 0.04),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: srcwidth * 0.04),
                            child: Text(
                              'Kartik the Don',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: srcwidth * 0.053,
                              ),
                            ),
                          ),
                          SizedBox(height: srcheight * 0.001),
                          Text(
                            'Wandering',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: srcwidth * 0.045,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.qr_code,
                            color: Color(0xff08E23D),
                            size: srcwidth * 0.065,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Color(0xff08E23D),
                            size: srcwidth * 0.065,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(left: srcwidth * 0.01),
                    child: items[index].iicon,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: srcwidth * 0.015),
                    child: Text(
                      items[index].label,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: srcwidth * 0.045,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(left: srcwidth * 0.015),
                    child: Text(
                      items[index].subtitle,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  onTap: (){
                    print('Tapped on ${items[index].label}');
                    if(items[index].label=='Account'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AccountPage(),));
                    }
                    else if(items[index].label=='Storage and data'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StorageAndDataScreen(),));
                  }
                    else if(items[index].label=='Privacy'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPage(),));
                    }
                    else if(items[index].label=='Avatar'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StorageAndDataScreen(),));
                    }
                    else if(items[index].label=='Lists'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StorageAndDataScreen(),));
                    }
                    else if(items[index].label=='Chats'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StorageAndDataScreen(),));
                    }
                    else if(items[index].label=='Notifications'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StorageAndDataScreen(),));
                    }
                    else if(items[index].label=='Lists'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StorageAndDataScreen(),));
                    }
                    else if(items[index].label=='Lists'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StorageAndDataScreen(),));
                    }





                    },
                );
              },
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.01),
                child: Icon(
                  Icons.people_alt_outlined,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'Invite a Friend',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.045,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.01),
                child: Icon(
                  Icons.security_update_good_outlined,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'App updates',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.045,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.06,top: srcwidth*0.02),
              child: Text(
                'Also from Meta',
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 145, 147),
                  fontSize: srcwidth * 0.038,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.01),
                child: Icon(
                  Icons.crop_square,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'Open Instagram',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.045,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.01),
                child: Icon(
                  Icons.facebook_outlined,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'Open Facebook',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.045,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.01),
                child: Icon(
                  Icons.alternate_email,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'Open Threads',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.045,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsTile {
  final String label;
  final String subtitle;
  final Icon iicon;

  SettingsTile(this.label, this.subtitle, this.iicon);
}

List<SettingsTile> items = [
  SettingsTile(
    'Account',
    'Security notifications, change number',
    Icon(Icons.key, color: Color.fromARGB(255, 135, 145, 147)),
  ),
  SettingsTile(
    'Privacy',
    'Block contacts, disappearing messages',
    Icon(Icons.lock, color: Color.fromARGB(255, 135, 145, 147)),
  ),
  SettingsTile(
    'Avatar',
    'Create, edit, profile photo',
    Icon(Icons.person, color: Color.fromARGB(255, 135, 145, 147)),
  ),
  SettingsTile(
    'Lists',
    'Manage people and groups',
    Icon(Icons.list, color: Color.fromARGB(255, 135, 145, 147)),
  ),
  SettingsTile(
    'Chats',
    'Theme, wallpapers, chat history',
    Icon(Icons.chat, color: Color.fromARGB(255, 135, 145, 147)),
  ),
  SettingsTile(
    'Notifications',
    'Message, group & call tones',
    Icon(Icons.notifications, color: Color.fromARGB(255, 135, 145, 147)),
  ),
  SettingsTile(
    'Storage and data',
    'Network usage, auto-download',
    Icon(Icons.storage, color: Color.fromARGB(255, 135, 145, 147)),
  ),
  SettingsTile(
    'App language',
    "English (device's language)",
    Icon(Icons.language, color: Color.fromARGB(255, 135, 145, 147)),
  ),
  SettingsTile(
    'Help',
    'Help center, contact us, privacy policy',
    Icon(Icons.help, color: Color.fromARGB(255, 135, 145, 147)),
  ),
];
