// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter/material.dart';
// import 'package:whatsappclone/pages/ChatPage/chat_firebase.dart';
// import 'package:whatsappclone/pages/login/signup_screen.dart';
// import '../pages/ChatPage/chatspage_backend.dart';
//
// class GoogleSignInProvider {
//   static final FirebaseAuth auth = FirebaseAuth.instance;
//   static final GoogleSignIn googleSignIn = GoogleSignIn();
//
//   static User? get user => auth.currentUser;
//
//   // Function to handle Google Sign-In
//   static Future<void> signInWithGoogle(BuildContext context) async {
//     try {
//       final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
//
//       if (googleUser == null) return; // User canceled sign-in
//
//       final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//
//       final UserCredential userCredential = await auth.signInWithCredential(credential);
//
//       if (userCredential.user != null) {
//         // ✅ Check if user exists in Firestore
//         bool exists = await firebase.userExists();
//
//         if (exists) {
//           // ✅ Navigate to chat page if user exists
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => ChatPageBackend()),
//           );
//         } else {
//           // ❌ Navigate to signup page if user is new
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => SignUpScreen()),
//           );
//         }
//       }
//     } catch (e) {
//       print("Google Sign-In Error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Failed to sign in with Google: $e")),
//       );
//     }
//   }
//
//   // Function to sign out
//   static Future<void> signOut() async {
//     await auth.signOut();
//     await googleSignIn.signOut();
//   }
// }
