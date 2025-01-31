import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LiveLocationPage extends StatefulWidget {
  const LiveLocationPage({super.key});

  @override
  State<LiveLocationPage> createState() => _LiveLocationPageState();
}

class _LiveLocationPageState extends State<LiveLocationPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Live Location',
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
            Image.asset('assets/images/location.png',height: srcheight*0.15,),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('''You aren't sharing live location in any chats''',style: TextStyle(color: Colors.white,fontSize: srcwidth*0.04),textAlign: TextAlign.center,),
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              title: Text('Live location requires background location. You can manage this manage this in your device settings.',style: TextStyle(color: Colors.grey,fontSize: Get.height*0.016),),

            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),



          ],
        ),
      ),
    );
  }}
