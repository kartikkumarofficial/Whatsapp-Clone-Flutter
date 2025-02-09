import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/CustomWidgets/widgets.dart';


class AdvancedPrivacyPage extends StatefulWidget {
  const AdvancedPrivacyPage({super.key});

  @override
  State<AdvancedPrivacyPage> createState() => _AdvancedPrivacyPageState();
}

class _AdvancedPrivacyPageState extends State<AdvancedPrivacyPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Chat Lock',
          style: TextStyle(
            color: Colors.white,
            fontSize: srcwidth * 0.048,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 11, 17, 21),
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

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Block unknown account messages',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                  padding: EdgeInsets.only(left: srcwidth * 0.018),
                  child:RichText(
                      text: TextSpan(
                          style:TextStyle(fontSize: srcwidth*0.035)
                          ,children: [
                        TextSpan(
                          text: 'To protect your account and improve device performance, WhatsApp will block messages from unknown accounts if theyexceed a certain volume.',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                          text: 'Learn more',
                          style: TextStyle(color: Colors.lightBlueAccent,fontWeight: FontWeight.bold)
                        ),

                      ]
                      ))
              ),

              onTap: (){

              },
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Protect IP address in calls',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                  padding: EdgeInsets.only(left: srcwidth * 0.018),
                  child:RichText(
                      text: TextSpan(
                          style:TextStyle(fontSize: srcwidth*0.035)
                          ,children: [
                        TextSpan(
                          text: 'To make it harder for people to infer your location, calls on this device will be securely relayed through WhatsApp servers. This will reduce call quality. ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                            text: 'Learn more',
                            style: TextStyle(color: Colors.lightBlueAccent,fontWeight: FontWeight.bold)
                        ),

                      ]
                      ))
              ),

              onTap: (){

              },
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Disable link previews',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                  padding: EdgeInsets.only(left: srcwidth * 0.018),
                  child:RichText(
                      text: TextSpan(
                          style:TextStyle(fontSize: srcwidth*0.035)
                          ,children: [
                        TextSpan(
                          text: 'To help protect your IP address from being inferred by third-party websites, previews for the links you share in chats will no longer be generated. ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                            text: 'Learn more',
                            style: TextStyle(color: Colors.lightBlueAccent,fontWeight: FontWeight.bold)
                        ),

                      ]
                      ))
              ),

              onTap: (){

              },
            ),



          ],
        ),
      ),
    );
  }}
