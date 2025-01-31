import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NewCommunityPage extends StatefulWidget {

  const NewCommunityPage({super.key});

  @override
  State<NewCommunityPage> createState() => _NewCommunityPageState();
}

class _NewCommunityPageState extends State<NewCommunityPage> {
  final TextEditingController communitycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'New community',
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
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15),
              child: RichText(
                  text: TextSpan(
                      style:TextStyle(fontSize: srcwidth*0.035)
                      ,children: [
                    TextSpan(
                      text: '                      See examples',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),
                    TextSpan(
                      text:  ' of different communities ',
                      style: TextStyle(color: Colors.grey),
                    ),


                  ]
                  )),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [

                Center(
                  child: Container(
                    color: Colors.grey,
                    height: Get.height*0.2,
                    width: Get.height*0.2,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: -srcwidth*0.01,
                  child: CircleAvatar(
                    radius: srcheight * 0.03,
                    backgroundColor: Color.fromRGBO(32,194,93,1.0),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),


            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('''Chat lock keeps your chat locked
 and hidden''',style: TextStyle(color: Colors.white,fontSize: srcwidth*0.06),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.height*0.025,right: Get.height*0.025),
              child: RichText(
                  text: TextSpan(
                      style:TextStyle(fontSize: srcwidth*0.035)
                      ,children: [
                    TextSpan(
                      text: 'If you have locked chats, pull down on your chat list or type your secret code in the search bar to find them. ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),

                  ]
                  )),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 20,bottom: 20),
              child: Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 31, 43, 50),
              ),
            ),
            ListTile(
              subtitle: Text('If you forgot your secret code, you can clear it. This will also unlock and clear messages, photos and videos in locked chats.',
                style: TextStyle(color: Colors.grey,fontSize: Get.height*0.016),),
              title:Text('Unlock and clear locked chats ',style: TextStyle(color: Colors.white),),

            ),



          ],
        ),
      ),
    );
  }}
