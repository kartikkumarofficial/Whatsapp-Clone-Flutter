// custom_bottom_navigation_bar.dart

import 'package:flutter/cupertino.dart';
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

  void AppLanguageSheet(){


    Get.bottomSheet(

        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromRGBO(10,17,20,1.0,),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(Get.width*0.04),
                    child: Icon(CupertinoIcons.xmark,color: Colors.grey,),
                  ),
                  Text(' App language',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Divider(
                    thickness: 0.5,
                    color: Color.fromARGB(255, 31, 43, 50),
                  ),



                ],
              )

            ],
          ),
        )
    );
  }

}

class ThemeController extends GetxController {
  var selectedOption = "Dark".obs;

  void setOption(String value) {
    selectedOption.value = value;
  }
}



class ChatsSettingThemeManager{
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
  void fontsizedialogopener() {
    Get.defaultDialog(
      radius: 40,
      backgroundColor: Color.fromARGB(255,43,46,51),
      title: 'Font size',titlePadding: EdgeInsets.only(right: Get.height*0.16,top: Get.width*0.07),
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
                      child: Text("Small", style: TextStyle(color: Colors.white, fontSize: 15)),
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
                      child: Text("Medium", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "Darkk",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Large", style: TextStyle(color: Colors.white, fontSize: 15)),
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

class NotificationsSettingManager{
  final ThemeController themeController = Get.put(ThemeController());

  void vibratedialogopener() {
    Get.defaultDialog(
      radius: 40,
      backgroundColor: Color.fromARGB(255,43,46,51),
      title: 'Vibrate',titlePadding: EdgeInsets.only(right: Get.height*0.23,top: Get.width*0.07),
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
                      value: "Systemdefault",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Off", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
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
                      child: Text("Default", style: TextStyle(color: Colors.white, fontSize: 15)),
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
                      child: Text("Short", style: TextStyle(color: Colors.white, fontSize: 15)),
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
                      child: Text("Long", style: TextStyle(color: Colors.white, fontSize: 15)),
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
  void lightdialogopener() {
    Get.defaultDialog(
      radius: 40,
      backgroundColor: Color.fromARGB(255,43,46,51),
      title: 'Light',titlePadding: EdgeInsets.only(right: Get.height*0.25,top: Get.width*0.07,),
      titleStyle: TextStyle(color: Colors.white ,fontSize:20,fontWeight: FontWeight.bold ),
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
                      child: Text("None", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "White",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("White", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "Darkk",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Red", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "Darkk",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Yellow", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "Darkk",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Green", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "Darkk",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Cyan", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "Darkk",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Blue", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                )),
                Obx(() => Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 0),
                    leading: Radio<String>(
                      value: "Darkk",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Purple", style: TextStyle(color: Colors.white, fontSize: 15)),
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

class StorageAndDataSettingManager{
  final ThemeController themeController = Get.put(ThemeController());

  void mediauploaddialogopener() {
    Get.defaultDialog(
      radius: 40,
      backgroundColor: Color.fromARGB(255,43,46,51),
      title: 'Media upload quality',titlePadding: EdgeInsets.only(right: Get.height*0.08,top: Get.width*0.07),
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
                      value: "Systemdefault",
                      groupValue: themeController.selectedOption.value,
                      onChanged: (String? value) {
                        themeController.setOption(value!);
                      },
                      activeColor: Colors.green,
                    ),
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Standard quality", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                    subtitle: Text('Faster to send, smaller file size',style: TextStyle(color: Colors.white),),
                  ),
                )),
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
                      child: Text("HD quality", style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                      subtitle: Text('Slower to send, can be 6 times larger',style: TextStyle(color: Colors.white),),
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







//made with chatgpt

class MoonSliderThumb extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(25.0, 25.0); // Customize thumb size
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;

    // Paint for the solid green moon
    final Paint moonPaint = Paint()
      ..color = Colors.green // Solid green color
      ..style = PaintingStyle.fill;

    // Paint for the crescent cutout (same as background color)
    final Paint crescentPaint = Paint()
      ..color = Colors.black; // Simulates the cutout effect

    // Draw the solid green moon
    canvas.drawCircle(center, 13.0, moonPaint);

    // Draw the crescent cutout (shifts to the right to form a moon shape)
    canvas.drawCircle(center.translate(5, 0), 10.0, crescentPaint);
  }
}
