import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Privacy/LastSeenAndOnline.dart';
import 'package:whatsappclone/widgets.dart';


class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
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
            'Privacy',
            style: TextStyle(
              fontSize:23,
              color: Colors.white,
            ),
          ),
        ),

      ),
      body: Container(
        color:Color.fromARGB(255,11,17,21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          // physics: const BouncingScrollPhysics(),
          children: [
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.057, top: srcwidth * 0.02),
              child: Text(
                'Who can see my personal info',
                style: TextStyle(
                    color: Color.fromARGB(255, 135, 145, 147),
                    fontSize: srcwidth * 0.038,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Last seen and online',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),

              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('Nobody',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
                Get.to(LastSeenAndOnlinePage());
              },
            ),

            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Profile photo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('Everyone',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
              },
            ),

            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('About',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('Everyone',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
              },
            ),

            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Status',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              onTap: (){
              },
            ),

            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Read receipts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('''If turned off, you won't send or recieve Read receipts.Read receipts are always sent for group chats. ''' ,
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              trailing: utils().getxswitch(),

              onTap: (){

              },
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.057, top: srcwidth * 0.02),
              child: Text(
                'Disappearing messages',
                style: TextStyle(
                    color: Color.fromARGB(255, 135, 145, 147),
                    fontSize: srcwidth * 0.038,
                    fontWeight: FontWeight.w500),
              ),
            ),

            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Default message timer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('Start new chats with disappearing messages\nset to your timer',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              trailing: Text('Off',style: TextStyle(color: Colors.grey,fontSize: srcwidth*0.035),),
              onTap: (){
              },
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),

            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Groups',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('10 contacts excluded',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
              },
            ),

            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Live Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),

              onTap: (){
              },
            ),

            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Calls',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('Silence unknown callers',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
              },
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Blocked contacts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('44',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
              },
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('App lock',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('Disabled',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
              },
            ),

            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Chat lock',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),

              onTap: (){
              },
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Allow camera effects',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child:RichText(
                    text: TextSpan(
                        style:TextStyle(fontSize: srcwidth*0.035)
                        ,children: [
                      TextSpan(
                        text: 'Use effects in the camera and video calls ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: 'Learn more',
                        style: TextStyle(color: Colors.blue),
                      ),

                    ]
                    ))
              ),

              onTap: (){

              },
            ),
            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Advanced',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('Protect IP address in calls, Disable link previews',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
              },
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),



            ListTile(

              title: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018, ),
                child: Text('Privacy checkup',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.042,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth * 0.018),
                child: Text('Control your privacy and choose the right settings for you.',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
              },
            ),
            SizedBox(height: srcwidth*0.03,),









          ],
        ),
      ),

    );
  }
}
