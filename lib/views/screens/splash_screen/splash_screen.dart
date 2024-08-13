
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:get/get_core/src/get_main.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_images.dart';
import '../main_screen/main_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "/SplashScreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 12),
          () {
        // var lang = localStore.read('lang');
        //
        // if (lang == null || lang == "") {
        //   currectLang = const Locale('en', 'US');
        //   Get.updateLocale(currectLang);
        //   Navigator.pushReplacementNamed(
        //       context, SelectLanguageScreen.routeName);
        // } else {
        //   lan = lang;
        //   https: //stage.cint-cam.com
        //
        //   if (lang == 'kh') {
        //     localStore.write('lang', 'kh');
        //     currectLang = const Locale('kh', 'KH');
        //   } else {
        //     localStore.write('lang', 'en');
        //     currectLang = const Locale('en', 'US');
        //   }
        //   Get.updateLocale(currectLang);
        //   Get.to(LoginScreen());
        //     Navigator.pushNamed(context, LoginScreen.routeName);
          Navigator.pushNamedAndRemoveUntil(
              context, MainScreen.routeName, (route) => false);
        // }
      },
    );
    return  Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors().green,
        child: Stack(
          children: [
            Center(

              // child: AppImages.logoImage(),
              child:  Lottie.asset('assets/anim/vichet.json'),
            ),
            Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: Text("Copyright: \n https://www.visitkampot.info \n Lim Vichet",textAlign: TextAlign.center,style: TextStyle(color: AppColors().white),))
          ],
        ),
      ),
    );
  }
}
