import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'updatespage.dart';
import 'dart:ui';
import 'dart:io';

class StatusPrivacy extends StatefulWidget {
  const StatusPrivacy({super.key});

  @override
  State<StatusPrivacy> createState() => _StatusPrivacyrivacyState();
}

class _StatusPrivacyrivacyState extends State<StatusPrivacy> {
  var lt = FontWeight.w300;
  var scrh = 0.0;
  var scrw = 0.0;

  String? _selectedOption="share_with";

  @override
  Widget build(BuildContext context) {
    scrh = MediaQuery.of(context).size.height;
    scrw = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        leading: IconButton(


          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute(builder: (context) => Updatespage());


          },
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 25),
        ),
        title: Text(
          "Status Privacy",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 22),
        ),
      ),
      body: Container(
        width: scrw * 1,
        color: const Color(0xff0B1014),
        
        
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  "Who can see my status updates",
                  style: TextStyle(color: Colors.white38, fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<String>(
                        value: "contacts",
                        groupValue: _selectedOption,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedOption = value;
                          });
                          
                        },

                        activeColor: Colors.green,
                      ),
                      title: Text("My contacts", style: TextStyle(color: Colors.white, fontWeight: lt)),
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: "except",
                        groupValue: _selectedOption,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                      title: Text("My contacts except...", style: TextStyle(color: Colors.white, fontWeight: lt)),
                      trailing: Text("40 excluded", style: TextStyle(color: Colors.green, fontWeight: lt, fontSize: 15)),
                    ),
                    ListTile(
                      leading: Radio<String>(

                        value: "share_with",
                        groupValue: _selectedOption,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                      title: Text("Only share with...", style: TextStyle(color: Colors.white, fontWeight: lt)),

                      trailing: Text("1 included", style: TextStyle(color: Colors.green, fontWeight: lt, fontSize: 15)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text(
                  "Changes to your privacy settings won't affect status updates you've sent already",
                  style: TextStyle(color: Colors.white38, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
