import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/splashscreen.dart';
import 'bottomnavigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var srcheight=MediaQuery.of(context).size.height;
    var srcwidth =MediaQuery.of(context).size.width;



    return MaterialApp(
      title: 'Whatsappclone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: Splashscreen(),
    );
  }
}



