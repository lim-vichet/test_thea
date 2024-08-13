import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_dimensions.dart';
import '../../../utils/constants/app_font_styles.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AppbarAnimation extends StatefulWidget {
  static String routeName = '/AppbarAnimation';
  const AppbarAnimation({Key? key}) : super(key: key);

  @override
  State<AppbarAnimation> createState() => _AppbarAnimationState();
}

class _AppbarAnimationState extends State<AppbarAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar:
        const ColorBuilder(Colors.transparent, Colors.red),
        textColorAppBar: const ColorBuilder(Colors.white),
        appBarBuilder: _appBar,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200.px,
                    width: double.infinity,
                    child:CachedNetworkImage(
                      // width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.width / 2.5.px,
                      imageUrl:
                      "https://images.deliveryhero.io/image/fd-kh/LH/qldq-hero.jpg",
                      placeholder: (context, url) => Center(
                        child: SizedBox(
                          width: 30.px,
                          height: 30.px,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors().white),
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                      const Icon(Icons.image_not_supported_outlined),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Container(
                // color: Colors.pink,
                margin: EdgeInsets.only(top:AppDimension().mediumSpace),
                height: 40.px,
                child: Center(
                  child: Text("Drinks",
                    style: AppFontStyle().textL(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal:AppDimension().mediumSpace ),
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                   return Container(
                     color: Colors.red,
                     height: 100.px,
                   );
                    // return  const ProductItem();
                    //   ProductItem(
                    //   index: index,
                    //   textMaxLine: 5,
                    //   isFromDetail: false,
                    //   data: oldData[index],
                    // );
                  },
                ),
              ),
            ],
          ),

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
