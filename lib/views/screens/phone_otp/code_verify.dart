import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class CodeVerify extends StatefulWidget {
  // static String routeName = '/CodeVerify';
  final String phoneNumber ;
  const CodeVerify({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<CodeVerify> createState() => _CodeVerifyState();
}

class _CodeVerifyState extends State<CodeVerify> {
  String? _code;
  late bool _onEditing = true;

  TextEditingController codeVerify = TextEditingController();
  var _verificationId = "";

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> fetchOTP() async {
    // print("QQQQQQQ${int.parse(widget.phoneNumber)}");
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+855${widget.phoneNumber}',
      verificationCompleted: (PhoneAuthCredential credential) {
        phoneVerify(credential);
      },
      verificationFailed: (FirebaseAuthException e) {

        print("SSSSSS${e.message}");

        if(e.code == 'invalid-phone-number'){
          // print("ggggg");
          _showSms("Please Verify again");
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
      },
    );
  }

  Future<void> phoneVerify (PhoneAuthCredential phoneAuthCredential) async {
    try{
      final authCredential = await auth.signInWithCredential(phoneAuthCredential);
      if(authCredential.user!=null){
        _showSms("verify Success");
      }
    }
    catch (e){
      _showSms("verify Not Success Please Try Again");
    }
  }
  //verify
  Future<void> _verify() async{
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: _verificationId,
      smsCode: _code!,
      // smsCode: codeVerify.text.toString().trim(),
    );
    phoneVerify(credential);
  }

  // alert message on dialog
  Future<void> _showSms(String txt) async{
    return showDialog(context: context,
        builder: (BuildContext context){
          return AlertDialog(
            content: SingleChildScrollView(
              child: Container(
                child: Center(
                  child: Text("$txt"),
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text("ok"),
              ),
            ],
          );
        }
    );
  }

  @override
  void initState() {
    super.initState();
    fetchOTP();
    // alertSuccess(context,'');
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.blue,
        title: Text("Welcom to My Phone OTP"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250.px,
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
              height: 422.px,
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
                    // plugin package
                    VerificationCode(
                      textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                      keyboardType: TextInputType.number,
                      underlineColor: Colors.amber, // If this is null it will use primaryColor: Colors.red from Theme
                      length: 6,
                      cursorColor: Colors.blue, // If this is null it will default to the ambient
                      // clearAll is NOT required, you can delete it
                      // takes any widget, so you can implement your design
                      clearAll: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'clear all',
                          style: TextStyle(fontSize: 14.0, decoration: TextDecoration.underline, color: Colors.blue[700]),
                        ),
                      ),
                      onCompleted: (String value) {
                        setState(() {
                          _code = value;
                        });
                      },
                      onEditing: (bool value) {
                        setState(() {
                          _onEditing = value;
                        });
                        if (!_onEditing) FocusScope.of(context).unfocus();
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            _verify();
                          },
                          child: Text("Verify Code",
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
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
