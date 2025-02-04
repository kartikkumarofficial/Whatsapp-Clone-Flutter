import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


Future<void> sendVerificationCode({required String phoneNumber}) async {
  final supabase = Supabase.instance.client;

  try {
    await supabase.auth.signInWithOtp(
      phone: phoneNumber,
    );
    print("✅ OTP sent successfully to $phoneNumber");
  } catch (e) {
    print("❌ Error sending OTP: $e");
  }
}


Future<void> verifyOTP({required String phoneNumber, required String otp}) async {
  final supabase = Supabase.instance.client;

  try {
    final AuthResponse response = await supabase.auth.verifyOTP(
      phone: phoneNumber,
      token: otp,
      type: OtpType.sms,
    );

    if (response.session != null) {
      print("✅ User logged in successfully! Session ID: ${response.session!.accessToken}");
    } else {
      print("❌ Invalid OTP, please try again.");
    }
  } catch (e) {
    print("⚠️ OTP Verification failed: $e");
  }
}
