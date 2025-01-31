import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PrivacyCheckupPage extends StatefulWidget {
  const PrivacyCheckupPage({super.key});

  @override
  State<PrivacyCheckupPage> createState() => _PrivacyCheckupPageState();
}

class _PrivacyCheckupPageState extends State<PrivacyCheckupPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Privacy Checkup',
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
            Image.asset('assets/images/privacycheckup.png',height: srcheight*0.2,),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('''Your privacy matters''',style: TextStyle(color: Colors.white,fontSize: srcwidth*0.06),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 15,right: 15),
              child: Text('Control your privacy settings and set up Whatsapp just the way you want it. ',style: TextStyle(color: Colors.grey,fontSize: srcwidth*0.035),textAlign: TextAlign.center,),
            ),
            ListTile(
              leading: Icon(Icons.perm_phone_msg_outlined,color: Colors.grey,),
              title: Text('Choose who can contact you',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),

              trailing: Icon(Icons.arrow_forward_rounded,color: Colors.grey,),
              onTap: (){
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline,color: Colors.grey,),
              title: Text('Control your personal info',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),

              trailing: Icon(Icons.arrow_forward_rounded,color: Colors.grey,),
              onTap: (){
              },
            ),
            ListTile(
              leading: Icon(Icons.message_outlined,color: Colors.grey,),
              title: Text('Add more privacy to your chats',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),

              trailing: Icon(Icons.arrow_forward_rounded,color: Colors.grey,),
              onTap: (){
              },
            ),
            ListTile(
              leading: Icon(Icons.lock_person_outlined,color: Colors.grey,),
              title: Text('Add more protection to your account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),

              trailing: Icon(Icons.arrow_forward_rounded,color: Colors.grey,),
              onTap: (){
              },
            ),






          ],
        ),
      ),
    );
  }}
