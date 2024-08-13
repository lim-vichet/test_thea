import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/constants/app_colors.dart';
import '../screens/accommodation/accommodation.dart';
import '../screens/accommodation/chamka_house.dart';
import '../screens/accommodation/green_house.dart';
import '../screens/accommodation/vichet_holiday_home.dart';
import '../screens/accommodation/vichet_hotel.dart';
import '../screens/accommodation/vichet_river_resort.dart';
import '../screens/cafe_detail/amazon.dart';
import '../screens/cafe_detail/arabica.dart';
import '../screens/cafe_detail/brown.dart';
import '../screens/cafe_detail/cafe_detail_screen.dart';
import '../screens/resort/anlong_phnheav_resort.dart';
import '../screens/resort/bati_river_resort.dart';
import '../screens/resort/chiso_mountain_resort.dart';
import '../screens/resort/gold_fish_resort.dart';
import '../screens/resort/natural_lake.dart';
import '../screens/resort/putkiri_resort.dart';

class PoppularAreaScreen extends StatefulWidget {
  const PoppularAreaScreen({Key? key}) : super(key: key);

  @override
  State<PoppularAreaScreen> createState() => _PoppularAreaScreenState();
}

class _PoppularAreaScreenState extends State<PoppularAreaScreen> with SingleTickerProviderStateMixin{

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
    return  Container(
      margin: EdgeInsets.only(right: 8.px, left: 8.px),
      padding: EdgeInsets.all(10.px),
      height: 270.px,
      decoration: BoxDecoration(
        color: AppColors().white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          const BoxShadow(
            color: Colors.grey,
            offset: Offset(
              2,
              2,
            ),
            blurRadius: 1,
            spreadRadius: 1,
          ), //BoxShadow
          BoxShadow(
            color: AppColors().white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 1,
            spreadRadius: 1,
          ), //BoxShadow
        ],
      ),//BoxShadow
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.px),
            width: 200.px,
            height: 30.px,
            child: Text(
              "កំពុងពេញនិយម",
              style: TextStyle(
                fontSize: 18.px,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: Colors.green,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                text: 'កន្លែងស្នាក់នៅ',
              ),
              Tab(
                text: 'រមណីយដ្ឋាណ',
              ),
              Tab(
                text: 'កាហ្វេ',
              ),
              Tab(
                text: 'ផ្សារ',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // SizedBox(height: 5.px,),
                Container(
                  width: 1000,
                  height: 100,
                  margin: EdgeInsets.only(top: 20.px),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    primary: true,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, AccommodationScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://www.popular.com.kh/wp-content/uploads/2020/11/Kompot-Ft.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("វិចិត្ររីសត"),
                                  SizedBox(height: 2.px,),
                                  Text("16.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, VichetHotelScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://www.khmerplaces.com/storage/posts/September2019/yjbbFKFY5uxq1vCJQsPh.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("សណ្ឋាគារវិចិត្រ"),
                                  SizedBox(height: 2.px,),
                                  Text("18.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, GreenHouseScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://1.bp.blogspot.com/-hwGbj6w9H4M/XL0_Ht-BvOI/AAAAAAAAS7g/fU0ZSsWMDk8X8VGHICreqAlVRuAxwADyACLcBGAs/s1600/57465161_453266888744404_5898099242647420928_n.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ផ្ទះស្នាក់បៃតង"),
                                  SizedBox(height: 2.px,),
                                  Text("16.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, ChamkaHouseScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://m.postkhmer.com/sites/default/files/styles/full-screen/public/field/image/wild-farm.jpg?itok=fMFdZT_A",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ផ្ទះស្នាក់ចំការ"),
                                  SizedBox(height: 2.px,),
                                  Text("12.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, VichetHolidayHomeScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Social-/new111/Tourist/Tourist2/Tourist3/Kompot(1)/5b8b8fecdd2e5_1535872980_large.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ផ្ទះលំហែរវិចិត្រស្នេហ៍ស្មោះ"),
                                  SizedBox(height: 2.px,),
                                  Text("28.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, VichetRiverResortScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://khmerpostasia.com/wp-content/uploads/2018/09/10.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ផ្ទះលំហែរ វិចិត្រដងស្ទឹង"),
                                  SizedBox(height: 2.px,),
                                  Text("163.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1000,
                  height: 100,
                  margin: EdgeInsets.only(top: 20.px),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    primary: true,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, GoldFishResortScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://www.popular.com.kh/wp-content/uploads/2022/01/124684839_978890162604753_4324999202957313941_n.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("រមណីយដ្ឋានត្រីមាស"),
                                  SizedBox(height: 2.px,),
                                  Text("16.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, AnlongPhnheavResortScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2m2L3AC9rzZHowMyEW6mXKnYEhwxEBlaS1riaR8XfaewrK-lkk1fngSpqZbzxQLyDKs4&usqp=CAU",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("រមណីយដ្ឋានអន្លង់ភ្ញៀវ"),
                                  SizedBox(height: 2.px,),
                                  Text("181.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, PutKiriResortScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://reaksa.com/wp-content/uploads/2020/03/%E1%9E%9A%E1%9E%98%E1%9E%8E%E1%9E%B8%E1%9E%99%E1%9E%8A%E1%9F%92%E1%9E%8B%E1%9E%B6%E1%9E%93%E1%9E%96%E1%9E%BB%E1%9E%91%E1%9F%92%E1%9E%92%E1%9E%82%E1%9E%B8%E1%9E%9A%E1%9E%B8-%E2%80%93-%E1%9E%8F%E1%9F%86%E1%9E%94%E1%9E%93%E1%9F%8B%E1%9E%92%E1%9E%98%E1%9F%92%E1%9E%98%E1%9E%87%E1%9E%B6%E1%9E%8F%E1%9E%B7_5.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("រមណីយដ្ឋានពុទ្ធគីរី"),
                                  SizedBox(height: 2.px,),
                                  Text("16.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, ChisoMountainResortScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://s9.kh1.co/81/8183d6cdcad08e3da13f07a55869523a4902d31d.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("រមណីយដ្ឋានភ្នំជីសូរ"),
                                  SizedBox(height: 2.px,),
                                  Text("124.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, BatiRiverResortScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://kohsantepheapdaily.com.kh/wp-content/uploads/2020/07/9a1158154dfa42caddbd0694a4e9bdc8-45.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("រមណីយដ្ឋានទន្លេបាទី"),
                                  SizedBox(height: 2.px,),
                                  Text("28.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, NaturalLakeScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://www.guidetrip.info/asset/img/gallery_album/5d2ed504dde5a.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("បង្កងទឹកសាបបឹងធម្មជាតិ"),
                                  SizedBox(height: 2.px,),
                                  Text("163.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1000,
                  height: 100,
                  margin: EdgeInsets.only(top: 20.px),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    primary: true,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, AmazonScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://cdn.cambonomist.com/media/images/canva-photo-editor_2_BbJtZxo.2e16d0ba.fill-960x540.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("កាហ្វេអាម៉ាហ្សូន"),
                                  SizedBox(height: 2.px,),
                                  Text("16.29k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, ArabicaScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://foodbuzz.site/api/v1/files/1D603769-D181-453B-8C04-8BFF94A20E75",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("កាហ្វេអារ៉ាប៊ីកា"),
                                  SizedBox(height: 2.px,),
                                  Text("10.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, BrownScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://s3.kh1.co/0d76d7ed1b07dcc9c7b44779f21e56ada471d5f0.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("កាហ្វេប្រោន"),
                                  SizedBox(height: 2.px,),
                                  Text("16.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, AmazonScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://www.knongsrok.com/wp-content/uploads/2019/12/80188552_692280491300165_7403013464853053440_o.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("កាហ្វេស្រុកស្រែ"),
                                  SizedBox(height: 2.px,),
                                  Text("12.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, AmazonScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj1dJZx7JHWO3OqFTjqzGrvLH10rh762ntgLrwe0nt_OXaMSyAceZNo9wgrT08b9I9nvU&usqp=CAU",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("កាហ្វេ មេអំបៅ"),
                                  SizedBox(height: 2.px,),
                                  Text("28.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, CafeDetailScreen.routeName);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 140,
                                height: 90,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmSch5535f3S1Hb-Q06qAtHjXIJH6Xmui7rSdfeq89zZrWU1tdJ3PNqy0ld6i5ShzSeB0&usqp=CAU",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 140,
                              height: 50,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("កាហ្វេដូងក្រអូប"),
                                  SizedBox(height: 2.px,),
                                  Text("163.9k Views"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1000,
                  height: 100,
                  margin: EdgeInsets.only(top: 20.px),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    primary: true,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 140,
                              height: 90,
                              child: Image.network("https://www.cpc-news.com/wp-content/uploads/2021/06/1-1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ផ្សារតាកែវ"),
                                SizedBox(height: 2.px,),
                                Text("16.9k Views"),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 140,
                              height: 90,
                              child: Image.network("https://image.thmeythmey.com/pictures/2021/04/18/front_psa.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ផ្សារត្រាំខ្នារ"),
                                SizedBox(height: 2.px,),
                                Text("18.9k Views"),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 140,
                              height: 90,
                              child: Image.network("https://m.postkhmer.com/sites/default/files/styles/full-screen/public/field/image/untitled_2.jpg?itok=D5ZNhCzU",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ផ្សារអង្គតាសោម"),
                                SizedBox(height: 2.px,),
                                Text("16.9k Views"),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 140,
                              height: 90,
                              child: Image.network("https://vayofm.com/content_img/112385/vvbvbvbvb.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ផ្សារត្រាំកក់"),
                                SizedBox(height: 2.px,),
                                Text("12.9k Views"),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 140,
                              height: 90,
                              child: Image.network("https://www.rfa.org/khmer/indepth/sokan-solved-problem-4takeo-vendors-08152009230038.html/market/@@images/e7f8697c-72a5-45a5-9aae-bc28e5027adc.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ផ្សារទន្លាប់"),
                                SizedBox(height: 2.px,),
                                Text("28.9k Views"),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 140,
                              height: 90,
                              child: Image.network("https://m.postkhmer.com/sites/default/files/field/image/topic-18-a-vendor-selles-pork-at-orussey-market-in-7-makara-district-on-30-07-2021-by-heng-chivoan-1.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("ផ្សារថ្នល់បត់"),
                                SizedBox(height: 2.px,),
                                Text("163.9k Views"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
