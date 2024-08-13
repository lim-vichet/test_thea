
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../utils/constants/app_font_styles.dart';
import '../../../utils/constants/app_colors.dart';

import '../../widgets/app_bar.dart';


class NotificationScreen extends StatefulWidget {
  static const String routeName = "/NotificationScreen";
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context,title:"Notification" ,isHasButtonBack: false),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors().white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors().grey,
                        offset: const Offset(
                          0.5,
                          0.5,
                        ),
                        blurRadius: 0.5,
                        spreadRadius: 0.5,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 100.px,
                      child: Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                                height: double.infinity,
                                // color: Colors.pink,
                                child: Icon(
                                  Icons.notifications_none,
                                  size: 40.px,
                                )
                            ),
                          ),
                          Expanded(
                            flex:4,
                            child: Container(
                              // color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Promotion 60%",
                                      style: AppFontStyle().textL(
                                        color: AppColors().grey
                                      )
                                    ),
                                    SizedBox(height: 10.0,),
                                    Container(
                                      width: 200.px,
                                      child: Text("Discount 60% on select item untill end this month",
                                        style: AppFontStyle().textM(
                                          color: AppColors().grey,
                                        ),
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex:1,
                            child: Container(
                              // color: Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.px,
                                      height: 20.px,
                                      decoration: BoxDecoration(
                                        color: AppColors().primary,
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors().white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors().grey,
                        offset: const Offset(
                          0.5,
                          0.5,
                        ),
                        blurRadius: 0.5,
                        spreadRadius: 0.5,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 100.px,
                      child: Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                                height: double.infinity,
                                // color: Colors.pink,
                                child: Icon(
                                  Icons.notifications_none,
                                  size: 40.px,
                                )
                            ),
                          ),
                          Expanded(
                            flex:4,
                            child: Container(
                              // color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Promotion 60%",
                                        style: AppFontStyle().textL(
                                            color: AppColors().grey
                                        )
                                    ),
                                    SizedBox(height: 10.0,),
                                    Container(
                                      width: 200.px,
                                      child: Text("Discount 60% on select item untill end this month",
                                        style: AppFontStyle().textM(
                                          color: AppColors().grey,
                                        ),
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex:1,
                            child: Container(
                              // color: Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.px,
                                      height: 20.px,
                                      decoration: BoxDecoration(
                                        color: AppColors().primary,
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors().white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors().grey,
                        offset: const Offset(
                          0.5,
                          0.5,
                        ),
                        blurRadius: 0.5,
                        spreadRadius: 0.5,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      height: 100.px,
                      child: Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                                height: double.infinity,
                                // color: Colors.pink,
                                child: Icon(
                                  Icons.notifications_none,
                                  size: 40.px,
                                )
                            ),
                          ),
                          Expanded(
                            flex:4,
                            child: Container(
                              // color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Promotion 60%",
                                        style: AppFontStyle().textL(
                                            color: AppColors().grey
                                        )
                                    ),
                                    SizedBox(height: 10.0,),
                                    Container(
                                      width: 200.px,
                                      child: Text("Discount 60% on select item untill end this month",
                                        style: AppFontStyle().textM(
                                          color: AppColors().grey,
                                        ),
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex:1,
                            child: Container(
                              // color: Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 20.px,
                                      height: 20.px,
                                      decoration: BoxDecoration(
                                        color: AppColors().primary,
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
              ],
            ),
        ),
      ),
    );
  }
}
