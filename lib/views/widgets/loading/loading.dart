import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_images.dart';

class LoadingScreen extends StatelessWidget {
  final Color? color;
  const LoadingScreen({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
           Padding(
            padding: EdgeInsets.all(6.0),
            child:Image.asset(AppImages.logo,width: 30,height: 30,)
          ),
          Positioned.fill(
            child: CircularProgressIndicator(
              color: color ?? Colors.orange,
              strokeWidth: 3,
            ),
          ),
        ],
      ),
    );
  }
}
class Loading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black54,
      child: Center(
        child: Container(
          width: 150,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors().primary),
              ),
              Text("Loading")
            ],
          ),
        ),
      ),
    );
  }
}