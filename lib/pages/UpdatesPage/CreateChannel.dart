import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CreateChannel {


  void getCreateChannelSheet(){


    Get.bottomSheet(

        Container(
          height: double.infinity,
          decoration: BoxDecoration(
              color: Color.fromRGBO(10,17,20,1.0,),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [

              Container(
                  height: 100,
                  width: 200,
                  child: Image.asset('assets/images/channelimage.png',)),
              Text('Create a channel to reach',style: TextStyle(color: Colors.white,fontSize: 23),),
              Text('unlimited followers',style: TextStyle(color: Colors.white,fontSize: 23),),
              ListTile(
                leading: Icon(CupertinoIcons.globe,color: Colors.white,),
                title: Text('Anyone can discover your channel',style: TextStyle(color: Colors.white,fontSize: 16),),
                subtitle: Text('Channels are public, so anyone can find them and see 30 days of history.',style: TextStyle(color: Colors.grey),),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.eye_slash,color: Colors.white,),
                title: Text('People see your channel, not you',style: TextStyle(color: Colors.white,fontSize: 16),),
                subtitle: Text('''Followers can't see your phone number, profile picture or name,but other admins can.''',style: TextStyle(color: Colors.grey),),
              ),
              ListTile(
                leading: Icon(Icons.security,color: Colors.white,),
                title: Text(''' You're responsible for your channel''',style: TextStyle(color: Colors.white,fontSize: 16),),
                subtitle: RichText(
                  text: TextSpan(
                    text: 'Your channel needs to follow our ',
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                    children: [
                      TextSpan(
                        text: 'guidelines',
                        style: const TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      TextSpan(
                        text: ' and is reviewed against them.',
                        style: const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
              ),


              ),
              Row(

                children: [
                  Container(
                    height: Get.height*0.08,
                    width: Get.width,

                    color: Color.fromRGBO(30,39,43,1.0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
                      child: Container(
                        // height: Get.height*0.4,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SizedBox(
                          height: 150,
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(32,192,98,1.0),
                            ),
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),),
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        )
    );
  }

}