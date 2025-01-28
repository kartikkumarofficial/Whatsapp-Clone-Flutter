import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PasskeysPage extends StatefulWidget {
  const PasskeysPage({super.key});

  @override
  State<PasskeysPage> createState() => _PasskeysPageState();
}

class _PasskeysPageState extends State<PasskeysPage> {

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Passkeys',
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

              title: Text('Manage your passkey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle:RichText(
                text: TextSpan(
                  text: '''Access Whatsapp the same way you unlock your phone: with your fingerprint, face or screen lock. Your passkey gives you a secure and easy way to log backi nto your account''',
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Learn more',
                      style: const TextStyle(color: Colors.lightBlueAccent),
                    ),

                  ],
                ),
              ),

              onTap: (){

              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: Get.height*0.13,
                width: Get.width*0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.1
                  ),
                ),
                child:Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person_search_outlined,color: Colors.white,),
                      title: Text('Passkey',style: TextStyle(color: Colors.white),),
                      subtitle: Text('This will be used to verify your account',style: TextStyle(color: Colors.grey),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: Get.width*0.142),
                          child: Text('Delete',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }}