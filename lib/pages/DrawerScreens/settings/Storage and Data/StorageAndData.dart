import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Storage%20and%20Data/Proxy.dart';
import 'package:whatsappclone/pages/constants/constants.dart';
import 'package:whatsappclone/Controllers/controllers.dart';
import 'package:whatsappclone/widgets.dart';


class StorageAndDataScreen extends StatefulWidget {
  @override
  State<StorageAndDataScreen> createState() => _StorageAndDataScreenState();
}

class _StorageAndDataScreenState extends State<StorageAndDataScreen> {
  SwitchController switchController = Get.put(SwitchController());
  bool flag = true;


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
            'Storage and Data',
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
          physics: const BouncingScrollPhysics(),
          children: [
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(Icons.folder_outlined,color: Colors.grey,),
              title: Text('Manage Storage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle: Text('9.4 GB',
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
              onTap: (){
                print('Tapped on Manage Storage');
              },
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(Icons.network_check,color: Colors.grey,),
              title: Text('Network usage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle: Text('4.3 GB sent • 9.5 GB received',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){
                print('Tapped on Network Usage');
              },
            ),
            ListTile(

              title: Padding(
                padding: const EdgeInsets.only(left:37),
                child: Text('Use less data for calls',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              trailing: utils().getxswitch(),

              onTap: (){
                print('Changed value for using data for calls');
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('Proxy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('Off',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
                Get.to(ProxyPage());
              },
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(Icons.hd_outlined,color: Colors.grey,),
              title: Text('Media upload quality',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle: Text('HD quality',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){
                StorageAndDataSettingManager().mediauploaddialogopener();

              },
            ),

            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              title: Text('Media auto-download',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: srcwidth * 0.04,
                ),),
              subtitle: Text('Voice messages are always automatically \ndownloaded',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){


              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('When using mobile data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('All media',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
                print('Tapped on Network Usage');

                //todo make this dialog box and make 3 such boxes
                Get.defaultDialog(

                  radius: 25,

                  backgroundColor: Color.fromRGBO(43,46,51, 1.0),
                  title: 'When using mobile data',
                  titleStyle: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth*0.05
                  ),
                  middleText: 'Are you sure u wanna delete this chat?',
                  onConfirm: () {
                    print('Chat deleted');
                    Get.back(); },
                  onCancel: (){
                    print('Cancelled');
                    Get.back();

                  },
                  contentPadding: EdgeInsets.all(20),
                  textCancel: 'No',
                  textConfirm: 'Yes',
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('OK')),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('Cancel')),


                );
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('When connected on Wi-Fi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('All media',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
                print('Tapped on Network Usage');

                //todo make this dialog box and make 3 such boxes
                Get.defaultDialog(

                  radius: 25,

                  backgroundColor: Color.fromRGBO(43,46,51, 1.0),
                  title: 'When using mobile data',
                  titleStyle: TextStyle(
                      color: Colors.white,
                      fontSize: srcwidth*0.05
                  ),
                  middleText: 'Are you sure u wanna delete this chat?',
                  onConfirm: () {
                    print('Chat deleted');
                    Get.back(); },
                  onCancel: (){
                    print('Cancelled');
                    Get.back();

                  },
                  contentPadding: EdgeInsets.all(20),
                  textCancel: 'No',
                  textConfirm: 'Yes',
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('OK')),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('Cancel')),


                );
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('When roaming',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('No media',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
                print('Tapped on Network Usage');

                //todo make this dialog box and make 3 such boxes
                Get.defaultDialog(

                  radius: 25,

                  backgroundColor: Color.fromRGBO(43,46,51, 1.0),
                  title: 'When using mobile data',
                  titleStyle: TextStyle(
                      color: Colors.white,
                      fontSize: srcwidth*0.05
                  ),
                  middleText: 'Are you sure u wanna delete this chat?',
                  onConfirm: () {
                    print('Chat deleted');
                    Get.back(); },
                  onCancel: (){
                    print('Cancelled');
                    Get.back();

                  },
                  contentPadding: EdgeInsets.all(20),
                  textCancel: 'No',
                  textConfirm: 'Yes',
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('OK')),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text('Cancel')),


                );
              },
            ),






          ],
        ),
      ),
    );
  }
}
