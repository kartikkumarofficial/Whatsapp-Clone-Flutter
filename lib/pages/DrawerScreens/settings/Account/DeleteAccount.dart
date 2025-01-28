import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeleteAccountPage extends StatefulWidget {
  const DeleteAccountPage({super.key});

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState extends State<DeleteAccountPage> {
  @override
  Widget build(BuildContext context) {
    var srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 17, 21),
        title: const Text(
          'Delete this account',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 11, 17, 21),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: Get.height*0.02,left: srcwidth*0.05),
              child: Row(
                children: const [
                  Icon(Icons.warning_amber_outlined, color: Colors.red),
                  SizedBox(width: 10),
                  Text(
                    'If you delete this account:',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding:  EdgeInsets.only(left: Get.width*0.13),
              child: Text(
                '''• The account will be deleted from WhatsApp and 
   all your devices
• Your message history will be erased
• You will be removed from all your WhatsApp
   groups
• Your Google storage backup will be deleted
• Delete your payments info
• Any channels you created will be deleted''',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
             Padding(
               padding: EdgeInsets.only(left: 14.0),
               child: Padding(
                 padding: EdgeInsets.only(left: Get.width*0.14),
                 child: Divider(
                     color: Color.fromARGB(255, 31, 43, 50)),
               ),
             ),
            ListTile(
              leading: const Icon(Icons.phone_android_outlined, color: Colors.grey),
              title: const Text('Change number instead?',
                  style: TextStyle(color: Colors.white)),
            ),
            Padding(
              padding:  EdgeInsets.only(left: srcwidth*0.14),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text('Change number',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
              ),
            ),
            SizedBox(height: 10,),
            const Divider(color: Color.fromARGB(255, 31, 43, 50)),
            const SizedBox(height: 10),
            Padding(
              padding:  EdgeInsets.only(left: Get.height*0.06,right: Get.height*0.04),
              child: Text(
                'To delete your account, confirm your country code and enter your phone number.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding:EdgeInsets.only(left: Get.height*0.06,right: Get.height*0.04),
              child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: 'Country',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                dropdownColor: Colors.black,
                items: const [
                  DropdownMenuItem(
                    value: 'India',
                    child: Text('India', style: TextStyle(color: Colors.white)),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: Get.height*0.06,right: Get.height*0.04),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixText: '+91 ',
                  prefixStyle: const TextStyle(color: Colors.white),
                  labelText: 'Phone number',
                  labelStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Padding(
                padding:EdgeInsets.only(left: Get.height*0.04,right: Get.height*0.2,),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical:2 , horizontal: srcwidth * 0.023),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text('Delete account',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
