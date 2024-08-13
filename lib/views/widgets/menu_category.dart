import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../screens/accommodation/accommodation.dart';
import '../screens/cafe_detail/cafe_detail_screen.dart';
import '../screens/chat.dart';
import '../screens/food_detail/food_detail.dart';
import '../screens/location/home_location.dart';
import '../screens/news/news.dart';
import '../screens/sub_category/sub_category.dart';
import '../screens/sub_category_detail/sub_category_detail.dart';

class MenuCategoryScreen extends StatefulWidget {
  const MenuCategoryScreen({Key? key}) : super(key: key);

  @override
  State<MenuCategoryScreen> createState() => _MenuCategoryScreenState();
}

class _MenuCategoryScreenState extends State<MenuCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 100,
      color: Colors.green,
      child: ListView(
        scrollDirection: Axis.horizontal,
        primary: true,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, SubCategory.routeName);
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 25.px, left: 15.px),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.edit_location_alt,
                      color: Colors.white,
                      size: 40.px,
                    ),
                  ),
                ),
                Center(
                  child: Text
                    ("ដំបន់ដើរលេង"
                  ),
                ),

                /// KKKK..
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, SubCategoryDetail.routeName);
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 20.px, left: 10.px),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.surfing,
                      color: Colors.white,
                      size: 40.px,
                    ),
                  ),
                ),
                Text("សកម្មភាព"),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, FoodDetail.routeName);
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 20.px, left: 10.px),
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.dining,
                      color: Colors.white,
                      size: 40.px,
                    ),
                  ),
                ),
                Text("អាហារ"),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, CafeDetailScreen.routeName);
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 20.px, left: 10.px),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.local_cafe,
                      color: Colors.white,
                      size: 40.px,
                    ),
                  ),
                ),
                Text("កាហ្វេ"),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, AccommodationScreen.routeName);
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 20.px, left: 10.px),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.bed,
                      color: Colors.white,
                      size: 40.px,
                    ),
                  ),
                ),
                Text("កន្លែងស្នាក់"),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.only(right: 20.px, left: 10.px),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 40.px,
                  ),
                ),
              ),
              Text("ផ្សារ"),
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.only(right: 20.px, left: 10.px),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.groups,
                    color: Colors.white,
                    size: 40.px,
                  ),
                ),
              ),
              Text("សហគមន៍"),
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.only(right: 20.px, left: 10.px),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.accessibility,
                    color: Colors.white,
                    size: 40.px,
                  ),
                ),
              ),
              Text("ហាត់ប្រាណ"),
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.only(right: 20.px, left: 10.px),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.face_retouching_natural,
                    color: Colors.white,
                    size: 40.px,
                  ),
                ),
              ),
              Text("សាឡន"),
            ],
          ),
          Column(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.only(right: 20.px, left: 10.px),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.baby_changing_station,
                    color: Colors.white,
                    size: 40.px,
                  ),
                ),
              ),
              Text("ម៉ាស្សា"),
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, NewsScreen.routeName);
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 20.px, left: 10.px),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.web,
                      color: Colors.white,
                      size: 40.px,
                    ),
                  ),
                ),
                Text("ព័ត៍មាន"),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, ChatScreen.routeName);
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: 20.px, left: 10.px),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.chat,
                      color: Colors.white,
                      size: 40.px,
                    ),
                  ),
                ),
                Text("Chat"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
