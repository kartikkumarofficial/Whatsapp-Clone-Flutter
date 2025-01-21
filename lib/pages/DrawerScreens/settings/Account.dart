import 'package:flutter/material.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: srcwidth * 0.03),
              child: Container(
                height: srcwidth * 0.22,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/chatpage/bro.jpg'),
                      radius: srcwidth * 0.08,
                    ),
                    SizedBox(width: srcwidth * 0.04),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: srcwidth * 0.04),
                            child: Text(
                              'Kartik the Don',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: srcwidth * 0.053,
                              ),
                            ),
                          ),
                          SizedBox(height: srcheight * 0.001),
                          Text(
                            'Wandering',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: srcwidth * 0.045,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.qr_code,
                            color: Color(0xff08E23D),
                            size: srcwidth * 0.065,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Color(0xff08E23D),
                            size: srcwidth * 0.065,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(left: srcwidth * 0.01),
                    child: items[index].iicon,
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: srcwidth * 0.015),
                    child: Text(
                      items[index].label,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: srcwidth * 0.045,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(left: srcwidth * 0.015),
                    child: Text(
                      items[index].subtitle,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ),
                );
              },
            ),
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
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.06,top: srcwidth*0.02),
              child: Text(
                'Also from Meta',
                style: TextStyle(
                    color: Color.fromARGB(255, 135, 145, 147),
                    fontSize: srcwidth * 0.038,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.01),
                child: Icon(
                  Icons.crop_square,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'Open Instagram',
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
                  Icons.facebook_outlined,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'Open Facebook',
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
                  Icons.alternate_email,
                  color: Color.fromARGB(255, 135, 145, 147),
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.015),
                child: Text(
                  'Open Threads',
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
