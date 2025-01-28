import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BottomSheetOpener {


  void showBottomSheet(BuildContext context) {

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
            color: Color.fromARGB(255,16,25,29,),
          ),

          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              SizedBox(height: 16),
              ListTile(
                leading: CircleAvatar(child:ClipOval(child: Image.asset('assets/images/sus.png',fit: BoxFit.cover,)),  ),
                title: Text("Kartik",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle:Text('1234567890',style: TextStyle(color: Colors.grey),) ,
              trailing: Icon(Icons.check_circle,color: Color.fromRGBO(0,214,85,1.0),),
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: Icon(Icons.add,color: Colors.white,),
                  title: Text("Add account",style: TextStyle(color: Colors.white),),
                  onTap: () {
                        }
                        ),
              ),

            ],
          ),
        );
      },
    );
  }
}