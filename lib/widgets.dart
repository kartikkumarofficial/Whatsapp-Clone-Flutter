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
  var selectedOption = "contacts".obs;

  void setOption(String value) {
    selectedOption.value = value;
  }
}



class ThemeManager{
  final ThemeController themeController = Get.put(ThemeController());

  void themedialogopener() {
    Get.defaultDialog(
      backgroundColor: Color.fromARGB(255, 11, 17, 21),
      title: 'Choose Theme',
      titleStyle: TextStyle(color: Colors.white),
      content: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: Container(
          width: Get.width*0.9,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(() => ListTile(
                leading: Radio<String>(
                  value: "System default",
                  groupValue: themeController.selectedOption.value,
                  onChanged: (String? value) {
                    themeController.setOption(value!);
                  },
                  activeColor: Colors.green,
                ),
                title: Text("System default", style: TextStyle(color: Colors.white,fontSize: 15)),
              )),
              Obx(() => ListTile(
                leading: Radio<String>(
                  value: "except",
                  groupValue: themeController.selectedOption.value,
                  onChanged: (String? value) {
                    themeController.setOption(value!);
                  },
                  activeColor: Colors.green,
                ),
                title: Text("Light Theme", style: TextStyle(color: Colors.white,fontSize: 15)),

              )),
              Obx(() => ListTile(
                leading: Radio<String>(
                  value: "share_with",
                  groupValue: themeController.selectedOption.value,
                  onChanged: (String? value) {
                    themeController.setOption(value!);
                  },
                  activeColor: Colors.green,
                ),
                title: Text("Dark Theme", style: TextStyle(color: Colors.white,fontSize: 15)),

              )),
            ],
          ),
        ),
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
      cancel: TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text('Cancel', style: TextStyle(color: Colors.green)),
      ),
    );
  }
}
