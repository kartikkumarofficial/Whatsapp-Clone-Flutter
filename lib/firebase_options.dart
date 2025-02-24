// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD7YBSEwGzVsmsXCuAOEyIQCdpefPs31DA',
    appId: '1:1014280256084:web:d0eb63477d1a133e1d0bc1',
    messagingSenderId: '1014280256084',
    projectId: 'whatsapp-fa88c',
    authDomain: 'whatsapp-fa88c.firebaseapp.com',
    storageBucket: 'whatsapp-fa88c.firebasestorage.app',
    measurementId: 'G-L0GY9LKN66',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMJ6-XPOo7wR8VsWnpSfbkC96CZw2Slvk',
    appId: '1:1014280256084:android:b47d843fdeaa0f811d0bc1',
    messagingSenderId: '1014280256084',
    projectId: 'whatsapp-fa88c',
    storageBucket: 'whatsapp-fa88c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvF0xqQWLDkZxgPY0T2w57Jq14i2B4X-Q',
    appId: '1:1014280256084:ios:c9390a8f024dbbb21d0bc1',
    messagingSenderId: '1014280256084',
    projectId: 'whatsapp-fa88c',
    storageBucket: 'whatsapp-fa88c.firebasestorage.app',
    iosBundleId: 'com.example.whatsappclone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvF0xqQWLDkZxgPY0T2w57Jq14i2B4X-Q',
    appId: '1:1014280256084:ios:c9390a8f024dbbb21d0bc1',
    messagingSenderId: '1014280256084',
    projectId: 'whatsapp-fa88c',
    storageBucket: 'whatsapp-fa88c.firebasestorage.app',
    iosBundleId: 'com.example.whatsappclone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD7YBSEwGzVsmsXCuAOEyIQCdpefPs31DA',
    appId: '1:1014280256084:web:bfcecd20f9b4155f1d0bc1',
    messagingSenderId: '1014280256084',
    projectId: 'whatsapp-fa88c',
    authDomain: 'whatsapp-fa88c.firebaseapp.com',
    storageBucket: 'whatsapp-fa88c.firebasestorage.app',
    measurementId: 'G-RQMRBVWY3Z',
  );
}
