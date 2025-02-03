import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> signUp(String email, String password) async {
  final supabase = Supabase.instance.client;
  final response = await supabase.auth.signUp(
    email: email,
    password: password,
  );

  if (response.user != null) {
    print("Sign-up successful!");
  } else {
    print("Sign-up failed.");
  }
}



Future<void> verifyOTP(String phoneNumber, String otp) async {
  final supabase = Supabase.instance.client;
  final response = await supabase.auth.verifyOTP(
    phone: phoneNumber,
    token: otp, type: OtpType.signup,
  );

  if (response.session != null) {
    print("User logged in successfully!");
  } else {
    print("Invalid OTP");
  }
}
