import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NewCommunityIntroPage extends StatefulWidget {
  const NewCommunityIntroPage({super.key});

  @override
  State<NewCommunityIntroPage> createState() => _NewCommunityIntroPageState();
}

class _NewCommunityIntroPageState extends State<NewCommunityIntroPage> {
  @override
  Widget build(BuildContext context) {
    var icon = Icon(Icons.arrow_forward_ios);
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcsize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.grey,
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 11, 17, 21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          // physics: const BouncingScrollPhysics(),
          children: [

            Image.asset('assets/images/newcommunity.png',height: srcheight*0.25,),

            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 10),
              child: Text('''Create a new community''',style: TextStyle(color: Colors.white,fontSize: srcwidth*0.06),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.height*0.025,right: Get.height*0.025),
              child: Center(
                child: Text('Bring together a neighborhood, school or more.Create topic-based groups for members, and easily send them admin announcements.',
                  style: TextStyle(color: Colors.grey,fontSize: 16),textAlign: TextAlign.center,),
              )
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90.0,top: 8),
                  child: Text('See example communities  ',style: TextStyle(color: Colors.lightBlueAccent,fontSize:15,fontWeight: FontWeight.bold ),),
                ),
                Icon(Icons.arrow_forward_ios_rounded,color: Colors.lightBlueAccent,size: 7,),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: Get.height*0.38),
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
                              'Get Started',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),),
                      ),
                    ),
                  )
                ],
              ),
            )




          ],
        ),
      ),
    );
  }}
