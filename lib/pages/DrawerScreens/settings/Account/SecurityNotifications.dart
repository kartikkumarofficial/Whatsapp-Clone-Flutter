import 'package:flutter/material.dart';

class SecurityNotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var srcwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 17, 21),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Security notifications',
          style: TextStyle(
            color: Colors.white,
            fontSize: srcwidth * 0.048,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 0.5,
            color: Color.fromARGB(255, 31, 43, 50),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: srcwidth * 0.05,
              horizontal: srcwidth * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  color: Color.fromRGBO(0, 215, 88, 1.0),
                  size: srcwidth * 0.18,
                ),
                SizedBox(height: srcwidth * 0.04),
                Row(
                  children: [
                    Text(
                      'Your chats and calls are private',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: srcwidth * 0.05,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: srcwidth * 0.02),
                Row(
                  children: [
                    Text(
                      '''End-to-end encryption keeps your personal 
messages and calls between you and the 
people you choose. Not even WhatsApp can 
read or listen to them. This includes your:''',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: srcwidth * 0.038,
                        height: 1.4,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: srcwidth * 0.05),
                Row(
                  children: [
                    Icon(Icons.message_outlined, color: Color.fromRGBO(0, 215, 88, 1.0), size: srcwidth * 0.06),
                    SizedBox(width: srcwidth * 0.03),
                    Expanded(
                      child: Text(
                        'Text and voice messages',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: srcwidth * 0.042,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: srcwidth * 0.03),
                Row(
                  children: [
                    Icon(Icons.call, color: Color.fromRGBO(0, 215, 88, 1.0), size: srcwidth * 0.06),
                    SizedBox(width: srcwidth * 0.03),
                    Expanded(
                      child: Text(
                        'Audio and video calls',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: srcwidth * 0.042,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: srcwidth * 0.03),
                Row(
                  children: [
                    Icon(Icons.attach_file, color: Color.fromRGBO(0, 215, 88, 1.0), size: srcwidth * 0.06),
                    SizedBox(width: srcwidth * 0.03),
                    Expanded(
                      child: Text(
                        'Photos, videos and documents',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: srcwidth * 0.042,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: srcwidth * 0.03),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: Color.fromRGBO(0, 215, 88, 1.0), size: srcwidth * 0.06),
                    SizedBox(width: srcwidth * 0.03),
                    Expanded(
                      child: Text(
                        'Location sharing',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: srcwidth * 0.042,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: srcwidth * 0.03),
                Row(
                  children: [
                    Icon(Icons.update, color: Color.fromRGBO(0, 215, 88, 1.0), size: srcwidth * 0.06),
                    SizedBox(width: srcwidth * 0.03),
                    Expanded(
                      child: Text(
                        'Status updates',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: srcwidth * 0.042,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    
                    Text('Learn more',style: TextStyle(color: Colors.blue , fontWeight:FontWeight.bold
                    ),),
                  ],
                )
              ],
            ),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.white12,
          ),
          Padding(
            padding: EdgeInsets.all(srcwidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Show security notifications on this device',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.045,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: srcwidth * 0.02),
                Text(
                  "Get notified when your security code changes for a contact's phone in an end-to-end encrypted chat. If you have multiple devices, this setting must be enabled on each device where you want to get notifications.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: srcwidth * 0.038,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: srcwidth * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Learn more',
                      style: TextStyle(
                        color: Color(0xFF00A884),
                        fontSize: srcwidth * 0.042,
                      ),
                    ),
                    Switch(
                      value: false,
                      onChanged: (value) {},
                      activeColor: Color(0xFF00A884),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
