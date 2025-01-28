import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BottomSheetOpener {


  void showBottomSheet(BuildContext context) {

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          color: Color.fromARGB(255,11,17,21),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              SizedBox(height: 16),
              ListTile(
                leading: CircleAvatar(child: Image.asset('assets/images/sus.png'),),
                title: Text("Kartik",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle:Text('1234567890',style: TextStyle(color: Colors.grey),) ,
                trailing: Icon(Icons.check_circle,color: Color.fromRGBO(0,214,85,1.0),),
                onTap: () {

                },
              ),
              ListTile(
                leading: Icon(Icons.add,color: Colors.white,),
                title: Text("Add account",style: TextStyle(color: Colors.white),),
                onTap: () {
        }
        ),

            ],
          ),
        );
      },
    );
  }
}