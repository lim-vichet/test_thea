
import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_colors.dart';
import '../../widgets/detail_card.dart';

class ClimbingScreen extends StatefulWidget {
  static String routeName = 'ClimbingScreen';
  const ClimbingScreen({Key? key}) : super(key: key);

  @override
  State<ClimbingScreen> createState() => _ClimbingScreenState();
}

class _ClimbingScreenState extends State<ClimbingScreen> with SingleTickerProviderStateMixin{
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
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar:
        const ColorBuilder(Colors.transparent, Colors.red),
        textColorAppBar: const ColorBuilder(Colors.white),
        appBarBuilder: _appBar,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 395.px),
              child: Image.network("https://www.popular.com.kh/wp-content/uploads/2020/06/%E1%9E%81%E1%9F%92%E1%9E%93%E1%9E%84%E1%9E%95%E1%9F%92%E1%9E%9F%E1%9E%B6%E1%9E%9A%E1%9F%A1-1.jpg",
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
                    // child: Image.network("https://th.bing.com/th/id/R.cb3f1710920e6624f66531a6006db3d5?rik=UMDLe652e3VjDw&riu=http%3a%2f%2fimage14.hanatour.com%2fuploads%2f2015%2f03%2fgon-25-682x1023.jpg&ehk=jkV3WTrCsqgsAppFBLMiEvx8PXKXvwKp1Eh3kHANwto%3d&risl=&pid=ImgRaw&r=0",
                    //   fit: BoxFit.cover,
                    //   // image: AssetImage("images/launchScreen@3x.png"),
                    //
                    // ),
                  ),
                  Container(
                    height: 2000,
                    padding: EdgeInsets.only(top: 15.px, left: 5.px, right: 5.px),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                    ),
                    child: Column(
                      children: [
                        DetailCard(),
                      ],
                    ),
                  ),
                ],
              ),
            )
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

