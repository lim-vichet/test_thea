
import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/constants/app_colors.dart';
import '../widgets/detail_card.dart';

class ChatScreen extends StatefulWidget {
  static String routeName = 'ChatScreen';
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Center(child: Text("Chat")),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20.px,)
        ],
      ),
      drawer: Drawer(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
            padding: EdgeInsets.only(bottom: 395.px),
            // child: Image.network("https://4.bp.blogspot.com/-sjBt8-UjXDk/WlazE-ut36I/AAAAAAAAmLQ/VZwZiaav9tMq4FtiCFBVnVviRi5Zh8c8ACLcBGAs/s1600/image.jpg",
            //   fit: BoxFit.cover,
            //   // image: AssetImage("images/launchScreen@3x.png"),
            //
            // ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              children: [
                Container(
                  height: 50,
                  color: Colors.blue,
                  child: TabBar(
                    controller: _tabController,
                    // give the indicator a decoration (color and border radius)
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      // color: Colors.green,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Chat',
                      ),
                      Tab(
                        text: 'Status',
                      ),
                      Tab(
                        text: 'Call',
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1200,
                  padding: EdgeInsets.only(top: 15.px, left: 5.px, right: 5.px),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            // SizedBox(height: 5.px,),
                            Container(
                              margin: EdgeInsets.only(left: 10.px, right: 10.px),
                              // padding: EdgeInsets.all(20.px),
                              width: 100,
                              height: 100,
                              // color: Colors.red,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 1000,
                                    height: 100,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 50.px,),
                                  Container(
                                    height: 1000,
                                    width: 250,
                                    child: ListView(
                                      scrollDirection: Axis.vertical,
                                      primary: true,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          color: Colors.red,
                                          margin: EdgeInsets.all(5.px),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.px, right: 10.px),
                              // padding: EdgeInsets.all(20.px),
                              width: 100,
                              height: 100,
                              // color: Colors.red,
                              child: ListView(
                                children: [
                                  ListTile(
                                    title: Text("090290544"),
                                    subtitle: Text("mobile"),
                                    leading: Container(
                                        width: 50.px,
                                        height: 50.px,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(50.px)
                                        ),
                                        child: Icon(Icons.phone,
                                          color: Colors.white,
                                        )
                                    ),
                                  ),
                                  ListTile(
                                    title: Text("សូមស្វាគមន៍ខេត្តតាកែវ"),
                                    subtitle: Text("facebook"),
                                    leading: Container(
                                        width: 50.px,
                                        height: 50.px,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(50.px)
                                        ),
                                        child: Icon(Icons.facebook,
                                          color: Colors.white,
                                        )
                                    ),
                                  ),
                                  ListTile(
                                    title: Text("សូមស្វាគមន៍ខេត្តតាកែវ"),
                                    subtitle: Text("youtube"),
                                    leading: Container(
                                        width: 50.px,
                                        height: 50.px,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(50.px)
                                        ),
                                        child: Icon(Icons.play_circle_filled,
                                          color: Colors.white,
                                        )
                                    ),
                                  ),
                                  ListTile(
                                    title: Text("090290544"),
                                    subtitle: Text("telegram"),
                                    leading: Container(
                                        width: 50.px,
                                        height: 50.px,
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(50.px)
                                        ),
                                        child: Icon(Icons.telegram,
                                          color: Colors.white,
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.px, right: 10.px),
                              // padding: EdgeInsets.all(20.px),
                              width: 50,
                              height: 100,
                              // color: Colors.red,
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                primary: true,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.done, color: Colors.green,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 15.px),
                                        child: Text("បោះតង់",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.done, color: Colors.green,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 15.px),
                                        child: Text("អាហារ",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.done, color: Colors.green,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 15.px),
                                        child: Text("ជិះទា",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.done, color: Colors.green,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 15.px),
                                        child: Text("ហែលទឹក",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.done, color: Colors.green,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 15.px),
                                        child: Text("ស្ទូចត្រី",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.done, color: Colors.green,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 15.px),
                                        child: Text("អុំទូក",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.done, color: Colors.green,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 15.px),
                                        child: Text("បាញ់កាំជ្រួច",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
  return AppBar(
    backgroundColor: colorAnimated.background,
    elevation: 0,
    leading:  GestureDetector(
      onTap: (){
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
          child:Icon(
            Icons.arrow_back,
            color: AppColors().black,
            size: 25.px,
          )
      ),
    ),
    actions: [
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 12.px),
        padding: EdgeInsets.symmetric(horizontal: 7,vertical: 6),
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
