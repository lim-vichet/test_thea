import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../screens/food_detail/ahmok.dart';
import '../screens/food_detail/anlouk.dart';
import '../screens/food_detail/food_detail.dart';
import '../screens/food_detail/fried_fish.dart';
import '../screens/food_detail/mchou.dart';
import '../screens/food_detail/mchou_ktis.dart';
import '../screens/food_detail/noodle.dart';
import '../screens/food_detail/num_khmer.dart';
import '../screens/food_detail/num_krok.dart';
import '../screens/food_detail/papaya.dart';
import '../screens/food_detail/pongteakon.dart';
import '../screens/food_detail/prahok_beef_belly.dart';
import '../screens/food_detail/roast_beef.dart';
import '../screens/food_detail/sangvak.dart';
import '../screens/food_detail/trape.dart';

class FoodAreaScreen extends StatefulWidget {
  const FoodAreaScreen({Key? key}) : super(key: key);

  @override
  State<FoodAreaScreen> createState() => _FoodAreaScreenState();
}

class _FoodAreaScreenState extends State<FoodAreaScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 1000,
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, FoodDetail.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("តុំយាំបង្កង",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 5,
                  child: CircleAvatar(
                    maxRadius: 41,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage("https://2.bp.blogspot.com/-EE_5S1rev6o/WQyXzJFFupI/AAAAAAAAAG8/LV0Uwz-QM9woqHpmIqeJ7kVlyd2qD1xUQCLcB/w680/1461726527322.jpg"),
                    ),
                  )
                ),
                Positioned(
                  bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, PongteakonScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ពងទាកូន",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEish61sWJYptnQXoW_c8rq8phv0VX-oPZJJUIrwJXy3TEaw75r8BORcPlAUcfQHruBcpL1cHD0UTUs1Z1-HVtfzCM5DA3Z9tww6oAfL2QBCr0CR4cxxzi8jOFcDyAQpUH-c-qbDfvzG0Vq4bYNbjIbySxN0KirZfvKSwM3hXm8cXiYFH0erm21ZR8JfzQ/s800/64733c0a0d884e5184ee7c46d6b2cf8d.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, MchouKtisScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ម្ជូរខ្ទិះគមដូង",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://i.ytimg.com/vi/Mx9txlDtAWQ/maxresdefault.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, AhmokScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("អាម៉ុកអប់ខ្ទិះដូង",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ88vtunMJ3nyAcpG_794ydjgtqDt_Z2JAq6Q&usqp=CAU"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, NumKrokScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("នំគ្រក់អង្គតាសោម",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://1.bp.blogspot.com/-cUE-rA-4FHk/WgFt7zCF0GI/AAAAAAAAAqY/4DJ1dZtCS_8-AW6B9V1XD30UtqZdwDo0QCLcBGAs/s1600/image3.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, AnloukScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("អន្លក់គ្រឿងស្រុកស្រែ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://lareine.com.kh/wp-content/uploads/2020/02/106-1.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, MchouScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ម្ជូរថ្មី ស្រីចង់",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://images.deliveryhero.io/image/fd-kh/LH/h0ee-hero.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, FriedFishScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ត្រីបំពងស្វាយខ្ចី",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://d1sag4ddilekf6.azureedge.net/compressed_webp/items/KHITE20221215090411011686/detail/b0a3ed45bb6e4419be45ddeab18fc9c4_1671096627086989795.webp"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoastBeefScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("គោអាំងជ្រក់ល្ហុង",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://images.deliveryhero.io/image/fd-kh/LH/b8ix-hero.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, PrahokBeefBellyScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ពោះគោទឹកប្រហុក",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://i.ytimg.com/vi/HZpxBpOyYYQ/maxresdefault.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, NoodleScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("នំបញ្ចុកសម្លរខ្មែរ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB9lJ9AtzwIsXXMXCTTzc1WgB0y5XF2PRdiTlcim_wzEdGji_-cnTSBVTOKrhV0IOTCFk&usqp=CAU"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, PapayaScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("បុកល្ហុងគ្រឿងសមុទ្រ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://www.knongsrok.com/wp-content/uploads/2019/06/61354091_1270428453112455_572115422220910592_n.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, TrapeScreen.routeName);
              },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ត្រប៉ែខ្មៅ កូនមូក",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://i.ytimg.com/vi/oDyVJN_BRyo/maxresdefault.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, NumKhmerScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("នំខ្មែរ ថែដូនតា",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://www.ais.edu.kh/wp-content/uploads/2022/02/photo_2022-02-24_07-29-57.jpg"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, SangvakScreen.routeName);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.px,left: 10.px),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.px),
                    child: Container(
                      // color: Colors.orange,
                      width: 160,
                      height: 230,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 50.px),
                        padding: EdgeInsets.only(top: 40.px, left: 10.px),
                        width: 170,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("សង្វាក់ខ្មែរ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text("តើ​បងៗជា​ស្ត្រី​មេ​ផ្ទះចង់​ដឹង​ពី​របៀប​ធ្វើ​ម្ហូប​មួយ​មុខ​ទៀត​ដែល​មាន​រស់​ជាតិ​ឆ្ងាញ់​ពិសារ​ដែរ ឬ​ទេ? ..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 50,
                    top: 5,
                    child: CircleAvatar(
                      maxRadius: 41,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage("https://refile.tnaot.com/image/2019/05/26/9642e5c7f17c4eb188cce4cc1ad24cb1.jpg?x-oss-process=image/watermark,image_RS5wbmc_eC1vc3MtcHJvY2Vzcz1pbWFnZS9yZXNpemUsUF8yMA"),
                      ),
                    )
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.double_arrow,
                          size: 20.px,
                          color: Colors.red,
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
