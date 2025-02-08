import 'package:flutter/cupertino.dart';
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                        width: Get.width*0.44,
                      height: Get.width*0.4,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.red,
                        image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/images/wallpaper/brightwallpaper.jpg',)),

                      ),
                      // child:Image.asset('assets/images/wallpaper/brightwallpaper.jpg',fit: BoxFit.fill,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      width: Get.width*0.44,
                      height: Get.width*0.4,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.red,
                        image: DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/images/wallpaper/darkwallpaperr.jpg',)),

                      ),
                      // child:Image.asset('assets/images/wallpaper/brightwallpaper.jpg',fit: BoxFit.fill,),
                    ),
                  ),

                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.width*0.05,top: Get.width*0.03),
                    child: Text(' Bright',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width*0.37,top: Get.width*0.03),
                    child: Text('  Dark',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      width: Get.width*0.44,
                      height: Get.width*0.4,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.red,
                        image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/images/wallpaper/solidwallpaper.jpg',)),

                      ),
                      // child:Image.asset('assets/images/wallpaper/brightwallpaper.jpg',fit: BoxFit.fill,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      width: Get.width*0.44,
                      height: Get.width*0.4,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                        image: DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/images/wallpaper/myphotowallpaper.jpg',)),

                      ),
                      // child:Image.asset('assets/images/wallpaper/brightwallpaper.jpg',fit: BoxFit.fill,),
                    ),
                  ),

                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.width*0.05,top: Get.width*0.03),
                    child: Text(' Solid colors',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width*0.25,top: Get.width*0.03),
                    child: Text('      My photos',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(CupertinoIcons.photo,color: Colors.green,),
                  title: Text('Default wallpaper',style: TextStyle(color: Colors.white),),
                ),
              )






            ],
          ),
        ),
      ),
    );
  }
}
