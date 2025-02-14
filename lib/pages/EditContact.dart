import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditContactPage extends StatefulWidget {
  const EditContactPage({super.key});

  @override
  State<EditContactPage> createState() => _EditContactPageState();
}

class _EditContactPageState extends State<EditContactPage> {
  final TextEditingController firstnamecontroller = TextEditingController();
  final TextEditingController lastnamecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  String selectedCountry = "+91";
  String selectedAccount = "work.kartikkumar@gmail.com";

  @override
  void initState() {
    super.initState();
    // Retrieve the passed arguments
    final Map<String, dynamic> args = Get.arguments ?? {};
    final String name = args['name'] ?? '';

    // Set the initial text for the first name field
    firstnamecontroller.text = name;
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = Get.arguments ?? {};
    final String image = args['image'] ?? '';

    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 17, 21),
        title: Text(
          'Edit Contact ',
          style: TextStyle(color: Colors.white, fontSize: srcwidth * 0.048),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 11, 17, 21),
        width: double.infinity,
        child: ListView(
          children: [
            // First Name Field
            Padding(
              padding: EdgeInsets.only(right: Get.height * 0.04),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.height * 0.02, right: Get.height * 0.025),
                    child: Icon(Icons.person_outline, color: Colors.grey, size: 24),
                  ),
                  Expanded(child: buildInputField('First name', firstnamecontroller)),
                ],
              ),
            ),

            // Last Name Field
            Padding(
              padding: EdgeInsets.only(right: Get.height * 0.04),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.height * 0.048, right: Get.height * 0.025),
                    // child: Icon(Icons.person_outline, color: Colors.grey, size: 24),
                  ),
                  Expanded(child: buildInputField('Last name', lastnamecontroller)),
                ],
              ),
            ),

            // Phone Number Field with Country Code Dropdown
            Padding(
              padding: EdgeInsets.only(right: Get.height * 0.04),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.height * 0.02, right: Get.height * 0.025),
                    child: Icon(Icons.phone_outlined, color: Colors.grey, size: 24),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Text('Country', style: TextStyle(color: Colors.grey, fontSize: 12), textAlign: TextAlign.left),
                        DropdownButton<String>(
                          value: selectedCountry,
                          dropdownColor: Color.fromARGB(255, 11, 17, 21),
                          style: TextStyle(color: Colors.white),
                          items: ["+91", "+1", "+44", "+61", "+81"]
                              .map((String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                              .toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedCountry = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: buildInputField('Phone', phonecontroller)),
                ],
              ),
            ),

            // Save To Account Dropdown
            Padding(
              padding: EdgeInsets.only(right: Get.height * 0.04),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.height * 0.02, right: Get.height * 0.025),
                    child: Icon(Icons.download_outlined, color: Colors.grey, size: 24),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: DropdownButton<String>(
                      value: selectedAccount,
                      dropdownColor: Color.fromARGB(255, 11, 17, 21),
                      style: TextStyle(color: Colors.white),
                      items: ["work.kartikkumar@gmail.com", "Other account"]
                          .map((String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
                          .toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedAccount = newValue!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Add Information Text
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 8),
                  child: Text(
                    'Add Information',
                    style: TextStyle(color: Color.fromRGBO(1, 194, 87, 1.0), fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            // Save Button
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.48),
              child: Row(
                children: [
                  Container(
                    height: Get.height * 0.08,
                    width: Get.width,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                      child: SizedBox(
                        height: 150,
                        width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(1, 194, 87, 1.0),
                          ),
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Input Field Widget
Widget buildInputField(String hintText, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: TextFormField(
      controller: controller,  // Ensure controller is used
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
