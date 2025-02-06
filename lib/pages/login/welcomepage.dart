
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/pages/login/authscreen.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color:  Color.fromARGB(255,11,17,21),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),
              SizedBox(height: size.height / 9),
              Image.asset(
                'assets/images/bg.png',
                height: 340,
                width: 340,
                color: Colors.green,
              ),
              SizedBox(height: size.height / 9),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),

              Row(

                children: [
                  Container(
                    height: Get.height*0.08,
                    width: Get.width,


                    child: Padding(
                      padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                      child: Container(
                        // height: Get.height*0.4,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          height: 150,
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(32,192,98,1.0),
                            ),
                            onPressed: () {
                              Get.to(OtpScreen());
                            },
                            child: Text(
                              'Agree and Continue',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
