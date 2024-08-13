import 'package:flutter/material.dart';

import 'code_verify.dart';

class PhoneVerify extends StatefulWidget {
  static String routeName = '/PhoneVerify';
  const PhoneVerify({Key? key}) : super(key: key);

  @override
  State<PhoneVerify> createState() => _PhoneVerifyState();
}

class _PhoneVerifyState extends State<PhoneVerify> {

  TextEditingController phone = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.orange,
        title: Text("Welcom to My Phone OTP"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              // color: Colors.pinkAccent,
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 80.0,
                    backgroundImage: AssetImage(
                        "images/1519952395777.jpg"),
                  ),
                  Text("TurboTech Mobile",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Sign in to Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 422,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 30.0,
                    left: 30.0,
                    top: 50.0
                ),
                child: Column(
                  children: [
                    Container(
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Center(
                                child: Text("+855",
                                  style:TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ) ,
                                ),
                              )
                          ),
                          Expanded(
                            flex: 4,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: phone,
                              obscureText: false,
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 3.0,
                                    color: Colors.orange,
                                  ),
                                ),
                                // hintStyle: TextStyle(
                                //   color: Colors.black,
                                //   fontWeight: FontWeight.bold,
                                // ),
                                // labelText: 'Phone Number',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context)=> CodeVerify(phoneNumber: phone.text.toString()),
                                ),
                              );
                            },
                            child: Text("Verify Phone Number",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
