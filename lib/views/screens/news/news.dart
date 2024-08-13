

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  static String routeName = 'NewsScreen';
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network("https://t3.ftcdn.net/jpg/01/46/96/56/240_F_146965623_fWvRTXdU0Azt64TxJnshVlk7jd4RrujN.jpg",
                fit: BoxFit.cover,
                // image: AssetImage("images/launchScreen@3x.png"),

              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                children: [
                  Container(
                    height: 300,
                    // color: Colors.pink,
                    child: Center(
                      child: Text("lolo"),
                    ),
                  ),
                  Container(
                    height: 2000,
                    padding: EdgeInsets.only(top: 15, left: 5, right: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                    ),
                    child: Column(
                      children: [
                        Text("data"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
