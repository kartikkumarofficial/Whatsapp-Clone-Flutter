import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsappclone/CustomWidgets/bottomnavigationbar.dart';
import 'ChatPage/chatspage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer(Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    });
    // fade effect
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: srcheight,
          width: srcwidth,
          color: Color.fromARGB(255, 19, 24, 28),
          child: Center(
            child: AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              child: Padding(
                padding: EdgeInsets.only(top: srcheight * 0.35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/wsaplogo.png',
                      color: Colors.white,
                      height: srcwidth * 0.35,
                      width: srcwidth * 0.35,
                    ),
                    SizedBox(height: srcheight * 0.3),
                    Image.asset(
                      'assets/images/frommeta.png',
                      height: srcwidth * 0.3,
                      width: srcwidth * 0.5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
