import 'package:flutter/material.dart';



class LinkedDevicesPage extends StatefulWidget {
  const LinkedDevicesPage({super.key});

  @override
  State<LinkedDevicesPage> createState() => _LinkedDevicesPageState();
}

class _LinkedDevicesPageState extends State<LinkedDevicesPage> {

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,11,17,21),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Linked devices',style: TextStyle(color: Colors.white),),
      ),
      body:Container(
        color: Color.fromRGBO(18,24,29,1.0),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: srcheight*0.4 ,
              width: double.infinity,
              color: Color.fromARGB(255,11,17,21),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Image.asset('assets/linkeddevices.png',color: Colors.red,),
                  Text('You can link other devices to this account.',style: TextStyle(color: Colors.grey),),
                  Text('Learn More',style: TextStyle(color: Colors.blue),),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(80,255,50,1.0)
                    ),
                      onPressed: (){},
                      child: Text('Link a device',style: TextStyle(color: Colors.black),)),

                ],
              ),




            ),
            Divider(
              // height: srcwidth*0.1,
              thickness: srcwidth*0.05,

              color: Color.fromRGBO(18,24,29,1.0),),
            Container(
              height: srcheight*0.17 ,
              width: double.infinity,
              color: Color.fromARGB(255,11,17,21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Device Status.',style: TextStyle(color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text('Tap a device to log out',style: TextStyle(color: Colors.grey),),
                  ),
                  //todo streambuilder that fetches from user on what devices is this whatsapp logged in
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.window_sharp),
                    ),
                    title: Text('Windows',style: TextStyle(color: Colors.white),),
                    subtitle: Text('Last active today at 9:27 PM',style: TextStyle(color: Colors.grey),),
                  ),



                ],
              ),
            ),
            Icon(Icons.lock, color: Colors.grey),
            RichText(text: TextSpan(
              style:TextStyle(fontSize: srcwidth*0.1)
                  ,children: [
              TextSpan(
              text: 'Your personal',
              style: TextStyle(color: Colors.grey),
            ),
              TextSpan(
                text: 'Green Text ',
                style: TextStyle(color: Colors.green),
              ),
              TextSpan(
                text: 'More Grey Text',
                style: TextStyle(color: Colors.grey),
              ),

            ))
          ],
        ),

      ),




    );
  }
}
