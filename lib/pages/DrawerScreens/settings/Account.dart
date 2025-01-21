import 'package:flutter/material.dart';


class AccountPage extends StatefulWidget {


  AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  List<String> accountpagelist=['Security notifications','Passkeys','Email address'];

  List accountpageicons=[Icon(Icons.security),Icon(Icons.person),Icon(Icons.email_outlined),Icon(Icons.password),Icon(Icons.phone_android_rounded),Icon(Icons.document_scanner),Icon(Icons.person_add_alt_1_outlined),Icon(Icons.delete_outlined)];
  @override
  Widget build(BuildContext context) {

    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

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
        backgroundColor: const Color.fromARGB(255, 7, 21, 29),
        title: const Text(
          'Account',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 7, 21, 29),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListView.builder(
              itemCount: accountpagelist.length,
                itemBuilder:(context, index) {
                  return ListTile(
                    title: Text(accountpagelist[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: srcwidth * 0.045,
                      ),),

                  );
                }, ),


            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.01),
                child: Icon(
                  Icons.people_alt_outlined,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'Invite a Friend',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.045,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.01),
                child: Icon(
                  Icons.security_update_good_outlined,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'App updates',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.045,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}




