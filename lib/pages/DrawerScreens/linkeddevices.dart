import 'package:flutter/material.dart';



class LinkedDevicesPage extends StatefulWidget {
  const LinkedDevicesPage({super.key});

  @override
  State<LinkedDevicesPage> createState() => _LinkedDevicesPageState();
}

class _LinkedDevicesPageState extends State<LinkedDevicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linked devices'),
      ),
    );
  }
}
