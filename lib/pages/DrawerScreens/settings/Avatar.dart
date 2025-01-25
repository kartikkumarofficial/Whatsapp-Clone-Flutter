import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({super.key});

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  @override
  Widget build(BuildContext context) {

    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

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
            'Avatar',
            style: TextStyle(
              fontSize:23,
              color: Colors.white,
            ),
          ),
        ),

      ),
      body: Container(
        color:Color.fromARGB(255,11 ,17,21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          // physics: const BouncingScrollPhysics(),
          children: [

            Stack(
              children: [
                Container(
                    color: Colors.black,
                    child: Image.asset('assets/images/avatar.png',width: srcwidth,)),

                Positioned(
                    bottom: srcwidth*0.05,
                    right: srcwidth*0.04,
                    height: srcwidth*0.1,
                    width: srcwidth*0.1,

                    child: Container(
                      decoration: BoxDecoration(
                          color:Color.fromRGBO(28,41,42,1.0),
                          borderRadius: BorderRadius.circular(12)

                      ),
                      child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined,color: Colors.white,))),


                    )),
              ],
            ),
            SizedBox(height: 10,),

            ListTile(

              title: Padding(
                padding:  EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Browse stickers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              onTap: (){
                // print('Tapped on Manage Storage');
              },
            ),

            ListTile(

              title: Padding(
                padding:  EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Create profile photo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),

              onTap: (){

              },
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),

            ListTile(

              title: Padding(
                padding:  EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Learn More',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: srcwidth * 0.04,
                      decoration: TextDecoration.underline
                  ),),
              ),

              onTap: (){
              },

            ),


            ListTile(

              title: Padding(
                padding:  EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Delete Avatar',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),

              onTap: (){

              },
            ),



          ],
        ),
      ),
    );
  }
}
