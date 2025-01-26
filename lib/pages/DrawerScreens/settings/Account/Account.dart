import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Account/SecurityNotifications.dart';


class AccountPage extends StatefulWidget {


  AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  List<String> accountpagelist=['Security notifications','Passkeys','Email address',
    'Two-step verification','Change number','Request account info','Add account','Delete account'];

  List accountpageicons=[Icon(Icons.security,color: Colors.white60,),Icon(Icons.person,color: Colors.white60),Icon(Icons.email_outlined,color: Colors.white60)
    ,Icon(Icons.password,color: Colors.white60),Icon(Icons.phone_android_rounded,color: Colors.white60),Icon(Icons.document_scanner,color: Colors.white60),
    Icon(Icons.person_add_alt_1_outlined,color: Colors.white60),Icon(Icons.delete_outlined,color: Colors.white60)];
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
          'Account',
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
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListView.builder(
              shrinkWrap: true,

              itemCount: accountpagelist.length,
                itemBuilder:(context, index) {
                  return ListTile(
                    leading: accountpageicons[index],
                    title: Text(accountpagelist[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: srcwidth * 0.04,
                      ),),
                    onTap: (){
                      print('Tapped on ${accountpagelist[index]}');
                      if(accountpagelist[index]=='Security notifications'){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecurityNotificationsPage(),));
                      }
                      else if(accountpagelist[index]=='Storage and data'){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecurityNotificationsPage(),));
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




