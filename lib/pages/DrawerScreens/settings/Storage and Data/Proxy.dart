import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:whatsappclone/Controllers/controllers.dart';
import 'package:whatsappclone/CustomWidgets/widgets.dart';


class ProxyPage extends StatefulWidget {
  @override
  State<ProxyPage> createState() => _ProxyPageState();
}

class _ProxyPageState extends State<ProxyPage> {
  SwitchController switchController = Get.put(SwitchController());
  bool flag = true;


  @override
  Widget build(BuildContext context) {


    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;

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
            'Proxy',
            style: TextStyle(
              fontSize:23,
              color: Colors.white,
            ),
          ),
        ),

      ),
      body: Container(
        color:Color.fromARGB(255,11,17,21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              // leading: Icon(Icons.folder_outlined,color: Colors.grey,),
              title: Text('Use Proxy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle: RichText(
                text: TextSpan(
                  text: 'Only use proxy if you\'re unable to connect to\n WhatsApp. Your IP address may be visible to\n the proxy provider,which is not Whatsapp.\n',
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),

                  ],
                ),
              ),
              onTap: (){

              },
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              // leading: Icon(Icons.folder_outlined,color: Colors.grey,),
              title: Text('Set-up proxy',
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
