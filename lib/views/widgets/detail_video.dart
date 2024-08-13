import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DetailVideo extends StatefulWidget {
  static String routename = '/DetailVideo';
  const DetailVideo({Key? key}) : super(key: key);

  @override
  State<DetailVideo> createState() => _DetailVideoState();
}

class _DetailVideoState extends State<DetailVideo> {
  List Urlvideo = ['https://youtu.be/PtqmND5xgQU?t=4', 'https://youtu.be/PhxUIrs9fd0?t=1'];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 500,
      // child: InAppWebView(
      //   initialUrlRequest: URLRequest(
      //       url: Uri.parse(Urlvideo[index])),
      // ),
    );
  }
}
