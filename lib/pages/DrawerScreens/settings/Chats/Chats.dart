import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Chats/Chat%20history.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Chats/ChatBackup.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Chats/TransferChats.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Chats/Wallpaper.dart';
import 'package:whatsappclone/widgets.dart';


class ChatsSettingsPage extends StatefulWidget {
  const ChatsSettingsPage({super.key});

  @override
  State<ChatsSettingsPage> createState() => _ChatsSettingsPageState();
}

class _ChatsSettingsPageState extends State<ChatsSettingsPage> {
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
        title: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: const Text(
            'Chats',
            style: TextStyle(
              fontSize:23,
              color: Colors.white,
            ),
          ),
        ),

      ),
      body: Container(
        color:Color.fromARGB(255,11 ,17,21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          // physics: const BouncingScrollPhysics(),
          children: [
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth*0.07,top: srcwidth*0.04),
              child: Text('Chat settings',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
            ),



            ListTile(
              leading: Icon(Icons.contrast,color: Colors.grey,),
              title: Text('Theme',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle: Text('Dark',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){
                ChatsSettingThemeManager().themedialogopener();

              },
            ),
            ListTile(
              leading: Icon(Icons.wallpaper,color: Colors.grey,),
              title: Text('Wallpaper',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),

              onTap: (){
                Get.to(WallpaperPage());

              },
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),

            Padding(
              padding: EdgeInsets.only(left: srcwidth*0.07,top: srcwidth*0.04),
              child: Text('Display',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
            ),

            ListTile(

              title: Padding(
                padding: const EdgeInsets.only(left:37),
                child: Text('Enter is send',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding:  EdgeInsets.only(left: 37),
                child: Text('Enter key will send your message',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),

              onTap: (){

              },
            ),
            ListTile(

              title: Padding(
                padding: const EdgeInsets.only(left:37),
                child: Text('Media visibility',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding:  EdgeInsets.only(left: 37),
                child: Text('''Show newly downloaded media in your device's gallery ''' ,
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),

              onTap: (){

              },
            ),
            ListTile(

              title: Padding(
                padding: const EdgeInsets.only(left:37),
                child: Text('Font size',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),

              subtitle: Padding(
                padding:  EdgeInsets.only(left: 37),
                child: Text('Medium',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),

              onTap: (){
                ChatsSettingThemeManager().fontsizedialogopener();

              },
            ),
            ListTile(

              title: Padding(
                padding: const EdgeInsets.only(left:37),
                child: Text('Voice message transcripts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding:  EdgeInsets.only(left: 37),
                child: Text('Read new voice messages',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),

              onTap: (){

              },
            ),

            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),

            Padding(
              padding: EdgeInsets.only(left: srcwidth*0.07,top: srcwidth*0.04),
              child: Text('Archived chats',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
            ),
            ListTile(


              title: Padding(
                padding: const EdgeInsets.only(left:37),
                child: Text('Keep chats archived',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),


              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding:  EdgeInsets.only(left: 37),
                child: Text('Archived chats will remain archived when you receive a new message',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),

              onTap: (){
              },
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),

            ListTile(
              leading: Icon(Icons.cloud_upload_outlined,color: Colors.grey,size: 25,),
              title: Text('Chat backup',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              onTap: (){
                Get.to(ChatBackupPage());

              },
            ),
            ListTile(
              leading: Icon(Icons.phonelink_ring_sharp,color: Colors.grey,size: 25,),
              title: Text('Transfer chats',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              onTap: (){
                Get.to(TransferChatsPage());

              },
            ),
            ListTile(
              leading: Icon(Icons.history,color: Colors.grey,size: 25,),
              title: Text('Chat history',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              onTap: (){
                Get.to(ChatHistoryPage());

              },
            ),





          ],
        ),
      ),
    );
  }
}
