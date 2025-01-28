

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePhotoPrivacyController extends GetxController {
  var selectedOption = 'Everyone'.obs;
}

class ProfilePhotoPrivacyScreen extends StatelessWidget {
  final ProfilePhotoPrivacyController controller = Get.put(ProfilePhotoPrivacyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile photo'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Who can see my Profile Photo',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
            Obx(() => Column(
              children: [
                _buildRadioTile('Everyone'),
                _buildRadioTile('My contacts'),
                _buildRadioTile('My contacts except...'),
                _buildRadioTile('Nobody'),
              ],
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioTile(String value) {
    return Obx(() => RadioListTile(
      title: Text(value),
      value: value,
      groupValue: controller.selectedOption.value,
      onChanged: (val) {
        controller.selectedOption.value = val.toString();
      },
      activeColor: Colors.green,
    ));
  }
}
