import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CreateChannel {


  void getCreateChannelSheet(){


    Get.bottomSheet(

        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(10,17,20,1.0,),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [

              Container(
                  height: 150,
                  width: 100,
                  child: Image.asset('assets/images/channelimage.png',)),
              Text('Create a channel to reach',style: TextStyle(color: Colors.white),)


            ],
          ),
        )
    );
  }

}