import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/widgets.dart';


class AppLockPage extends StatefulWidget {
  const AppLockPage({super.key});

  @override
  State<AppLockPage> createState() => _AppLockPageState();
}

class _AppLockPageState extends State<AppLockPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'App Lock',
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
                child: Text('Unlock with biometric',
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
                          text: "When enabled, you'll need to use fingerprint, face or other unique identifiers to open WhatsApp. You can still answer calls if WhatsApp is locked. ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                            text: '',
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
