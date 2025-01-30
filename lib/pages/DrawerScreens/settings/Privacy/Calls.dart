import 'package:flutter/material.dart';


class LastSeenAndOnlinePage extends StatefulWidget {
  const LastSeenAndOnlinePage({super.key});

  @override
  State<LastSeenAndOnlinePage> createState() => _LastSeenAndOnlinePageState();
}

class _LastSeenAndOnlinePageState extends State<LastSeenAndOnlinePage> {
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255,11,17,21),
        title: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: const Text(
            'Profile',
            style: TextStyle(
              fontSize:23,
              color: Colors.white,
            ),
          ),
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

            ],
          ),
        ),
      ),
    );
  }
}
