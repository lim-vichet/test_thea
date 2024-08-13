import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../screens/enjoy_activity_detail_screen/Boating.dart';
import '../screens/enjoy_activity_detail_screen/Volleyball.dart';
import '../screens/enjoy_activity_detail_screen/bath_waterfall.dart';
import '../screens/enjoy_activity_detail_screen/celebrate.dart';
import '../screens/enjoy_activity_detail_screen/climbing.dart';
import '../screens/enjoy_activity_detail_screen/duck_riding.dart';
import '../screens/enjoy_activity_detail_screen/karaoke.dart';
import '../screens/enjoy_activity_detail_screen/ride_cable.dart';
import '../screens/enjoy_activity_detail_screen/tnort_te.dart';
import '../screens/enjoy_activity_detail_screen/water_spray.dart';

class EnjoyActivityScreen extends StatefulWidget {
  const EnjoyActivityScreen({Key? key}) : super(key: key);

  @override
  State<EnjoyActivityScreen> createState() => _EnjoyActivityScreenState();
}

class _EnjoyActivityScreenState extends State<EnjoyActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 1000,
      height: 140,
      // color: Colors.orange,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, BoatingScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("https://4.bp.blogspot.com/-8oLYFTuw0nc/XG5fZNyfEvI/AAAAAAAAQ7w/qzZskG4Me7sn5XafH3_DXWzyWfGc2-M9gCLcBGAs/s1600/418427_385591871508749_803027850_n.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("ជិះទូកកម្សាន្ត",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                 right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                  bottom: -20,
                  child: Container(
                    height: 50,
                    width: 180,
                    // color: Colors.red,
                    child: Text("ជិះទូកកម្សាន្តតាមគង្គា...",
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
              Navigator.pushNamed(context, RideCableScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("https://4.bp.blogspot.com/-sjBt8-UjXDk/WlazE-ut36I/AAAAAAAAmLQ/VZwZiaav9tMq4FtiCFBVnVviRi5Zh8c8ACLcBGAs/s1600/image.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("ជិះខ្សែរ៉តកម្សាន្ត",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                    bottom: -20,
                    child: Container(
                      height: 50,
                      width: 180,
                      // color: Colors.red,
                      child: Text("ជិះខ្សែរ៉តកម្សាន្តលើព្រៃភ្នំ...",
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
              Navigator.pushNamed(context, BathWaterfall.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("https://1.bp.blogspot.com/-gqR8ITpC3sY/X93D236VscI/AAAAAAAAECw/tmjMI86o_OUyzrltyp8ni-_0ZtVhNlOPQCNcBGAsYHQ/s0/photo_2020-10-22_11-45-18-640x439.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("ងូតទឹកជ្រោះ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                    bottom: -20,
                    child: Container(
                      height: 50,
                      width: 180,
                      // color: Colors.red,
                      child: Text("ងូតទឹកជ្រោះកម្សាន្ត...",
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
              Navigator.pushNamed(context, DuckRidingScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("https://1.bp.blogspot.com/-AWhw0UE4UH4/YVRtD1HcZVI/AAAAAAAAgXo/ym5z46khMZ0qQPLghCLSGoL0__lTS9NagCLcBGAsYHQ/s0/243506861_1181010019059432_1878838491142458158_n.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("ជិះទា",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                    bottom: -20,
                    child: Container(
                      height: 50,
                      width: 180,
                      // color: Colors.red,
                      child: Text("ជិះទាកម្សាន្តសប្បាយ...",
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
              Navigator.pushNamed(context, TnortTeScreenDetail.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("https://i.ytimg.com/vi/qWWLvyRJI-8/maxresdefault.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("ត្នោតទេ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                    bottom: -20,
                    child: Container(
                      height: 50,
                      width: 180,
                      // color: Colors.red,
                      child: Text("កម្សាន្តត្នោតទេ...",
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
              Navigator.pushNamed(context, ClimbingScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("https://www.popular.com.kh/wp-content/uploads/2020/06/%E1%9E%81%E1%9F%92%E1%9E%93%E1%9E%84%E1%9E%95%E1%9F%92%E1%9E%9F%E1%9E%B6%E1%9E%9A%E1%9F%A1-1.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("ឡើងភ្នំ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                    bottom: -20,
                    child: Container(
                      height: 50,
                      width: 180,
                      // color: Colors.red,
                      child: Text("ឡើងភ្នំកម្សាន្ត...",
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
              Navigator.pushNamed(context, KaraokeScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("https://cdnaws.recis.io/i/img/00/89/7e/fb_0ff6eb_w720.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("ច្រៀងខារ៉ាអូខេ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                    bottom: -20,
                    child: Container(
                      height: 50,
                      width: 180,
                      // color: Colors.red,
                      child: Text("ច្រៀងខារ៉ាអូខេកម្សាន្ត...",
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
              Navigator.pushNamed(context, CelebrateScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("https://huunghivietnamcampuchia.thoidai.com.vn/stores/news_dataimages/huonggiang/042021/20/09/4833_190421-ht-09.jpg?rt=20210420094900",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("ធ្វើបុណ្យ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                    bottom: -20,
                    child: Container(
                      height: 50,
                      width: 180,
                      // color: Colors.red,
                      child: Text("ធ្វើបុណ្យកុសល្យ...",
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
              Navigator.pushNamed(context, WaterSprayScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("http://postto.me/1y/d7d.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("បាញ់ទឹក",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                    bottom: -20,
                    child: Container(
                      height: 50,
                      width: 180,
                      // color: Colors.red,
                      child: Text("ប៉ាតម្សៅ បាញ់ទឹក...",
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
              Navigator.pushNamed(context, VolleyballScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 110,
                  // color: Colors.red,
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.px),
                    child: Container(
                      width: 180,
                      height: 110,
                      child: Image.network("https://asset.ams.com.kh/sports/media/320492646_224527473451141_9180929150483246368_n.jpg",
                        fit: BoxFit.cover,
                        // image: AssetImage("images/launchScreen@3x.png"),

                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 35,
                  // bottom: 15,
                  child: Text("បាល់ទះ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 35,
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye,
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
                    bottom: -20,
                    child: Container(
                      height: 50,
                      width: 180,
                      // color: Colors.red,
                      child: Text("ប្រកួតបាល់ទះតាមភូមិ...",
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
    );
  }
}
