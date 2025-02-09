import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/CustomWidgets/widgets.dart';

import '../../../Controllers/controllers.dart';

class AppUpdateSettings extends StatefulWidget {
  @override
  State<AppUpdateSettings> createState() => _AppUpdateSettingsState();

}

class _AppUpdateSettingsState extends State<AppUpdateSettings> {
  SwitchController switchController = Get.put(SwitchController());
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('        App update settings' , style: TextStyle( fontWeight: FontWeight.bold ,fontSize: 20, ),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
               Padding(
                 padding: EdgeInsets.only(left: srcwidth*0.04),
                 child: Text(
                  'App updates',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                               ),
               ),
              const SizedBox(height: 16),
              ListTile(

                title: Text('Auto-update Whatsapp',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: srcwidth * 0.04,
                    fontWeight: FontWeight.bold
                  ),),
                trailing : Obx(()=>Switch(
            activeTrackColor: Colors.lightBlueAccent.withOpacity(0.1),
            activeColor: Colors.blue,
            inactiveTrackColor: Colors.grey.withOpacity(0.2),
            inactiveThumbColor: Colors.white,


            value: switchController.dataforcalls.value,
            onChanged: (value){
              print('Switch Value: $value');
              switchController.dataforcalls(value);
              if (value=true){


              }else if(value=false){

              }


            })),
                  subtitle: Text('Automatically download app updates',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),

                onTap: (){
                  print('Changed value for using data for calls');
                },
              ),
              ListTile(

                title: Text('Auto updates over any network',
                  style: TextStyle(
                      color: Color.fromRGBO(190,190,191,1.0),
                      fontSize: srcwidth * 0.04,
                      fontWeight: FontWeight.bold
                  ),),
                trailing : Obx(()=>Switch(
                    activeTrackColor: Colors.lightBlueAccent.withOpacity(0.1),
                    activeColor: Colors.blue,
                    inactiveTrackColor: Colors.grey.withOpacity(0.2),
                    inactiveThumbColor: Colors.white,


                    value: switchController.dataforcalls.value,
                    onChanged: (value){
                      print('Switch Value: $value');
                      switchController.dataforcalls(value);
                      if (value=true){


                      }else if(value=false){

                      }


                    })),
                subtitle: Text('Download updates using mobile data when Wi-Fi is not available. Data charges may apply.',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),

                onTap: (){
                  print('Changed value for using data for calls');
                },
              ),
              const Divider(),
              // Notifications Section
               Padding(
                 padding:  EdgeInsets.only(left: srcwidth*0.04),
                 child: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                               ),
               ),
              const SizedBox(height: 16),
              ListTile(

                title: Text('Whatsapp update available',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: srcwidth * 0.04,
                      fontWeight: FontWeight.bold
                  ),),
                trailing : Obx(()=>Switch(
                    activeTrackColor: Colors.lightBlueAccent.withOpacity(0.1),
                    activeColor: Colors.blue,
                    inactiveTrackColor: Colors.grey.withOpacity(0.2),
                    inactiveThumbColor: Colors.white,


                    value: switchController.dataforcalls.value,
                    onChanged: (value){
                      print('Switch Value: $value');
                      switchController.dataforcalls(value);
                      if (value=true){


                      }else if(value=false){

                      }


                    })),
                subtitle: Text('Get notified when updates are available',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),

                onTap: (){
                  print('Changed value for using data for calls');
                },
              ),

            ],
          ),
        ),
      );
  }
}
