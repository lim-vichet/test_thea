import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PalaceCard extends StatefulWidget {
  const PalaceCard({Key? key}) : super(key: key);

  @override
  State<PalaceCard> createState() => _PalaceCardState();
}

class _PalaceCardState extends State<PalaceCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 400,
          height: 190,
          padding: EdgeInsets.only(left: 50.px),
          margin: EdgeInsets.only(bottom: 20.px),
          // color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30)),
            child: Container(
              height: 190,
              width: double.infinity,
              child: Image.network(
                "https://visitcambodia.travel/upload/files/resized/vuth_1567134771_59468_98861.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 70,
          bottom: 30,
          // bottom: 15,
          child: Text(
            "ក្រុងដូនកែវ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 1,
            child: Container(
                child: CircleAvatar(
                  maxRadius: 41,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: NetworkImage(
                        "https://2.bp.blogspot.com/-EE_5S1rev6o/WQyXzJFFupI/AAAAAAAAAG8/LV0Uwz-QM9woqHpmIqeJ7kVlyd2qD1xUQCLcB/w680/1461726527322.jpg"),
                  ),
                )))
      ],
    );
  }
}
