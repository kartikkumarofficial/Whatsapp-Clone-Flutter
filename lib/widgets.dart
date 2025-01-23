// custom_bottom_navigation_bar.dart

import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final Function(int) onTabSelected;
  final int currentIndex;

  const CustomBottomNavigationBar({
    Key? key,
    required this.onTabSelected,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => widget.onTabSelected(index),
      currentIndex: widget.currentIndex,
      backgroundColor: Color.fromARGB(255, 6, 21, 28),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Updates'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Communities'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
      ],
    );
  }
}


class getxswitch{
  Widget build {
    return Obx(()=>Switch(
  activeTrackColor: Colors.green,
  activeColor: Colors.black,
  inactiveTrackColor: Color.fromRGBO(17,25,28,1.0),
  inactiveThumbColor: Colors.grey,

  value: switchController.dataforcalls.value,
  onChanged: (value){
  print('Switch Value: $value');
  switchController.dataforcalls(value);
  if (value=true){


  }else if(value=false){

  }


  })), in a seperate file
}

}