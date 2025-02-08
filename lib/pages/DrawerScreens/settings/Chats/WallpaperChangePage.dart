import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/Controllers/WallpaperController.dart';


class WallpaperChangePage extends StatefulWidget {
  WallpaperChangePage({super.key});

  @override
  State<WallpaperChangePage> createState() => _WallpaperChangePageState();
}

class _WallpaperChangePageState extends State<WallpaperChangePage> {
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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
        ],

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
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                          
                    ),
                    child:Image.asset(),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.width*0.07,top: Get.width*0.04),
                    child: Text('Wallpaper Dimming',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                  ),
                ],
              ),






            ],
          ),
        ),
      ),
    );
  }
}
