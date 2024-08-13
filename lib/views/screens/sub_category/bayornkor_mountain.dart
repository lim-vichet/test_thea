
import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_colors.dart';

class BayornkorMountainScreen extends StatefulWidget {
  static String routeName = 'BayornkorMountainScreen';
  const BayornkorMountainScreen({Key? key}) : super(key: key);

  @override
  State<BayornkorMountainScreen> createState() => _BayornkorMountainScreenState();
}

class _BayornkorMountainScreenState extends State<BayornkorMountainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar:
        const ColorBuilder(Colors.transparent, Colors.red),
        textColorAppBar: const ColorBuilder(Colors.white),
        appBarBuilder: _appBar,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.green.withOpacity(0.3),
              // child: Image.network("https://wallpapercave.com/wp/wp2039794.jpg",
              //   fit: BoxFit.cover,
              // ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(90)),
                      child: Container(
                        height: 350,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(90))),
                        child: Image.network(
                          "https://1.bp.blogspot.com/-w3NZ27Fp1us/YDXCshlt2vI/AAAAAAAAHGM/2XwxX-RaB54A_o72ki-nWi81mNh1IK88ACLcBGAsYHQ/s2000/008.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      right: 0,
                      child: Container(
                        height: 100,
                        width: 200,
                        // color: Colors.pinkAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.px,),
                SizedBox(
                  height: 20.px,
                ),
                Expanded(
                  child: Container(
                    width: 400,
                    padding: EdgeInsets.only(left: 20),
                    child: ListView(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://www.localguidesconnect.com/t5/image/serverpage/image-id/554481iB2C7D4625662B92B/image-size/large?v=v2&px=999",
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
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
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
                                  child: Image.network(
                                    "https://cdn.sabay.com/cdn/media.sabay.com/media/Kley-Kley/KK-Social/11-04-2018/1_medium.jpg",
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
                                "អន្លង់ភ្ញៀវ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 50,
                                left: 1,
                                child: CircleAvatar(
                                  maxRadius: 41,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    maxRadius: 40,
                                    backgroundImage: NetworkImage(
                                        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEish61sWJYptnQXoW_c8rq8phv0VX-oPZJJUIrwJXy3TEaw75r8BORcPlAUcfQHruBcpL1cHD0UTUs1Z1-HVtfzCM5DA3Z9tww6oAfL2QBCr0CR4cxxzi8jOFcDyAQpUH-c-qbDfvzG0Vq4bYNbjIbySxN0KirZfvKSwM3hXm8cXiYFH0erm21ZR8JfzQ/s800/64733c0a0d884e5184ee7c46d6b2cf8d.jpg"),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://www.khmerplaces.com/storage/posts/November2020/calwN99phh1hyCglXQ8D.jpg",
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
                                "ត្រីមាស",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 50,
                                left: 1,
                                child: CircleAvatar(
                                  maxRadius: 41,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    maxRadius: 40,
                                    backgroundImage: NetworkImage(
                                        "https://i.ytimg.com/vi/Mx9txlDtAWQ/maxresdefault.jpg"),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://reaksa.com/wp-content/uploads/2020/03/%E1%9E%9A%E1%9E%98%E1%9E%8E%E1%9E%B8%E1%9E%99%E1%9E%8A%E1%9F%92%E1%9E%8B%E1%9E%B6%E1%9E%93%E1%9E%96%E1%9E%BB%E1%9E%91%E1%9F%92%E1%9E%92%E1%9E%82%E1%9E%B8%E1%9E%9A%E1%9E%B8-%E2%80%93-%E1%9E%8F%E1%9F%86%E1%9E%94%E1%9E%93%E1%9F%8B%E1%9E%92%E1%9E%98%E1%9F%92%E1%9E%98%E1%9E%87%E1%9E%B6%E1%9E%8F%E1%9E%B7_5.jpg",
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
                                "ពុទ្ធគីរី",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 50,
                                left: 1,
                                child: CircleAvatar(
                                  maxRadius: 41,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    maxRadius: 40,
                                    backgroundImage: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ88vtunMJ3nyAcpG_794ydjgtqDt_Z2JAq6Q&usqp=CAU"),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://4.bp.blogspot.com/-wzpRtkuQ6wQ/XTq-uUPsT4I/AAAAAAAAV8Y/0vnncBFvaucE7K880EIy8ZWpMt9KIiaCgCLcBGAs/s1600/65056340_2542895239054125_1976173989726257152_o.jpg",
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
                                "ទន្លេបាទី",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 50,
                                left: 1,
                                child: CircleAvatar(
                                  maxRadius: 41,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    maxRadius: 40,
                                    backgroundImage: NetworkImage(
                                        "https://1.bp.blogspot.com/-cUE-rA-4FHk/WgFt7zCF0GI/AAAAAAAAAqY/4DJ1dZtCS_8-AW6B9V1XD30UtqZdwDo0QCLcBGAs/s1600/image3.jpg"),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://www.popular.com.kh/wp-content/uploads/2022/08/photo_2022-05-11_14-57-07.jpg",
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
                                "ភ្នំតាម៉ៅ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 50,
                                left: 1,
                                child: CircleAvatar(
                                  maxRadius: 41,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    maxRadius: 40,
                                    backgroundImage: NetworkImage(
                                        "https://lareine.com.kh/wp-content/uploads/2020/02/106-1.jpg"),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://2.bp.blogspot.com/-HhSOgqK8LSI/W8leDh6ruzI/AAAAAAAANTU/YW_wmKveNO4pKL6th1Q7Pvgo8gX06FlrwCLcBGAs/s1600/43383210_2207380756209950_5376566105538035712_n.jpg",
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
                                "ទឹកជ្រោះផ្អោក",
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
                                            "https://images.deliveryhero.io/image/fd-kh/LH/h0ee-hero.jpg"),
                                      ),
                                    )))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://www.popular.com.kh/wp-content/uploads/2019/10/Khom-02-10-2019-05.jpg",
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
                                "ត្នោតទេ",
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
                                            "https://d1sag4ddilekf6.azureedge.net/compressed_webp/items/KHITE20221215090411011686/detail/b0a3ed45bb6e4419be45ddeab18fc9c4_1671096627086989795.webp"),
                                      ),
                                    )))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
                                  child: Image.network(
                                    "http://spktliv.com/wp-content/uploads/2019/01/%E1%9F%A1-2.png",
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
                                "ភ្នំជីសូ",
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
                                            "https://images.deliveryhero.io/image/fd-kh/LH/b8ix-hero.jpg"),
                                      ),
                                    )))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 400,
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px,bottom: 20),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              // color: Colors.red,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Container(
                                  height: 190,
                                  width: double.infinity,
                                  child: Image.network(
                                    "https://1.bp.blogspot.com/-sfltz1G1JhA/X4AS8h32z9I/AAAAAAAAKDE/HPr8p6vn9Ig3yM7iV1KQ7wAOaXLxdCp5QCLcBGAsYHQ/s0/120903031_1850089611796818_1242848659302992227_n.jpg",
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
                                "ភ្នំបាយ៉ង់កោ",
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
                                            "https://i.ytimg.com/vi/HZpxBpOyYYQ/maxresdefault.jpg"),
                                      ),
                                    )))
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 190,
                              margin: EdgeInsets.only(left: 50.px),
                              padding: EdgeInsets.only(left: 1, top: 1, bottom: 1),
                              decoration: BoxDecoration(
                                color: AppColors().white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                              child: Container(
                                height: 190,
                                // padding: EdgeInsets.only(left: 50.px),
                                // color: Colors.red,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30)),
                                  child: Container(
                                    height: 190,
                                    width: double.infinity,
                                    child: Image.network(
                                      "https://1.bp.blogspot.com/-sfltz1G1JhA/X4AS8h32z9I/AAAAAAAAKDE/HPr8p6vn9Ig3yM7iV1KQ7wAOaXLxdCp5QCLcBGAsYHQ/s0/120903031_1850089611796818_1242848659302992227_n.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 70,
                              bottom: 30,
                              // bottom: 15,
                              child: Text(
                                "ភ្នំបាយ៉ង់កោ",
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
                                            "https://i.ytimg.com/vi/HZpxBpOyYYQ/maxresdefault.jpg"),
                                      ),
                                    )))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
  Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
  return AppBar(
    backgroundColor: colorAnimated.background,
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
          margin: EdgeInsets.all(5.px),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: AppColors().white,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back,
            color: AppColors().black,
            size: 25.px,
          )),
    ),
    actions: [
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 12.px),
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 6),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: AppColors().white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.favorite_border,
          size: 22,
          color: AppColors().primary,
        ),
      ),
    ],
  );
}
