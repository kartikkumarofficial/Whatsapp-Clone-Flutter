// custom_bottom_navigation_bar.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/Controllers/controllers.dart';


class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int) onTabSelected;
  final int currentIndex;

  const CustomBottomNavigationBar({
    Key? key,
    required this.onTabSelected,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => widget.onTabSelected(index),
      currentIndex: widget.currentIndex,
      backgroundColor: Color.fromARGB(255, 6, 21, 28),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Updates'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Communities'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
      ],
    );
  }
}


class utils{
  SwitchController switchController = Get.put(SwitchController());
  bool flag = true;
  Widget getxswitch(){
    return Obx(()=>Switch(
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


        }));







  }

}

class ThemeController extends GetxController {
  var selectedOption = "Dark".obs;

  void setOption(String value) {
    selectedOption.value = value;
  }
}



class ThemeManager{
  final ThemeController themeController = Get.put(ThemeController());

  void themedialogopener() {
    Get.defaultDialog(
      radius: 40,
      backgroundColor: Color.fromARGB(255,43,46,51),
      title: 'Choose theme',titlePadding: EdgeInsets.only(right: Get.height*0.16,top: Get.width*0.07),
      titleStyle: TextStyle(color: Colors.white ,fontSize:20 ),
      content: Stack(
        children: [
          Container(
            width: Get.width*0.9,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "System default",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("System default", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "light",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Light", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "Dark",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Dark", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),


              ],
            ),
          ),
        ],
      ),
      onConfirm: () {
        print("Selected Option: ${themeController.selectedOption.value}");
        Get.back();
      },
      onCancel: () {
        Get.back();
      },
      textCancel: 'No',
      textConfirm: 'Yes',
      confirm: TextButton(
        onPressed: () {
          print("Confirmed Selection: ${themeController.selectedOption.value}");
          Get.back();
        },
        child: Text('OK', style: TextStyle(color: Colors.green)),
      ),
      cancel: Padding(
        padding:  EdgeInsets.only(left: 150.0,bottom: 5),
        child: TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text('Cancel', style: TextStyle(color: Colors.green)),
        ),
      ),
    );
  }
}

