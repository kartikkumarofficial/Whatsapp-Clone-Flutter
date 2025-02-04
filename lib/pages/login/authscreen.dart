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
  final otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    phoneController.dispose();
    otpController.dispose();
    super.dispose();
  }

  Future<void> handleSendOtp() async {
    if (_formKey.currentState!.validate()) {
      try {
        await sendVerificationCode(phoneNumber: phoneController.text);
        Get.snackbar("Success", "OTP Sent Successfully!",
            snackPosition: SnackPosition.BOTTOM);
      } catch (e) {
        Get.snackbar("Error", "Failed to send OTP: $e",
            snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Verify OTP',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 11, 17, 21),
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: phoneController,

                validator: (value) {
                  if (value!.isEmpty) {
                    return "Number is required";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Enter your phone number',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: otpController,
                keyboardType: TextInputType.number,
                maxLength: 6,
                decoration: InputDecoration(
                  labelText: 'OTP',
                  hintText: 'Enter OTP',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => sendVerificationCode(phoneNumber: "+917017977414"),
                child: Text("Send OTP"),
              ),

              ElevatedButton(
                onPressed: () => verifyOTP(phoneNumber: "+917017977414", otp: "123456"),
                child: Text("Verify OTP"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
