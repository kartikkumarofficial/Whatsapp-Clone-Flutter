import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/auth/auth_supabase.dart';

class OtpScreen extends StatefulWidget {

   OtpScreen({super.key});



  @override
  State<OtpScreen> createState() => _OtpScreenState();

}

class _OtpScreenState extends State<OtpScreen> {
  final phoneController = TextEditingController();
  @override
  void dispose() {
    phoneController.dispose();
    // TODO: implement dispose
    super.dispose();
  }



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
              style: TextStyle(
                color: Colors.white
              ),
              controller:phoneController ,
              validator: (value){
                if(value!.isEmpty){
                  return "Number is required";
                }
                return null;
              },
              decoration: InputDecoration(
                label: Text('Phone Number'),
                hintText: 'Phone num'
              ),

            ),
            TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 6,
            ),
            ElevatedButton
              (onPressed: ( ){
                sendVerificationCode(phoneNumber: phoneController.text);


            },
                child:Text('Sign up') )
          ],
        ),


      ),
    );
  }
}
