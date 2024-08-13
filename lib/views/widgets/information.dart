import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/constants/app_colors.dart';
import '../screens/information_screen_detail/covid_19_screen.dart';
import '../screens/information_screen_detail/gangster_screen.dart';
import '../screens/information_screen_detail/khmer_new_year_screen.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 1000,
      height: 210,
      decoration: BoxDecoration(
        color: AppColors().white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            offset: Offset(
              0.0,
              0.0,
            ),
            blurRadius: 0.5,
            spreadRadius: 0.5,
          ), //BoxShadow
          BoxShadow(
            color: AppColors().white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.5,
            spreadRadius: 0.5,
          ), //BoxShadow
        ],
      ),
      margin: EdgeInsets.only(left: 5, right: 5),
      // color: Colors.orange,
      child: Container(
        width: 1000,
        height: 190,
        // color: Colors.orange,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 35,
              // color: Colors.red,
              margin: EdgeInsets.only(left: 10, top: 10),
              child: Text("ព័ត៍មានផ្សេងៗ",
                style: TextStyle(
                  fontSize: 18.px,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 1000,
              height: 160,
              // color: Colors.pink,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, KhmerNewYearScreen.routeName);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 190,
                          height: 120,
                          // color: Colors.red,
                          margin: EdgeInsets.only(right: 10.px,left: 10.px,),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.px),
                            child: Container(
                              width: 180,
                              height: 110,
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlUdno8_H9n-EJjouvbRmYD_f-7x5PJzk_gahG-k5IlRCvmOQdqdRGL9Cs__Mq-ZEyO-Y&usqp=CAU",
                                fit: BoxFit.cover,
                                // image: AssetImage("images/launchScreen@3x.png"),

                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 45,
                          child: Row(
                            children: [
                              Icon(Icons.favorite,
                                size: 15,
                                color: Colors.red,
                              ),
                              Text("10.6k",
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            left: 15,
                            bottom: -10,
                            child: Container(
                              height: 50,
                              width: 180,
                              // color: Colors.red,
                              child: Text("អភិបាលខេត្តតាកែវរៀបចំ...",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, GangsterScreen.routeName);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 190,
                          height: 120,
                          // color: Colors.red,
                          margin: EdgeInsets.only(right: 10.px,left: 10.px,),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.px),
                            child: Container(
                              width: 180,
                              height: 110,
                              child: Image.network("https://eacnews.asia/uploads/images/lowerres_1677124594_20d8104833122f64ebd9.jpg",
                                fit: BoxFit.cover,
                                // image: AssetImage("images/launchScreen@3x.png"),

                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 45,
                          child: Row(
                            children: [
                              Icon(Icons.favorite,
                                size: 15,
                                color: Colors.red,
                              ),
                              Text("10.6k",
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            left: 15,
                            bottom: -10,
                            child: Container(
                              height: 50,
                              width: 180,
                              // color: Colors.red,
                              child: Text("ចាប់បានហើយក្មេងស្ទាវ...",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 190,
                        height: 120,
                        // color: Colors.red,
                        margin: EdgeInsets.only(right: 10.px,left: 10.px,),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.px),
                          child: Container(
                            width: 180,
                            height: 110,
                            child: Image.network("http://image.freshnewsasia.com/2021/id-022/fn-2022-04-12-14-40-19-4.jpg",
                              fit: BoxFit.cover,
                              // image: AssetImage("images/launchScreen@3x.png"),

                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        bottom: 45,
                        child: Row(
                          children: [
                            Icon(Icons.favorite,
                              size: 15,
                              color: Colors.red,
                            ),
                            Text("10.6k",
                              style: TextStyle(
                                  color: Colors.red
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          left: 15,
                          bottom: -10,
                          child: Container(
                            height: 50,
                            width: 180,
                            // color: Colors.red,
                            child: Text("សកម្មភាពរាបចំសង្ក្រាន្ត...",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 190,
                        height: 120,
                        // color: Colors.red,
                        margin: EdgeInsets.only(right: 10.px,left: 10.px,),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.px),
                          child: Container(
                            width: 180,
                            height: 110,
                            child: Image.network("https://i.ytimg.com/vi/06WtfEkC6vE/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGUgVChEMA8=&rs=AOn4CLDRnhHutvdx3akgtvFlefMPwGSnqA",
                              fit: BoxFit.cover,
                              // image: AssetImage("images/launchScreen@3x.png"),

                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        bottom: 45,
                        child: Row(
                          children: [
                            Icon(Icons.favorite,
                              size: 15,
                              color: Colors.red,
                            ),
                            Text("10.6k",
                              style: TextStyle(
                                  color: Colors.red
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          left: 15,
                          bottom: -10,
                          child: Container(
                            height: 50,
                            width: 180,
                            // color: Colors.red,
                            child: Text("ក្រសួងអប់រំយុវជននិង...",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 190,
                        height: 120,
                        // color: Colors.red,
                        margin: EdgeInsets.only(right: 10.px,left: 10.px,),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.px),
                          child: Container(
                            width: 180,
                            height: 110,
                            child: Image.network("https://vayofm.com/content_img/73341/vayo3PHEARAO.jpg",
                              fit: BoxFit.cover,
                              // image: AssetImage("images/launchScreen@3x.png"),

                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        bottom: 45,
                        child: Row(
                          children: [
                            Icon(Icons.favorite,
                              size: 15,
                              color: Colors.red,
                            ),
                            Text("10.6k",
                              style: TextStyle(
                                  color: Colors.red
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          left: 15,
                          bottom: -10,
                          child: Container(
                            height: 50,
                            width: 180,
                            // color: Colors.red,
                            child: Text("តម្លៃប្រេងសាំងនៅ...",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Covid19Screen.routeName);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 190,
                          height: 120,
                          // color: Colors.red,
                          margin: EdgeInsets.only(right: 10.px,left: 10.px,),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.px),
                            child: Container(
                              width: 180,
                              height: 110,
                              child: Image.network("https://moi-static.sgp1.digitaloceanspaces.com/uploads/post/feature_image/18309/feature.jpg",
                                fit: BoxFit.cover,
                                // image: AssetImage("images/launchScreen@3x.png"),

                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 45,
                          child: Row(
                            children: [
                              Icon(Icons.favorite,
                                size: 15,
                                color: Colors.red,
                              ),
                              Text("10.6k",
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            left: 15,
                            bottom: -10,
                            child: Container(
                              height: 50,
                              width: 180,
                              // color: Colors.red,
                              child: Text("វ៉ាក់សាំងបង្ការជំងឺកូវីត...",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Covid19Screen.routeName);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 190,
                          height: 120,
                          // color: Colors.red,
                          margin: EdgeInsets.only(right: 10.px,left: 10.px,),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.px),
                            child: Container(
                              width: 180,
                              height: 110,
                              child: Image.network("https://www.mongkolmedia.com/storage/posts/April2022/zuNV9vQ8gQmzG9ocRpud.jpeg",
                                fit: BoxFit.cover,
                                // image: AssetImage("images/launchScreen@3x.png"),

                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 45,
                          child: Row(
                            children: [
                              Icon(Icons.favorite,
                                size: 15,
                                color: Colors.red,
                              ),
                              Text("10.6k",
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            left: 15,
                            bottom: -10,
                            child: Container(
                              height: 50,
                              width: 180,
                              // color: Colors.red,
                              child: Text("វ៉ាក់សាំងបង្ការជំងឺកូវីត...",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
