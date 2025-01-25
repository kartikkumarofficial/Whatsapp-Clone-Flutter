import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "";
  String about = "Relaxing";
  String phone = "1234567890";

  void _updateName(String newName) {
    setState(() {
      name = newName;
    });
  }

  void _updateAbout(String newAbout) {
    setState(() {
      about = newAbout;
    });
  }

  void _updatePhone(String newPhone) {
    setState(() {
      phone = newPhone;
    });
  }

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
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 11, 17, 21),
        title: const Padding(
          padding: EdgeInsets.only(top: 3),
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 11, 17, 21),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            const Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Column(
              children: [
                SizedBox(height: srcwidth * 0.08),
                Center(
                  child: CircleAvatar(
                    radius: srcheight * 0.1,
                    child: Image.asset('assets/images/meta.png'),
                  ),
                ),
                const SizedBox(height: 20),
                EditableListTile(
                  name: name,
                  onNameChanged: _updateName,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: srcwidth*0.14,right: srcwidth*0.02),
                  child: Text('This is not your username or pin. '
                      'This name will be visible to your whatsapp contacts',
                  style: TextStyle(color: Colors.grey,fontSize: 13),),
                ),
                EditableListTileAbout(
                  about: about,
                  onAboutChanged: _updateAbout,
                ),
                EditableListTilePhone(
                  phone: phone,
                  onPhoneChanged: _updatePhone,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EditableListTile extends StatelessWidget {
  final String name;
  final Function(String) onNameChanged;

  const EditableListTile({
    Key? key,
    required this.name,
    required this.onNameChanged,
  }) : super(key: key);

  void _showEditNameBottomSheet(BuildContext context) {
    TextEditingController controller = TextEditingController(text: name);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(18, 25, 28, 1.0),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'Enter your name',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )),
                TextField(
                  style: TextStyle(color: Colors.white),
                  controller: controller,
                  decoration: const InputDecoration(),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.only(left: Get.height*0.27),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.green, fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        width: Get.width * 0.1,
                      ),
                      InkWell(
                          onTap: () {
                            onNameChanged(controller.text);
                            Get.back();
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Colors.green, fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.person_outline,
        color: Colors.grey,
      ),
      title: const Text(
        'Name',
        style: TextStyle(color: Colors.grey),
      ),
      subtitle: Text(
        name,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      trailing: const Icon(Icons.edit, color: Colors.green),
      onTap: () => _showEditNameBottomSheet(context),
    );
  }
}

class EditableListTileAbout extends StatelessWidget {
  final String about;
  final Function(String) onAboutChanged;

  const EditableListTileAbout({
    Key? key,
    required this.about,
    required this.onAboutChanged,
  }) : super(key: key);

  void _showEditAboutBottomSheet(BuildContext context) {
    TextEditingController controller = TextEditingController(text: about);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(18, 25, 28, 1.0),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'Enter about yourself',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )),
                TextField(
                  style: TextStyle(color: Colors.white),
                  controller: controller,
                  decoration: const InputDecoration(),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding:EdgeInsets.only(left: Get.height*0.27),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.green, fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        width: Get.width * 0.1,
                      ),
                      InkWell(
                          onTap: () {
                            onAboutChanged(controller.text);
                            Get.back();
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Colors.green, fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.info_outline,
        color: Colors.grey,
      ),
      title: const Text(
        'About',
        style: TextStyle(color: Colors.grey),
      ),
      subtitle: Text(
        about,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      trailing: const Icon(Icons.edit, color: Colors.green),
      onTap: () => _showEditAboutBottomSheet(context),
    );
  }
}

class EditableListTilePhone extends StatelessWidget {
  final String phone;
  final Function(String) onPhoneChanged;

  const EditableListTilePhone({
    Key? key,
    required this.phone,
    required this.onPhoneChanged,
  }) : super(key: key);

  void _showEditPhoneBottomSheet(BuildContext context) {
    TextEditingController controller = TextEditingController(text: phone);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(18, 25, 28, 1.0),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      'Enter your phone number',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )),
                TextField(
                  keyboardType: TextInputType.phone,
                  style: TextStyle(color: Colors.white),
                  controller: controller,
                  decoration: const InputDecoration(),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.only(left: Get.height*0.27),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.green, fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        width: Get.width * 0.1,
                      ),
                      InkWell(
                          onTap: () {
                            onPhoneChanged(controller.text);
                            Get.back();
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Colors.green, fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.phone,
        color: Colors.grey,
      ),
      title: const Text(
        'Phone',
        style: TextStyle(color: Colors.grey),
      ),
      subtitle: Text(
        phone,
        style: const TextStyle(fontSize: 15, color: Colors.white),
      ),
      trailing: const Icon(Icons.edit, color: Colors.green),
      onTap: () => _showEditPhoneBottomSheet(context),
    );
  }
}
