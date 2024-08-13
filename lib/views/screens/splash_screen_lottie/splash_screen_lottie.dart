import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/app_bar.dart';

class SplashScreenLottie extends StatefulWidget {
  static String routeName = '/SplashScreenLottie';
  const SplashScreenLottie({Key? key}) : super(key: key);

  @override
  State<SplashScreenLottie> createState() => _SplashScreenLottieState();
}

class _SplashScreenLottieState extends State<SplashScreenLottie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:defaultAppBar(context,title: "Splash Screen Lottie",isHasButtonBack: true),
      body: Center(
          child: Lottie.asset('assets/anim/vichet.json')),
    );
  }
}
