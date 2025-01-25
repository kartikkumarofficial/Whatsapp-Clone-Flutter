import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HelpSettingsPage extends StatefulWidget {
  const HelpSettingsPage({super.key});

  @override
  State<HelpSettingsPage> createState() => _HelpSettingsPageState();
}

class _HelpSettingsPageState extends State<HelpSettingsPage> {
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
            'Help',
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
              leading: Icon(Icons.help_outline,color: Colors.grey,),
              title: Text('Help Center',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle: Text('Get help,contact us',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){
              },
            ),
            ListTile(
              leading: Icon(Icons.document_scanner,color: Colors.grey,),
              title: Text('Terms and Privacy Policy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),

              onTap: (){
              },
            ),
            ListTile(
              leading: Icon(Icons.newspaper_rounded,color: Colors.grey,),
              title: Text('Channel reports',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),

              onTap: (){
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline,color: Colors.grey,),
              title: Text('App info',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),

              onTap: (){
              },
            ),




          ],
        ),
      ),
    );
  }
}
