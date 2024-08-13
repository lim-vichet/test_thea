import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({Key? key}) : super(key: key);

  @override
  State<SlideScreen> createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      // color: Colors.orange,
      padding: EdgeInsets.only(left: 10,right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.px),
        child: ImageSlideshow(
          /// Width of the [ImageSlideshow].
          width: double.infinity,

          /// Height of the [ImageSlideshow].
          height: 200,

          /// The page to show when first creating the [ImageSlideshow].
          initialPage: 0,

          /// The color to paint the indicator.
          indicatorColor: Colors.blue,

          /// The color to paint behind th indicator.
          indicatorBackgroundColor: Colors.grey,

          /// Called whenever the page in the center of the viewport changes.
          onPageChanged: (value) {
            print('Page changed: $value');
          },

          /// Auto scroll interval.
          /// Do not auto scroll with null or 0.
          autoPlayInterval: 3000,

          /// Loops back to first slide.
          isLoop: true,

          /// The widgets to display in the [ImageSlideshow].
          /// Add the sample image file into the images folder
          children: [
            Image(
              image: NetworkImage("https://cms.dmpcdn.com/cdn-cgi/image/fit=cover,quality=85,f=auto/https://cms.dmpcdn.com/article/2020/12/29/67928a90-49b4-11eb-89e4-35f1a97d3869_original.jpg"),
              fit: BoxFit.cover,
            ),
            Image(
              image: NetworkImage("https://1.bp.blogspot.com/-p7_ce-eLzhE/WA8x82djI_I/AAAAAAAARzI/UL_C16JYJvQysJCj0avA80--8bm26bPxQCLcB/s1600/independence-monument6.jpg"),
              fit: BoxFit.cover,
            ),
            Image(
              image: NetworkImage("https://cdn.cambonomist.com/media/images/117179391_4764419720298456_9201771.2e16d0ba.fill-960x540.jpg"),
              fit: BoxFit.cover,
            ),
            Image(
              image: NetworkImage("https://cdn.sabay.com/cdn/media.sabay.com/media/Kley-Kley/KK-Social/11-04-2018/1_medium.jpg"),
              fit: BoxFit.cover,
            ),
            Image(
              image: NetworkImage("https://i.ytimg.com/vi/BS6ZZK2Y4XU/maxresdefault.jpg"),
              fit: BoxFit.cover,
            ),
            Image(
              image: NetworkImage("https://1.bp.blogspot.com/-CRXngtBJq5M/WRFCGijS1dI/AAAAAAAAA94/rf61jb-wVjQeK4MTmhfTDfkS6dCYW37jgCLcB/s1600/%25E1%259E%2596%25E1%259E%2584%25E1%259E%2591%25E1%259E%25B6%25E1%259E%2580%25E1%259E%25BC%25E1%259E%2593.jpg"),
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
