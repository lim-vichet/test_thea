import 'package:flutter/material.dart';

import '../../../utils/constants/app_images.dart';

void modalLoading(BuildContext context){

  showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.transparent,

    builder: (context) 
      => AlertDialog(
        insetPadding: EdgeInsets.all(50),
        buttonPadding: EdgeInsets.all(50),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        content: Container(
          height: 100,
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                    padding: EdgeInsets.all(6.0),
                    child:Image.asset(AppImages.logo,width: 30,height: 30,)
                ),
                const Positioned.fill(
                  child: CircularProgressIndicator(
                    color:  Colors.red,
                    strokeWidth: 3,
                  ),
                ),
              ],
            ),
          )
        ),
      ),
  );
}