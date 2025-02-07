import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/widgets.dart';

class ChatBackupPage extends StatefulWidget {
  const ChatBackupPage({super.key});

  @override
  State<ChatBackupPage> createState() => _ChatBackupPageState();
}

class _ChatBackupPageState extends State<ChatBackupPage> {
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
            'Chat Backup',
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
            ListTile(
              title: Text('Backup settings',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle: Text('Backup your chats and media to your google Accout\'s storage. You can restore them on a new phone after you download WhatsApp on it.',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){

              },
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Last Backup:8/10/24, 6:34 PM \nSize:820 MB',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.004),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.lock,color: Colors.black,size: 20,),
                    Text(' End-to-end encrypted',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              onTap: (){

              },
            ),
            Padding(
              padding:  EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: srcwidth*0.2,
                child: Padding(
                  padding: EdgeInsets.only(left: srcwidth*0.07,right: srcwidth*0.67),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(1,193,98,1.0)
                    ),
                      onPressed: (){},
                      child: Text('Back up',style:
                      TextStyle(fontWeight: FontWeight.w600,color: Colors.black),)



                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 10.0),
              child: ListTile(

                title: Padding(
                  padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                  child: Text('Manage Google Storage',
                    style: TextStyle(
                      color: Color.fromRGBO(33,193,98,1.0),
                      fontSize: srcwidth * 0.042,
                    ),),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: srcwidth * 0.018),
                  child: Text('Loading Storage info...',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                ),
                onTap: (){

                },
              ),
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Google Accont',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('work.kartikkumar@gmail.com',
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
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Frequency',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('Only when I tap \"Back up\"',
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
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Include videos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),

              trailing: utils().getxswitch(),

              onTap: (){

              },
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Back   up using cellular',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),

              trailing: utils().getxswitch(),

              onTap: (){

              },
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              title: Text('End-to-end encryption',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle: Text('For added security, you can protect your backup with end-to-end encryption.',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){

              },
            ),
            ListTile(
              leading: Icon(Icons.lock_outline,color: Colors.grey,),

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('End-to-end encrypted backup',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('On',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){

              },
            ),




          ],
        ),
      ),
    );
  }
}
