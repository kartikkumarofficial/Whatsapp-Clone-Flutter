import 'package:flutter/material.dart';
import 'package:whatsappclone/main.dart';


class chatpage extends StatelessWidget {
  const chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight=MediaQuery.of(context).size.height;
    var srcwidth =MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor:  Color.fromARGB(255, 6, 21, 28),
        title: Text('WhatsApp',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize:25,
        ),
        ),
        actions: [
            IconButton(
            icon: Icon(Icons.qr_code_scanner_outlined,
              color: Colors.white,
            size: 30,),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.camera_alt_outlined,
              color: Colors.white,
              size: 30,),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert,
              color: Colors.white,
              size: 30,),
            onPressed: (){
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView.builder(
            itemBuilder:(context, index) {
              return Container(
                height: srcheight*0.05,
                child: Row(
                  children: [
                    Text('')
                  ],
                ),

              );
            }, )
      ),





      body: Center(
        child: Container(
          color: Colors.black,
          height: 300,
          width: 300,
        ),
      ),

    );
  }
}
