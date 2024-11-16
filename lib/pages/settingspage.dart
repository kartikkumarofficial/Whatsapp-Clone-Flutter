import 'package:flutter/material.dart';

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
        backgroundColor: const Color.fromARGB(255, 7, 21, 29),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 7, 21, 29),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: srcwidth*0.03),
              child: Container(
                height: srcwidth*0.22,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    CircleAvatar(
                      backgroundImage: const AssetImage('assets/images/meta.png'),
                      radius: srcwidth * 0.08,
                    ),
                    SizedBox(width: srcwidth * 0.04),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: srcwidth*0.04),
                            child: Text(
                              'Kartik the don',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: srcwidth * 0.053,
                                // fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: srcheight*0.0001),
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
              itemCount: 12,
                itemBuilder: (context, index) =>
              ListTile(
                leading: CircleAvatar(
                  child: items[index].iicon,
                ),

                
                
              ),
            
            
            
            ),
            
            
          ],
        ),
      ),
    );
  }
}





class settingsTile{
  final String label;
  final String subtitle;
  final Icon iicon;

  settingsTile( this.label , this.subtitle , this.iicon);
}
List<settingsTile> items = [
  settingsTile(
    'Account',
    'Security notifications, change number',
    const Icon(Icons.key, color: Colors.white),
  ),
  settingsTile(
    'Privacy',
    'Block contacts, disappearing messages',
    const Icon(Icons.lock, color: Colors.white),
  ),
  settingsTile(
    'Avatar',
    'Create, edit, profile photo',
    const Icon(Icons.person, color: Colors.white),
  ),
  settingsTile(
    'Lists',
    'Manage people and groups',
    const Icon(Icons.list, color: Colors.white),
  ),
  settingsTile(
    'Chats',
    'Theme, wallpapers, chat history',
    const Icon(Icons.chat, color: Colors.white),
  ),
  settingsTile(
    'Notifications',
    'Message, group & call tones',
    const Icon(Icons.notifications, color: Colors.white),
  ),
  settingsTile(
    'Storage and data',
    'Network usage, auto-download',
    const Icon(Icons.storage, color: Colors.white),
  ),
  settingsTile(
    'App language',
    "English (device's language)",
    const Icon(Icons.language, color: Colors.white),
  ),
  settingsTile(
    'Help',
    'Help center, contact us, privacy policy',
    const Icon(Icons.help, color: Colors.white),
  ),
  settingsTile(
    'Invite a friend',
    '',
    const Icon(Icons.person_add, color: Colors.white),
  ),



];