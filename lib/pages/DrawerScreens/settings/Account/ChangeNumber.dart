import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ChangeNumberPage extends StatefulWidget {
  const ChangeNumberPage({super.key});

  @override
  State<ChangeNumberPage> createState() => _ChangeNumberPageState();
}

class _ChangeNumberPageState extends State<ChangeNumberPage> {

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
          children: [
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 30,right: 30),
              child: Image.asset('assets/images/changenumber.png',),
            ),
            Row(
              children: [
                Text('''     Changing your phone number will migrate
     your account info, groups & settings.
     ''',style: TextStyle(color: Colors.white,fontSize: Get.height*0.02)),
              ],
            ),
            Center(
              child: Text('''     Before proceeding, please confirm that you are
    able to receive SMS or calls at your new number.
     
      If you have both a new phone & a new number, 
       first change your number on your old phone.''',style: TextStyle(color: Colors.grey),textAlign: TextAlign.justify,),
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height*0.38,right: Get.width*0.35,left: Get.width*0.35),
              child: SizedBox(
                height: Get.height*0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(1,195,86,1.0),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),),
            ),



          ],
        ),
      ),
    );
  }}