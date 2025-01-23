import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SwitchController extends GetxController{
  RxBool dataforcalls =false.obs;
  setNotification(bool value){
    dataforcalls.value = value;
  }
}
