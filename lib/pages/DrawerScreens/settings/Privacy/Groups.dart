import 'package:flutter/material.dart';


class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  var lt = FontWeight.w300;
  var scrh = 0.0;
  var scrw = 0.0;

  String? _selectedOption="everyone";

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
            'Groups',
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
                  "Who can add me to groups",
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

                    Padding(
                      padding: const EdgeInsets.only(left: 23,right: 20),
                      child: Text(
                        "Admins who can\'t add you to a group will have the option of inviting you privately instead.",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23,right: 20,top: 10),
                      child: Text(
                        "This setting does not apply to community announcement groups. If you\'re added to a community, you\'ll always be added to a community announcement group.",
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
