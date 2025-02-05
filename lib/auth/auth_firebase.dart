import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
String? verificationId;

Future<void> sendVerificationCode({required String phoneNumber}) async {
  try {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
        Get.snackbar("Success", "Phone number automatically verified.",
            snackPosition: SnackPosition.BOTTOM);
      },
      verificationFailed: (FirebaseAuthException e) {
        Get.snackbar("Error", "Failed to send OTP: ${e.message}",
            snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      },
      codeSent: (String verId, int? resendToken) {
        verificationId = verId;
        Get.snackbar("Success", "OTP Sent Successfully!",
            snackPosition: SnackPosition.BOTTOM);
      },
      codeAutoRetrievalTimeout: (String verId) {
        verificationId = verId;
      },
    );
  } catch (e) {
    Get.snackbar("Error", "An unexpected error occurred: $e",
        snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
  }
}

Future<void> verifyOTP({required String phoneNumber, required String otp}) async {
  try {
    if (verificationId == null) {
      Get.snackbar("Error", "No OTP request found. Please request OTP again.",
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      return;
    }

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId!,
      smsCode: otp,
    );

    await _auth.signInWithCredential(credential);
    Get.snackbar("Success", "Phone number verified successfully!",
        snackPosition: SnackPosition.BOTTOM);
  } catch (e) {
    print("Error ========================== $e");
    Get.snackbar("Error", "Failed to verify OTP:=============== $e",
        snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
  }
}
