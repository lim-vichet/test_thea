import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../screens/sub_category/PhorkWaterfallScreen.dart';
import '../screens/sub_category/anlong_pnhheav.dart';
import '../screens/sub_category/bati_river.dart';
import '../screens/sub_category/bayornkor_mountain.dart';
import '../screens/sub_category/chiso_mountain.dart';
import '../screens/sub_category/gold_fish.dart';
import '../screens/sub_category/neang_kmao_temple.dart';
import '../screens/sub_category/put_kiri.dart';
import '../screens/sub_category/sub_category.dart';
import '../screens/sub_category/takeo_lobster.dart';
import '../screens/sub_category/tamao_mountain.dart';
import '../screens/sub_category/tnort_te.dart';
class WarkingPlaceScreen extends StatefulWidget {
  const WarkingPlaceScreen({Key? key}) : super(key: key);

  @override
  State<WarkingPlaceScreen> createState() => _WarkingPlaceScreenState();
}

class _WarkingPlaceScreenState extends State<WarkingPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 1000,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, SubCategory.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ41xRddEBn5SsTkQTak4di5H_wmhnbTs3XZ9FemkN4B4TDYlwKTH5m_20KL3nW6PbxjA8&usqp=CAU",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("តាកែវ យាយកែវ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Grand of Keo ",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, GoldFishScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://www.guidetrip.info/asset/img/gallery_resort/6097fd8d1a8cb.jpeg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ត្រីមាស",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Gold Fish",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, TamaoMountainScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://i.pinimg.com/originals/83/63/f5/8363f506fbfda64e9fd3be81480101c7.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ភ្នំតាម៉ៅ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Tamao Mountain",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, ChisoMountain.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://cdn.sabay.com/cdn/cdn.sabay.com/cdn/media.sabay.com/media/TECH-KK/SOVATH/Sep-2020-07/5f965b2a75601_1603689240_medium.png",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ភ្នំជីសូរ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Chiso Mountain",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, PhorkWaterfallScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://cms.dmpcdn.com/cdn-cgi/image/fit=cover,quality=85,f=auto/https://cms.dmpcdn.com/article/2020/12/29/67928a90-49b4-11eb-89e4-35f1a97d3869_original.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ជ្រោះផ្អោក",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("P'ork Waterfall",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, BayornkorMountainScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://1.bp.blogspot.com/-w3NZ27Fp1us/YDXCshlt2vI/AAAAAAAAHGM/2XwxX-RaB54A_o72ki-nWi81mNh1IK88ACLcBGAsYHQ/s2000/008.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ភ្នំបាយ៉ង់កោ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Bayornkor Moun...",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, TakeoLobsterScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://i.pinimg.com/736x/37/20/cb/3720cbdfa9e9466eba1abf14153e55a1--prawn-seafood.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("បង្កងទន្លេតាកែវ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Takeo Lobster",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, BatiRiverScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://www.bambootravel.co.uk/files/img_cache/53583/1400__1521561026_Koh-Andet-Eco-Resort-2-130.jpg?1521561031",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ទន្លេបាទី",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Bati River",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, NeangKmaoTempleScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://upload.wikimedia.org/wikipedia/km/8/83/Prasat_neang_khmao.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ប្រាសាទ នាងខ្មៅ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Neang Khmao Temple",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, AnlongPhheavScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://www.popular.com.kh/wp-content/uploads/2018/12/Heng-47.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("អន្លង់ភ្ញៀវ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Anlong Phheav",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, PutKiriScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://reaksa.com/wp-content/uploads/2020/03/%E1%9E%9A%E1%9E%98%E1%9E%8E%E1%9E%B8%E1%9E%99%E1%9E%8A%E1%9F%92%E1%9E%8B%E1%9E%B6%E1%9E%93%E1%9E%96%E1%9E%BB%E1%9E%91%E1%9F%92%E1%9E%92%E1%9E%82%E1%9E%B8%E1%9E%9A%E1%9E%B8-%E2%80%93-%E1%9E%8F%E1%9F%86%E1%9E%94%E1%9E%93%E1%9F%8B%E1%9E%92%E1%9E%98%E1%9F%92%E1%9E%98%E1%9E%87%E1%9E%B6%E1%9E%8F%E1%9E%B7_5.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ពុទ្ធគីរី",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Put kiri",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, TnortTeScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      width: 140,
                      height: 180,
                      child: Image.network("https://www.popular.com.kh/wp-content/uploads/2019/10/Khom-02-10-2019-05.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ត្នោតទេ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text("Tnort Te",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 15,
                        ),
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
