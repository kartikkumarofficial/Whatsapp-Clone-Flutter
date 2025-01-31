import 'package:flutter/material.dart';
import 'package:get/get.dart';


class StarredMessagesPage extends StatefulWidget {
  const StarredMessagesPage({super.key});

  @override
  State<StarredMessagesPage> createState() => _StarredMessagesPageState();
}

class _StarredMessagesPageState extends State<StarredMessagesPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Starred Messages',
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
            Image.asset('assets/images/starredmessage.png',scale: 0.5,height: srcwidth*0.6,),

            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 40,right: 40),
              child: Text('''Tap and Hold on any message in 
any chat to star it, so you can 
easily find it later''',style: TextStyle(color: Colors.grey,fontSize: srcwidth*0.048),textAlign: TextAlign.center,),
            ),



          ],
        ),
      ),
    );
  }}
