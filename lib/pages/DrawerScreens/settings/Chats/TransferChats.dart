import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TransferChatsPage extends StatefulWidget {
  const TransferChatsPage({super.key});

  @override
  State<TransferChatsPage> createState() => _TransferChatsPageState();
}

class _TransferChatsPageState extends State<TransferChatsPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          '',
          style: TextStyle(
            color: Colors.white,
            fontSize: srcwidth * 0.048,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(color: Colors.grey,Icons.more_vert))
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 11, 17, 21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(

          children: [
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Image.asset('assets/images/transferchats.png',height: srcheight*0.15,),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('''Transfer chat history to Android
phone''',style: TextStyle(color: Colors.white,fontSize: srcwidth*0.06),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.height*0.025,right: Get.height*0.025),
              child: Text('Transfer your chat history privately and have your most up-to-date messages without using Google storage. Certain device permissions are needed to connect to your new device.'
                  ,style:TextStyle(color: Colors.grey) ,textAlign: TextAlign.center,),
            ),
            Padding(
              padding:  EdgeInsets.only(top:srcwidth*0.75),
              child: Row(

                children: [
                  Container(
                    height: Get.height*0.08,
                    width: Get.width,

                    // color: Color.fromRGBO(30,39,43,1.0),
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
                              'Start',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(

              children: [
                Container(
                  height: Get.height*0.08,
                  width: Get.width,

                  // color: Color.fromRGBO(30,39,43,1.0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,bottom: 30),
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                              side: BorderSide(
                                color: Colors.blueGrey,
                                width: 0.3,
                              )
                            ),


                            backgroundColor: Color.fromARGB(255, 11, 17, 21),
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: Color.fromRGBO(32,192,98,1.0), fontWeight: FontWeight.bold),
                          ),
                        ),),
                    ),
                  ),
                )
              ],
            )



          ],
        ),
      ),
    );
  }}
