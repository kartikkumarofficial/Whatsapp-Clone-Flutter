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
        height: srcheight*0.4 ,
        width: double.infinity,
        color: Color.fromARGB(255,11,17,21),

      ),



    );
  }
}
