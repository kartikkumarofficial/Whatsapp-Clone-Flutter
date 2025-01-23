import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SwitchController extends GetxController{
  RxBool notifications =false.obs;
  setNotification(bool value){
    notifications.value = value;
  }
}
