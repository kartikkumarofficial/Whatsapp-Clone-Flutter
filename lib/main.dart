import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:whatsappclone/pages/splashscreen.dart';
import 'bottomnavigationbar.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'constants/constants.dart';


Future<void> main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight=MediaQuery.of(context).size.height;
    var srcwidth =MediaQuery.of(context).size.width;



    return GetMaterialApp(
      title: 'Whatsappclone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        popupMenuTheme: PopupMenuThemeData(
          color: Color.fromARGB(255,11,17,21)
        )

      ),
      home: Splashscreen(),
    );
  }
}



