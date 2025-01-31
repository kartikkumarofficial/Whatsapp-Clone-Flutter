import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NewCommunityPage extends StatefulWidget {

  const NewCommunityPage({super.key});

  @override
  State<NewCommunityPage> createState() => _NewCommunityPageState();
}

class _NewCommunityPageState extends State<NewCommunityPage> {
  final TextEditingController communitycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'New community',
          style: TextStyle(
            color: Colors.white,
            fontSize: srcwidth * 0.048,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 11, 17, 21),
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              // physics: const BouncingScrollPhysics(),
              children: [
                Divider(
                  thickness: 0.5,
                  color: Color.fromARGB(255, 31, 43, 50),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 15),
                  child: RichText(
                      text: TextSpan(
                          style:TextStyle(fontSize: srcwidth*0.035)
                          ,children: [
                        TextSpan(
                          text: '                      See examples',
                          style: TextStyle(color: Colors.lightBlueAccent),
                        ),
                        TextSpan(
                          text:  ' of different communities ',
                          style: TextStyle(color: Colors.grey),
                        ),


                      ]
                      )),
                ),
                Divider(
                  thickness: 0.5,
                  color: Color.fromARGB(255, 31, 43, 50),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top:Get.height*0.04),
                      child: Center(
                        child: Container(
                          child: Icon(CupertinoIcons.person_3_fill,color: Colors.white,size: srcwidth*0.27,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey,
                          ),

                          height: Get.height*0.18,
                          width: Get.height*0.18,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -7,
                      right: srcwidth*0.29,
                      child: CircleAvatar(
                        radius: srcheight*0.026,
                        backgroundColor: Color.fromARGB(255, 11, 17, 21),
                        child: CircleAvatar(
                          radius: srcheight * 0.024,
                          backgroundColor: Color.fromRGBO(32,194,93,1.0),
                          child: Icon(
                          Icons.downloading,
                            color: Colors.white,
                            size: 26,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('''Change photo''',style: TextStyle(color: Colors.grey,fontSize: srcwidth*0.04),textAlign: TextAlign.center,),
                ),

                Padding(
                  padding:  EdgeInsets.only(left: srcwidth*0.07,top: srcwidth*0.04),
                  child: Text('Community name',style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: Get.height*0.04),
                  child: Row(
                    children: [
                      Padding(
                          padding:  EdgeInsets.only(left: Get.height*0.03,),
                      ),
                      Expanded(child: buildInputField('',communitycontroller )),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: Get.height*0.04,top: srcwidth*0.1),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: Get.height*0.03,),
                      ),
                      Expanded(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Community Description',
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                              ),
                            ),


                      )),



                    ],
                  ),
                ),





              ],
            ),
          ),
          Positioned(
              height: srcwidth*0.15,
              width: srcwidth*0.15,
              bottom: srcwidth*0.06,
              right: srcwidth*0.04,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(srcwidth*0.05)
                  ),
                  padding: EdgeInsets.all(16),
                  backgroundColor: Colors.green,
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: srcwidth*0.065,

                ),)

          ),
        ],
      ),
    );
  }}
Widget buildInputField(String hintText, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: TextField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
      ),
    ),
  );
}