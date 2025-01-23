import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/pages/constants/constants.dart';
import 'package:whatsappclone/Controllers/controllers.dart';


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
              thickness: 1,
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

              title: Text('Use less data for calls',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: srcwidth * 0.04,
                ),),
              trailing: Obx(()=>Switch(

                activeTrackColor: Colors.green,
                activeColor: Colors.black,
                inactiveTrackColor: Color.fromRGBO(17,25,28,1.0),
                inactiveThumbColor: Colors.grey,

                  value: switchController.dataforcalls.value,
                  onChanged: (value){
                    print('Switch Value: $value');
                    switchController.dataforcalls(value);
                    if (value=true){


                    }else if(value=false){

                    }


                  })),
              onTap: (){
                print('Changed value for using data for calls');
              },
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




          ],
        ),
      ),
    );
  }
}
