import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/Controllers/WallpaperController.dart';
import 'package:whatsappclone/pages/DrawerScreens/settings/Chats/WallpaperChangePage.dart';

import '../../../../widgets.dart';


class WallpaperPage extends StatefulWidget {
  WallpaperPage({super.key});

  @override
  State<WallpaperPage> createState() => _WallpaperPageState();
}

class _WallpaperPageState extends State<WallpaperPage> {
  // Instantiate the OpacityController
  final OpacityController opacityController = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
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
            'Dark Theme Wallpaper',
            style: TextStyle(
              fontSize:23,
              color: Colors.white,
            ),
          ),
        ),

      ),
      body: Container(
        color: Color.fromARGB(255,11 ,17,21),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                height: 20,
              ),
              Obx(() => Opacity(
                opacity: opacityController.opacity.value,
                child: Container(
                  child: Image.asset('assets/images/wallpaper/wallpaperimage.png'),
                  // color: Colors.red.withOpacity(opacityController.opacity.value),
                  height: Get.height*0.55,
                  // width: 300,
                ),
              )),
              SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Get.to(WallpaperChangePage());
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Change',style: TextStyle(color:Color.fromRGBO(0,194,87,1.0,) ),),
                ),
              ),

              Divider(
                thickness: 0.5,
                color: Color.fromARGB(255, 31, 43, 50),
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.width*0.07,top: Get.width*0.04,bottom: Get.height*0.01),
                    child: Text('Wallpaper Dimming',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                  ),
                ],
              ),



              Obx(() => SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbShape: MoonSliderThumb(),
                ),
                child: Slider(
                  value: 1.0 - opacityController.opacity.value,
                  min: 0.0,
                  max: 1.0,
                  activeColor: Colors.green,

                  label: (1.0 - opacityController.opacity.value).toStringAsFixed(1),
                  onChanged: (value) {
                    double reversedValue = 1.0 - value;
                    print('Slider Value: $reversedValue');
                    opacityController.setOpacity(reversedValue);
                  },
                ),
              )),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('To change your wallpaper for light theme, turn on light theme from Display Settings>Chats>Theme',
                  style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}






