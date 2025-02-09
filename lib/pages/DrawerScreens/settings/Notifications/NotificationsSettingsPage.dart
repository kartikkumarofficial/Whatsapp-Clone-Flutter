import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/CustomWidgets/widgets.dart';

class NotificationsSettingsPage extends StatefulWidget {
  const NotificationsSettingsPage({super.key});

  @override
  State<NotificationsSettingsPage> createState() => _NotificationsSettingsPageState();
}

class _NotificationsSettingsPageState extends State<NotificationsSettingsPage> {
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
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: const Text(
            'Notifications',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 11, 17, 21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              title: Text(
                'Conversation tones',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              trailing: utils().getxswitch(),
              subtitle: Text(
                'Play sounds for incoming and outgoing messages',
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Reminders',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              trailing: utils().getxswitch(),
              subtitle: Text(
                '''Get occasional reminders about messages or status updates you haven't seen ''' ,
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.07, top: srcwidth * 0.04),
              child: Text(
                'Messages',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(

              title: Text(
                'Notification tone',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              subtitle: Text(
                'Silent',
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
            ListTile(

              title: Text(
                'Vibrate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              subtitle: Text(
                'Default',
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {
                NotificationsSettingManager().vibratedialogopener();
              },
            ),
            ListTile(

              title: Text(
                'Light',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              subtitle: Text(
                'White',
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {
                NotificationsSettingManager().lightdialogopener();
              },
            ),
            ListTile(
              title: Text(
                'Use high priority notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              trailing: utils().getxswitch(),
              subtitle: Text(
                '''Show previews of notifications at the top of the screen ''' ,
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Reaction notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              trailing: utils().getxswitch(),
              subtitle: Text(
                '''Show notifications for reactions to messages you send ''' ,
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),



            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.07, top: srcwidth * 0.04),
              child: Text(
                'Groups',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),


            ListTile(
              title: Text(
                'Ringtone',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              subtitle: Text(
                '''Default ringtone''' ,
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Vibrate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              subtitle: Text(
                '''Default''' ,
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {
                NotificationsSettingManager().vibratedialogopener();
              },
            ),

            ListTile(
              leading: Icon(Icons.notifications, color: Colors.grey),
              title: Text(
                'Vibrate for Groups',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              subtitle: Text(
                'Vibrate on group messages',
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications_none, color: Colors.grey),
              title: Text(
                'Popup Notification for Groups',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              subtitle: Text(
                'Always',
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),

            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.07, top: srcwidth * 0.04),
              child: Text(
                'Calls',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),


            ListTile(
              title: Text(
                'Ringtone',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              subtitle: Text(
                '''Default ringtone''' ,
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Vibrate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),
              ),
              subtitle: Text(
                '''Default''' ,
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {
                NotificationsSettingManager().vibratedialogopener();
              },
            ),

            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),


            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.07, top: srcwidth * 0.04),
              child: Text(
                'Status',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 37),
                child: Text(
                  'Reactions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),
                ),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 37),
                child: Text(
                  'Show notifications when you get likes on a status',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
