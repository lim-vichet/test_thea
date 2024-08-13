
import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_colors.dart';

class FriedFishScreen extends StatefulWidget {
  static String routeName = '/FriedFishScreen';
  const FriedFishScreen({Key? key}) : super(key: key);

  @override
  State<FriedFishScreen> createState() => _FriedFishScreenState();
}

class _FriedFishScreenState extends State<FriedFishScreen> {
  @override
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
              color: Colors.green,
              // child: Image.network("https://live.staticflickr.com/3845/14377813782_bdf5309a91_b.jpg",
              //   fit: BoxFit.cover,
              // ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                children: [
                  Container(
                    height: 250,
                    margin: EdgeInsets.only(bottom: 50.px, top: 50.px),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 5, color: Colors.white, spreadRadius: 3)],
                    ),
                    // color: Colors.pink,
                    child: Center(
                        child: CircleAvatar(
                          maxRadius: 131,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            maxRadius: 130,
                            backgroundImage: NetworkImage(
                                "https://d1sag4ddilekf6.azureedge.net/compressed_webp/items/KHITE20221215090411011686/detail/b0a3ed45bb6e4419be45ddeab18fc9c4_1671096627086989795.webp"),
                          ),

                        )
                    ),
                  ),
                  Container(
                    height: 470,
                    padding: EdgeInsets.only(top: 15.px, left: 5.px, right: 5.px),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 80.px,
                                padding: EdgeInsets.only(left: 15.px),
                                child: Row(
                                  children: [
                                    Container(
                                        child: CircleAvatar(
                                          maxRadius: 31,
                                          backgroundColor: Colors.red,
                                          child: CircleAvatar(
                                            maxRadius: 30,
                                            backgroundImage: NetworkImage(
                                                "https://d1sag4ddilekf6.azureedge.net/compressed_webp/items/KHITE20221215090411011686/detail/b0a3ed45bb6e4419be45ddeab18fc9c4_1671096627086989795.webp"),
                                          ),
                                        )
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10.px , top: 8.px),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("ត្រីបំពងអ្នកតាកែវ",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green
                                            ),
                                          ),
                                          Text("ខេត្តតាកែវ មានមុខម្ហូបជាច្រើន និងមានតំ...",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.green
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 6.px),
                                padding: EdgeInsets.only(left: 10.px, bottom: 10.px),
                                decoration: BoxDecoration(
                                  // color: Colors.orange,
                                    border: Border(
                                      bottom: BorderSide(width: 0.5, color: Colors.grey),
                                    )
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.px, right: 10.px),
                                // padding: EdgeInsets.all(20.px),
                                width: double.infinity,
                                height: 300,
                                // color: Colors.red,
                                child: ListView(
                                  scrollDirection: Axis.vertical,
                                  primary: true,
                                  children: [
                                    Text("03/03/2023",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.green
                                      ),
                                    ),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green
                                    ),"       តាកែវ ជាខេត្តមួយមានសក្ដានុពលផ្នែកទេសចរណ៍បែបប្រវត្តិសាស្ត្រ វប្បធម៌ និងធម្មជាតិ ដែលមានស្ថាបត្យកម្មបុរាណជាច្រើននៅក្នុងខេត្តមួយនេះ ដូចជា ប្រាសាទបុរាណ សំណង់គ្រឹះបុរាណ វត្តបុរាណ ទួលបុរាណ និងកន្លែងផ្សេងៗទៀត។ ស្ថាបត្យកម្មបុរាណ និងទីតាំងទេសចរណ៍ក្នុងខេត្ត ជាកត្តាដ៏សំខាន់ដើម្បីទាក់ទាញភ្ញៀវទេសចរប្រមាណ ៦០ម៉ឺននាក់ក្នុងមួយឆ្នាំៗ។"),
                                    SizedBox(height: 15.px,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15.px),
                                      child: Container(
                                        height: 190,
                                        child: Image.network("https://i.ytimg.com/vi/hDNjx-Z1j5s/maxresdefault.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green
                                    ),"បើតាមបញ្ជីស្ថានីយបុរាណនៅប្រទេសកម្ពុជា  របស់ក្រសួងវប្បធម៌ និងវិចិត្រសិល្បៈ ខេត្តតាកែវ មានប្រាសាទបុរាណចំនួន១៦ សំណង់គ្រឹះប្រាសាទបាក់បែកចំនួន៦ ទួលបុរាណចំនួន២៥ វត្តបុរាណចំនួន៣១៣ និងស្រះដែលជាទីតាំងយកថ្មចំនួន៣។ ស្ថាបត្យកម្មក្នុងខេត្តនេះ បានរំលេចនូវព្រលឹងនៃស្ថាបត្យកម្ម រូបបដិមា វប្បធម៌ និងសាសានា។"),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green
                                    ),"តំបន់វប្បធម៌ប្រវត្តិសាស្រ្ត និងធម្មជាតិចំនួន៥កន្លែង មានដូចជា ភ្នំដា ភ្នំបាយ៉ង់កោរ ភ្នំជីសូរ្យ ភ្នំតាម៉ៅ និង ប្រាសាទតាព្រហ្ម នៅទន្លេបាទី ព្រមទាំងរមណីយដ្ឋានទេសចរណ៍វប្បធម៌ និងធម្មជាតិ២កន្លែង គឺភ្នំខ្លែង និងភ្នំជីតាពេជ្រ។ ជាមួយគ្នានេះ ខេត្តតាកែវ មានរមណីយដ្ឋានធម្មជាតិមួយកន្លែង គឺជ្រោះផ្អោក និងរមណីយដ្ឋានទេសចរណ៍កែច្នៃមួយកន្លែងទៀត គឺកំពូលពេជ្រ។ "),
                                    SizedBox(height: 15.px,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15.px),
                                      child: Container(
                                        height: 190,
                                        child: Image.network("https://i.ytimg.com/vi/HC6CLoZVWAo/maxresdefault.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green
                                    ),"ក្នុងចំណោមទីតាំងរមណីយដ្ឋានទេសចរណ៍ទាំងអស់នេះ តំបន់ទេសចរណ៍ចំនួន៦កន្លែង ដែលបានទាក់ទាញភ្ញៀវទេសចរច្រើន គឺភ្នំជីសូរ្យ ភ្នំតាម៉ៅ ទន្លេបាទី កំពូលពេជ្រ ភ្នំដា និងជ្រោះផ្អោក៕ "),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green
                                    ),"តាកែវ ជាខេត្តមួយមានសក្ដានុពលផ្នែកទេសចរណ៍បែបប្រវត្តិសាស្ត្រ វប្បធម៌ និងធម្មជាតិ ដែលមានស្ថាបត្យកម្មបុរាណជាច្រើននៅក្នុងខេត្តមួយនេះ ដូចជា ប្រាសាទបុរាណ សំណង់គ្រឹះបុរាណ វត្តបុរាណ ទួលបុរាណ និងកន្លែងផ្សេងៗទៀត។ ស្ថាបត្យកម្មបុរាណ និងទីតាំងទេសចរណ៍ក្នុងខេត្ត ជាកត្តាដ៏សំខាន់ដើម្បីទាក់ទាញភ្ញៀវទេសចរប្រមាណ ៦០ម៉ឺននាក់ក្នុងមួយឆ្នាំៗ។"),
                                    SizedBox(height: 15.px,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15.px),
                                      child: Container(
                                        height: 190,
                                        child: Image.network("https://jongphov.com/wp-content/uploads/2022/06/photo_2022-05-20_21-33-08.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.px,),

                                    Text("រាបរៀងដោយ: \n លោក លឹម វិចិត្រ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.green
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
