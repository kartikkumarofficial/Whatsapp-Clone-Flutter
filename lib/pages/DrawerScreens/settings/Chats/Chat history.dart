import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/AddAccount.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/ChangeNumber.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/DeleteAccount.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/EmailAddress.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/Passkeys.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/RequestAccountInfo.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/SecurityNotifications.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/Two-step%20verification.dart';


class ChatHistoryPage extends StatefulWidget {


  ChatHistoryPage({super.key});

  @override
  State<ChatHistoryPage> createState() => _ChatHistoryPageState();
}

class _ChatHistoryPageState extends State<ChatHistoryPage> {
  List<String> ChatHistoryPagelist=['Export chat', 'Archive all chats', 'Clear all chats', 'Delete all chats'];

  List ChatHistoryPageicons=[Icon(Icons.upload_outlined,color: Colors.white60,),Icon(Icons.get_app_outlined,color: Colors.white60),Icon(CupertinoIcons.clear_circled,color: Colors.white60)
    ,Icon(Icons.delete_outlined,color: Colors.white60),];
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
        backgroundColor: Color.fromARGB(255,11,17,21),
        title: const Text(
          'Chat history',
          style: TextStyle(
            color: Colors.white,
          ),
        ),

      ),
      body: Container(
        color:Color.fromARGB(255,11,17,21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListView.builder(
              shrinkWrap: true,

              itemCount: ChatHistoryPagelist.length,
              itemBuilder:(context, index) {
                return ListTile(
                  leading: ChatHistoryPageicons[index],
                  title: Text(ChatHistoryPagelist[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: srcwidth * 0.04,
                    ),),
                  onTap: (){
                    print('Tapped on ${ChatHistoryPagelist[index]}');
                    if(ChatHistoryPagelist[index]=='Security notifications'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecurityNotificationsPage(),));
                    }
                    else if(ChatHistoryPagelist[index]=='Storage and data'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecurityNotificationsPage(),));
                    }
                    else if(ChatHistoryPagelist[index]=='Passkeys'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PasskeysPage(),));
                    }
                    else if(ChatHistoryPagelist[index]=='Email address'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EmailAddressPage(),));
                    }
                    else if(ChatHistoryPagelist[index]=='Two-step verification'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TwoStepVerificationPage(),));
                    }
                    else if(ChatHistoryPagelist[index]=='Change number'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeNumberPage(),));
                    }
                    else if(ChatHistoryPagelist[index]=='Request account info'){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RequestAccountInfoPage(),));
                    }

                    else if(ChatHistoryPagelist[index]=='Add account'){
                      BottomSheetOpener().showBottomSheet(context);
                    }


                  },

                );
              }, ),


          ],
        ),
      ),
    );
  }
}




