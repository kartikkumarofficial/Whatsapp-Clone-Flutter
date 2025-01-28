import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EmailAddressPage extends StatefulWidget {
  const EmailAddressPage({super.key});

  @override
  State<EmailAddressPage> createState() => _EmailAddressPageState();
}

class _EmailAddressPageState extends State<EmailAddressPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Email address',
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
            Icon(Icons.email_rounded,color: Color.fromRGBO(0,214,85,1.0),size: Get.height*0.1,),
            Text('''Email helps you access your account. It isn't visible''',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
            Text('''to others''',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
            ListTile(
              title: Text('Email',style: TextStyle(color: Colors.grey),),
              subtitle: Text('work.kartikkumar@gmail.com',style: TextStyle(color: Colors.white,fontSize: Get.height*0.02),),
              trailing: Icon(Icons.edit_outlined,color: Colors.grey,),
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: Get.width*0.035),
                  child: Icon(color: Colors.green,Icons.check_circle_outline,),
                ),
                Text(' Verified',style: TextStyle(color: Colors.green),)
              ],
            )




          ],
        ),
      ),
    );
  }}
