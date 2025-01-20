import 'package:flutter/material.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    List<String> arrNames = [
      'Bunty ka Sabun', 'Drake', 'Dholak Wala Babu',
      'Golu ka Golgappa', 'Shivlayz', 'hmm...',
      'Jintu ka Jadoo', 'Lassi ka Bunda', 'Bhai ka Biryani', 'Pillu ka Pataka'
    ];
    List<String> arrFreqContactedNames = [
      'Supreme Leader', 'Mummy', 'Bhai', 'Koi toh hai', 'Pata nahi kon',
    ];
    List<String> arrMessages = [
      'Code karo, aish karo.', 'Life ka code debug ho raha hai.',
      'Kaam chalu hai, disturb mat kar.',
      'Coffee first, baaki baad mein.',
      'Abhi offline, phir milte hain.', 'Dream big, sleep more.',
      'Life in progress, please wait...',
      'Na yaar, ho gaya ab.', 'Padh lo beta, samay kam hai.',
      'Duniya jalti hai mere skills pe.', 'Main mast, tu dust.',
      'Beta, chill maar zyada tension nahi.', 'Zindagi ko optimize kar raha hoon.',
      'Hustle ho raha hai, aur kya?', 'Aaj mood off hai.', 'Suno, time kam hai.',
    ];
    List<Image> arrImages = [
      Image.asset('assets/images/chatpage/father.jpg'),
      Image.asset('assets/images/chatpage/mother.jpg'),
      Image.asset('assets/images/chatpage/bro.jpg'),
      Image.asset('assets/images/chatpage/mfriend.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/frndgrp.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/mfriend.jpg'),
      Image.asset('assets/images/chatpage/ffriend.jpg'),
      Image.asset('assets/images/chatpage/bro2.jpg'),
    ];

    var phoneNumber = '+91 38782678';


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
        backgroundColor: const Color.fromARGB(255, 7, 21, 29),
        title: Column(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Payments',
                style: TextStyle(
                  fontSize: srcwidth * 0.06,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),

      ),
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 7, 21, 29),
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              physics: AlwaysScrollableScrollPhysics() ,
              children: [
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 31, 43, 50),
                ),
                ListTile(
                  leading: CircleAvatar( radius: srcwidth*0.035,backgroundColor: Colors.green,child: Icon(size: srcwidth*0.04,Icons.currency_rupee,)),
                  title: Text('Send payment' , style: TextStyle(color: Colors.white),),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(size: srcwidth*0.072,Icons.qr_code,color: Colors.green,),
                  title: Text('Scan any UPI QR code' , style: TextStyle(color: Colors.white),),
                  onTap: (){},
                ),
                  SizedBox(height: srcwidth*0.02,),
                  Divider(
                    // height: srcwidth*0.1,
                    thickness: srcwidth*0.03,
                    color: Color.fromRGBO(18,24,29,1.0),
                  ),
                Container(
                  height: srcwidth*0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('History',style: TextStyle(color: Colors.green),),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/nopaymenthistorybg.png',height: srcwidth*0.2,color: Colors.grey,)),
                      Align(
                          alignment: Alignment.center,
                          child: Text('No payment history', style: TextStyle(color: Colors.grey),))
                    ],
                  ),
                ),
                Divider(
                  // height: srcwidth*0.1,
                  thickness: srcwidth*0.03,
                  color: Color.fromRGBO(18,24,29,1.0),
                ),
                Container(
                  height: srcwidth*0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Payment Methods',style: TextStyle(color: Colors.green),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          height: srcwidth*0.2,
                          width: srcwidth*0.9,
                          // color: Colors.green,
                          decoration: BoxDecoration(
                            color:Colors.blueGrey,
                            borderRadius: BorderRadius.circular(srcwidth*0.05)
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15,bottom: 20,right: 15),
                                child: Icon(Icons.security,color: Colors.green,),
                              ),
                              Center(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: Colors.white),
                                    children: [
                                      TextSpan(
                                        text: 'To protect your security, Whatsapp does '
                                            '\n not store your UPI PIN or full bank account\n number.',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      TextSpan(
                                        text: 'Learn more',
                                        style: TextStyle(color: Colors.green)
                                      )
                                    ],
                                      ),


                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.add_circle_outline,color: Colors.white,),
                        title: Text('Add payment method',style: TextStyle(color: Colors.white),),
                        onTap: (){},
                      ),

                    ],
                  ),
                ),
                Divider(
                  // height: srcwidth*0.1,
                  thickness: srcwidth*0.03,
                  color: Color.fromRGBO(18,24,29,1.0),
                ),
                ListTile(
                  leading: Icon(Icons.question_mark,color: Colors.white,),
                  title: Text('Help',style: TextStyle(color: Colors.white),),
                  onTap: (){},
                ),
                Divider(
                  // height: srcwidth*0.1,
                  thickness: srcwidth*0.03,
                  color: Color.fromRGBO(18,24,29,1.0),
                ),
                ListTile(
                  leading: Icon(Icons.delete,color: Colors.grey,),
                  title: Text('Remove payments information',style: TextStyle(color: Colors.grey),),
                  onTap: (){},
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
                  Icons.check,
                  color: Colors.black,
                  size: srcwidth*0.065,

                ),)

          ),],
      ),
    );
  }
}

