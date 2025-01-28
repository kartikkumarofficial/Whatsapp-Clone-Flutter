import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/widgets.dart';


class RequestAccountInfoPage extends StatefulWidget {
  const RequestAccountInfoPage({super.key});

  @override
  State<RequestAccountInfoPage> createState() => _RequestAccountInfoPageState();
}

class _RequestAccountInfoPageState extends State<RequestAccountInfoPage> {
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
            'Request account info',
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
              padding: EdgeInsets.only(left: srcwidth * 0.043, top: srcwidth * 0.02),
              child: Text(
                'Account information',
                style: TextStyle(
                    color: Color.fromARGB(255, 135, 145, 147),
                    fontSize: srcwidth * 0.038,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file_outlined,color: Colors.grey),
              title: Text('Request account report',style: TextStyle(color: Colors.white),),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width*0.045,right: Get.width*0.045),
              child: RichText(
                text: TextSpan(
                  text: ''' Create a report of your WhatsApp account information and settings, which you can access or port to another app. This report does not include your messages.''',
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),

                  ],
                ),
              ),
            ),


            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(Icons.history,color: Colors.grey),
              title: Text('Create reports automatically',style: TextStyle(color: Colors.white),),
              trailing: utils().getxswitch(),
            ),


            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width*0.045,right: Get.width*0.045),
              child: RichText(
                text: TextSpan(
                  text: '''A new report will be created every month.''',
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.043, top: srcwidth * 0.06),
              child: Text(
                'Channel information',
                style: TextStyle(
                    color: Color.fromARGB(255, 135, 145, 147),
                    fontSize: srcwidth * 0.038,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(Icons.file_copy,color: Colors.grey),
              title: Text('Request Channels report',style: TextStyle(color: Colors.white),),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width*0.045,right: Get.width*0.045),
              child: RichText(
                text: TextSpan(
                  text: '''Create a report of your channel updates and information, which you can access or port to another app. ''',
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),

                  ],
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(Icons.history,color: Colors.grey),
              title: Text('Create reports automatically',style: TextStyle(color: Colors.white),),
              trailing: utils().getxswitch(),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width*0.045,right: Get.width*0.045),
              child: RichText(
                text: TextSpan(
                  text: '''A new report will be created every month.''',
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),

                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
