import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TwoStepVerificationPage extends StatefulWidget {
  const TwoStepVerificationPage({super.key});

  @override
  State<TwoStepVerificationPage> createState() => _TwoStepVerificationPageState();
}

class _TwoStepVerificationPageState extends State<TwoStepVerificationPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Two-step verification',
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
            Padding(
              padding: EdgeInsets.only(left: Get.width*0.36,right: Get.width*0.36,top: Get.width*0.1,bottom: Get.width*0.05),
              child: Container(

                decoration: BoxDecoration(
                  color:Color.fromRGBO(1,195,86,1.0) ,
                  borderRadius: BorderRadius.circular(10)
                ),
                height: Get.height*0.08,
                  
                  child: Icon(Icons.password_sharp,color: Colors.black,size: Get.height*0.08,)),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: '''For extra security,turn on two step verification, which
            will require a PIN when registering your phone 
            number with WhatsApp again.''',
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),

                  ],
                ),
              ),
            ),



            Padding(
              padding: EdgeInsets.only(top: Get.height*0.57,right: Get.width*0.32,left: Get.width*0.32),
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
                    'Turn on',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),),
            ),




          ],
        ),
      ),
    );
  }}
