import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255,11,17,21),
        title: Text(
          'Verify Otp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),


      ),
      body: Container(
        color: Color.fromARGB(255,11,17,21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(


            ),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 6,
            ),
            ElevatedButton
              (onPressed: (){


            },
                child:Text('Sign up') )
          ],
        ),


      ),
    );
  }
}
