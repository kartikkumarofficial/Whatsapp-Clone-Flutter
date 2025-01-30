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
            'Last seen and online',
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
                  "Who can see my last seen",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<String>(
                        value: "everyone",
                        groupValue: _selectedOption,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedOption = value;
                          });

                        },

                        activeColor: Colors.green,
                      ),
                      title: Text("Everyone", style: TextStyle(color: Colors.white, fontWeight: lt)),
                    ),
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
                      title: Text("Nobody", style: TextStyle(color: Colors.white, fontWeight: lt)),

                      // trailing: Text("1 included", style: TextStyle(color: Colors.green, fontWeight: lt, fontSize: 15)),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 31, 43, 50),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23,top: 20),
                child: Text(
                  "Who can see when I'm online.",
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<String>(
                        value: "everyone",
                        groupValue: _selectedOption,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedOption = value;
                          });

                        },

                        activeColor: Colors.green,
                      ),
                      title: Text("Everyone", style: TextStyle(color: Colors.white, fontWeight: lt)),
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
                      title: Text("Same as last seen", style: TextStyle(color: Colors.white, fontWeight: lt)),

                      // trailing: Text("1 included", style: TextStyle(color: Colors.green, fontWeight: lt, fontSize: 15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23,right: 30),
                      child: Text(
                        "If you don\'t share when you were last seen or online, you won\'t be able  to see when other people were last seen or online.",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
                      ),
                    )
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
