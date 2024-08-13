

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../data/models/user_profile_model/user_profile_model.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_dimensions.dart';
import '../../../utils/constants/app_font_styles.dart';
import 'package:dotted_line/dotted_line.dart';

import '../../widgets/enjoy_activity.dart';
import '../../widgets/food_area.dart';
import '../../widgets/information.dart';
import '../../widgets/loading/loading.dart';
import '../../widgets/menu_category.dart';
import '../../widgets/poppular_area.dart';
import '../../widgets/slides.dart';
import '../../widgets/video.dart';
import '../../widgets/warking_place.dart';
import '../appbar_animation/appbar_animation.dart';
import '../attendance/attendance.dart';
import '../call/call.dart';
import '../draggable_scrollable_sheet/draggable_scrollable_sheet.dart';
import '../phone_otp/phone_verify.dart';
import '../splash_screen_lottie/splash_screen_lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../widgets/app_bar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState ();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  ResultUserProfile? result;
  String Images = 'https://wallpaperaccess.com/full/1893536.jpg';
  File? image;

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override

  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
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
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'តាកែវសូមស្វាគមន៍',
                            textStyle: TextStyle(
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            speed: const Duration(milliseconds: 200),
                          ),
                        ],
                        totalRepeatCount: 100,
                        pause: const Duration(milliseconds: 1000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                    ),
                  ),
                  Container(
                    height: 2000,
                    padding: EdgeInsets.only(top: 15.px,),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                    ),
                    child: Column(
                      children: [
                        MenuCategoryScreen(),
                        SlideScreen(),
                        Container(
                          padding: EdgeInsets.only(top: 20.px, left: 8),
                          // color: Colors.red,
                          width: double.infinity,
                          height: 50,
                          child: Text("កន្លែដើរលេង",
                            style: TextStyle(
                              fontSize: 18.px,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        WarkingPlaceScreen(),
                        PoppularAreaScreen(),
                        Container(
                          padding: EdgeInsets.only(top: 20.px, left: 8),
                          // color: Colors.red,
                          width: double.infinity,
                          height: 50,
                          child: Text("អាហារប្រចាំតំបន់",
                            style: TextStyle(
                              fontSize: 18.px,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        FoodAreaScreen(),
                        Container(
                          padding: EdgeInsets.only(top: 20.px, left: 8),
                          // color: Colors.red,
                          width: double.infinity,
                          height: 50,
                          child: Text("សកម្មភាពកំសាន្ត",
                            style: TextStyle(
                              fontSize: 18.px,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        EnjoyActivityScreen(),
                        Container(
                          padding: EdgeInsets.only(top: 20.px, left: 8),
                          // color: Colors.red,
                          width: double.infinity,
                          height: 50,
                          child: Text("វីដេអូ",
                            style: TextStyle(
                              fontSize: 18.px,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        VideoScreen(),
                        InformationScreen(),
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

