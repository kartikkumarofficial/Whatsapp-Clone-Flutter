import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListsPage extends StatefulWidget {
  const ListsPage({super.key});

  @override
  State<ListsPage> createState() => _ListsPageState();
}

class _ListsPageState extends State<ListsPage> {
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
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.edit_outlined,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {
              },
            ),
          ),

        ],
        backgroundColor: Color.fromARGB(255,11,17,21),
        title: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: const Text(
            'Lists',
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
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Image.asset('assets/images/lists.png',height: srcheight*0.1,),
            Center(child: Text('Any list you create becomes a filter at top of',style: TextStyle(color: Colors.grey),)),
            Center(child: Text('your Chats tab.',style: TextStyle(color: Colors.grey),)),
            SizedBox(
              width: srcwidth*0.4,
              child: Padding(
                padding:  EdgeInsets.only(left: srcwidth*0.14,right: srcwidth*0.14,top: srcwidth*0.07),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(1,54,40,1.0)
                  ),
                    onPressed: (){},
                    child: Text('+ Create a custom list',style: TextStyle(color: Color.fromRGBO(202,248,201,1.0)),)),
              ),
            ),
            SizedBox(height: srcwidth*0.04,),
            Divider(
              // height: srcwidth*0.1,
              thickness: srcwidth*0.02,
              color: Color.fromRGBO(18,24,29,1.0),
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth*0.07,top: srcwidth*0.04),
              child: Text('Your lists',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
            ),
            ListTile(

              title: Padding(
                padding:  EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Unread',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Preset',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
                print('Tapped on Manage Storage');
              },
            ),
            ListTile(

              title: Padding(
                padding:  EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Favourites',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Add people or groups',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
                print('Tapped on Manage Storage');
              },
            ),
            ListTile(

              title: Padding(
                padding:  EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Groups',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: srcwidth * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: srcwidth*0.025),
                child: Text('Preset',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
                print('Tapped on Manage Storage');
              },
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth*0.07,top: srcwidth*0.04),
              child: Text('Available Presets',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: srcwidth*0.07,),
            Center(child: Text('If you remove a preset list like Unread or Groups, it will',style: TextStyle(fontSize: 12,color: Colors.grey),)),
            Center(child: Text('become available here.',style: TextStyle(color: Colors.grey,fontSize: 12),)),





          ],
        ),
      ),
    );
  }
  }

