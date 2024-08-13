import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  static String routeName = '/CallScreen';
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcom to My Function Call"),
      ),
    );
  }
}
