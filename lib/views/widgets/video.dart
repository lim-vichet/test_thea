import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  List Urlvideo = ['https://youtu.be/PtqmND5xgQU?t=4', 'https://youtu.be/PhxUIrs9fd0?t=1'];

  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceSafariVC: true);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 180,
      // color: Colors.orange,
      padding: EdgeInsets.only(left: 8.px),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/PhxUIrs9fd0?t=1');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://i.ytimg.com/vi/pFUmiges0qY/maxresdefault.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ដើមកំណើតខេត្តតាកែវ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/ZXXfb24AqPA?t=10');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://www.guidetrip.info/asset/img/gallery_destination/5b28c3879be70.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ភូមិសាស្ត្រខេត្តតាកែវ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/TKyxMomppDs?t=10');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://s.rfi.fr/media/display/6265390c-7111-11ec-a285-005056a90284/w:1280/p:16x9/sakkarach-thumb-1610.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "បង្កងធម្មជាតិតាកែវ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/aMf_IQIApwg?t=4');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://i0.wp.com/postnews.com.kh/wp-content/uploads/2016/11/Baby-duck-egg2.jpg?resize=630%2C403&ssl=1",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ពងទាកូនខេត្តតាកែវ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/xl586PsgLpw?t=2');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://2.bp.blogspot.com/-RXNyjlTs7Sw/Xw04VD5QAJI/AAAAAAAAbPU/Mu6PerX8hmwCGYHATgyDQeHep6k-lQoiwCLcBGAsYHQ/s1600/pp21476163596%2B%252823%2529.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "សម្លរម្ជូរគ្រឿងអ្នកតាកែវ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/FznQCxGyQzw?t=44');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://demo.cambodia.gov.kh/wp-content/uploads/2021/02/Takeo-%E1%9E%87%E1%9E%B8%E1%9E%8F%E1%9E%B6%E1%9E%96%E1%9F%81%E1%9E%87%E1%9F%92%E1%9E%9A-2.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ចម្រៀង: គីរីវង្សអន្លង់ស្នេហ៍",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/_pYRTAMFYi8?t=39');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://dap-news.com/wp-content/uploads/2021/04/496.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ចម្រៀង: តាកែវដួងចិត្ត",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/0LKNPTDFLlY?t=16');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://www.knongsrok.com/wp-content/uploads/2020/06/Cover-Tram.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ចម្រៀង: ត្រាំកក់នឹកស្នេហ៍",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/WOI7IIa_S10?t=23');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://1.bp.blogspot.com/-Rz9vDmitxZ0/X7ICFg4xd0I/AAAAAAAACQ4/hqqzljdvucsFvu4EWfa7AsMnZqY-zB33ACLcBGAsYHQ/s0/photo_2020-11-16_11-36-24.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ចម្រៀង: តាកែវស្នាម...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/GWBvrBe9LCw?t=40');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "http://spktliv.com/wp-content/uploads/2019/01/%E1%9F%A1-2.png",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ប្រាសាទភ្នំជីសូរ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/PJA1Z_HOqbI?t=132');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://www.takeo.gov.kh/wp-content/uploads/sites/3/2019/08/%E1%9E%94%E1%9F%92%E1%9E%9A%E1%9E%B6%E1%9E%9F%E1%9E%B6%E1%9E%91%E1%9E%97%E1%9F%92%E1%9E%93%E1%9F%86%E1%9E%8A%E1%9E%B6%E1%9E%81%E1%9F%81%E1%9E%8F%E1%9F%92%E1%9E%8F%E1%9E%8F%E1%9E%B6%E1%9E%80%E1%9F%82%E1%9E%9C.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ប្រាសាទភ្នំដា...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/jxRnZ36ETec?t=598');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://www.popular.com.kh/wp-content/uploads/2020/10/%E1%9E%97%E1%9F%92%E1%9E%93%E1%9F%86%E1%9E%94%E1%9E%B6%E1%9E%99%E1%9F%89%E1%9E%84%E1%9F%8B%E1%9E%80%E1%9F%84.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ប្រាសាទភ្នំបាយ៉ង់កោ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/7ETGiT0Y_0U?t=4');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://www.visitcambodia.travel/upload/files/resized/vuth_1623578870_26311_56042.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ប្រាសាទភ្នំខ្លែង...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/WvZMJMfLSdU?t=641');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://oss6.tnaot.com/tnaot/image/2022/07/17/84e2abe86ec34640835b221d2f85c9f3.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ប្រាសាទនាងខ្មៅ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/pKxTXNLr8FQ?t=4');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://2.bp.blogspot.com/-cgjU8B0ZIis/XTq-wxIY8UI/AAAAAAAAV8w/a-vc_YnFVnURmvsPLJ6EV-4N6IToEBagwCLcBGAs/s1600/66427535_1653245961472815_4301664618893279232_n.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "ប្រាសាទតាពរហ្ម(បាទី)...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/EdAzM2qMDDk?t=154');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://4.bp.blogspot.com/-wzpRtkuQ6wQ/XTq-uUPsT4I/AAAAAAAAV8Y/0vnncBFvaucE7K880EIy8ZWpMt9KIiaCgCLcBGAs/s1600/65056340_2542895239054125_1976173989726257152_o.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "រមណីយដ្ឋានទន្លេបាទី...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/vvtCUQPVplA?t=3');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://www.popular.com.kh/wp-content/uploads/2022/08/photo_2022-05-11_14-57-07.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://seeklogo.com//images/Y/youtube-2017-icon-logo-D1FE045118-seeklogo.com.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "រមណីយដ្ឋានភ្នំតាម៉ៅ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/hhMpUjlxIfo?t=173');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://cdn.sabay.com/cdn/media.sabay.com/media/Kley-Kley/KK-Social/11-04-2018/1_medium.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "រមណីយដ្ឋានអន្លង់ភ្ញៀវ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/wjwqomPz-Ss?t=103');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://reaksa.com/wp-content/uploads/2020/03/%E1%9E%9A%E1%9E%98%E1%9E%8E%E1%9E%B8%E1%9E%99%E1%9E%8A%E1%9F%92%E1%9E%8B%E1%9E%B6%E1%9E%93%E1%9E%96%E1%9E%BB%E1%9E%91%E1%9F%92%E1%9E%92%E1%9E%82%E1%9E%B8%E1%9E%9A%E1%9E%B8-%E2%80%93-%E1%9E%8F%E1%9F%86%E1%9E%94%E1%9E%93%E1%9F%8B%E1%9E%92%E1%9E%98%E1%9F%92%E1%9E%98%E1%9E%87%E1%9E%B6%E1%9E%8F%E1%9E%B7_5.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "រមណីយដ្ឋានពុទ្ធគីរី...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/VIRmxHNt-LI?t=25');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1uiWLJ5EX8e8zU1kRcBbJTBSjF_PI8tahLDUYJ_EikTG3wp4pKVJf50su5dpbmWiC-gg&usqp=CAU",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "រមណីយត្រីមាស...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/D4oU7pn9eDw?t=68');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://4.bp.blogspot.com/-_T_OWVBh2lY/W8leEhWWNvI/AAAAAAAANTs/mD6bQdNcO8U1YRuVphtIJkodIaoiXzwUQCLcBGAs/s1600/43590290_2207380659543293_978145554322161664_n.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "រមណីយទឹកជ្រោះផ្អោក...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              _launchUniversalLinkIos('https://youtu.be/MtPDbP1BzXY?t=722');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.px),
                        child: Container(
                          width: 200,
                          height: 130,
                          child: Image.network(
                            "https://1.bp.blogspot.com/-WDnRuxUg6SQ/XZVgyiUN2VI/AAAAAAAAYF0/fvIueUc5g_YzH_G1aJRcqo9PKZBGUN57wCLcBGAsYHQ/s1600/67349266_2496385383924685_6758785584681975808_n.jpg",
                            fit: BoxFit.cover,
                            // image: AssetImage("images/launchScreen@3x.png"),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 60,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(
                          "https://www.transparentpng.com/thumb/youtube/youtube-logo-png-transparent-images-5.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 180,
                  // color: Colors.red,
                  child: Text(
                    "រមណីយស្ពានត្នោតទេ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
