

import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_colors.dart';

class AmazonScreen extends StatefulWidget {
  static String routeName = 'AmazonScreen';
  const AmazonScreen({Key? key}) : super(key: key);

  @override
  State<AmazonScreen> createState() => _AmazonScreenState();
}

class _AmazonScreenState extends State<AmazonScreen> {
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
              child: Image.network("https://png.pngtree.com/thumb_back/fh260/back_our/20190620/ourmid/pngtree-splash-milk-strawberry-yogurt-machine-psd-layered-main-picture-background-material-image_150852.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                children: [
                  Container(

                    height: 250,
                    margin: EdgeInsets.only(bottom: 50.px, top: 50.px, right: 40.px, left: 40.px),
                    // color: Colors.pink,
                    child: Center(
                        child: Image.network("https://www.cafe-amazon.com/BackEnd/TempProducts/d840e7ee1209449fb95b548ac85e42b8.png")
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
                                          maxRadius: 32,
                                          backgroundColor: Colors.pink,
                                          child: CircleAvatar(
                                            maxRadius: 30,
                                            backgroundColor: Colors.white,
                                            backgroundImage: NetworkImage(
                                                "https://www.cafe-amazon.com/BackEnd/TempProducts/d840e7ee1209449fb95b548ac85e42b8.png"),
                                          ),
                                        )
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10.px , top: 8.px),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("កាហ្វេប្រែនខេត្តតាកែវ",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.pink
                                            ),
                                          ),
                                          Text("ខេត្តតាកែវ មានហាងកាហ្វេជាច្រើន និងមានតំ...",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.pink
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
                                          color: Colors.pink
                                      ),
                                    ),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.pink
                                    ),"       តាកែវ ជាខេត្តមួយមានសក្ដានុពលផ្នែកទេសចរណ៍បែបប្រវត្តិសាស្ត្រ វប្បធម៌ និងធម្មជាតិ ដែលមានស្ថាបត្យកម្មបុរាណជាច្រើននៅក្នុងខេត្តមួយនេះ ដូចជា ប្រាសាទបុរាណ សំណង់គ្រឹះបុរាណ វត្តបុរាណ ទួលបុរាណ និងកន្លែងផ្សេងៗទៀត។ ស្ថាបត្យកម្មបុរាណ និងទីតាំងទេសចរណ៍ក្នុងខេត្ត ជាកត្តាដ៏សំខាន់ដើម្បីទាក់ទាញភ្ញៀវទេសចរប្រមាណ ៦០ម៉ឺននាក់ក្នុងមួយឆ្នាំៗ។"),
                                    SizedBox(height: 15.px,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15.px),
                                      child: Container(
                                        height: 190,
                                        child: Image.network("https://kohsantepheap.tv/wp-content/uploads/2017/06/Starbucks-Reserve-Coffee-Experience-Bar.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.pink
                                    ),"បើតាមបញ្ជីស្ថានីយបុរាណនៅប្រទេសកម្ពុជា  របស់ក្រសួងវប្បធម៌ និងវិចិត្រសិល្បៈ ខេត្តតាកែវ មានប្រាសាទបុរាណចំនួន១៦ សំណង់គ្រឹះប្រាសាទបាក់បែកចំនួន៦ ទួលបុរាណចំនួន២៥ វត្តបុរាណចំនួន៣១៣ និងស្រះដែលជាទីតាំងយកថ្មចំនួន៣។ ស្ថាបត្យកម្មក្នុងខេត្តនេះ បានរំលេចនូវព្រលឹងនៃស្ថាបត្យកម្ម រូបបដិមា វប្បធម៌ និងសាសានា។"),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.pink
                                    ),"តំបន់វប្បធម៌ប្រវត្តិសាស្រ្ត និងធម្មជាតិចំនួន៥កន្លែង មានដូចជា ភ្នំដា ភ្នំបាយ៉ង់កោរ ភ្នំជីសូរ្យ ភ្នំតាម៉ៅ និង ប្រាសាទតាព្រហ្ម នៅទន្លេបាទី ព្រមទាំងរមណីយដ្ឋានទេសចរណ៍វប្បធម៌ និងធម្មជាតិ២កន្លែង គឺភ្នំខ្លែង និងភ្នំជីតាពេជ្រ។ ជាមួយគ្នានេះ ខេត្តតាកែវ មានរមណីយដ្ឋានធម្មជាតិមួយកន្លែង គឺជ្រោះផ្អោក និងរមណីយដ្ឋានទេសចរណ៍កែច្នៃមួយកន្លែងទៀត គឺកំពូលពេជ្រ។ "),
                                    SizedBox(height: 15.px,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15.px),
                                      child: Container(
                                        height: 190,
                                        child: Image.network("https://m.postkhmer.com/sites/default/files/styles/full-screen/public/field/image/20150430_06.jpg?itok=3VJ9j_QJ",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.pink
                                    ),"ក្នុងចំណោមទីតាំងរមណីយដ្ឋានទេសចរណ៍ទាំងអស់នេះ តំបន់ទេសចរណ៍ចំនួន៦កន្លែង ដែលបានទាក់ទាញភ្ញៀវទេសចរច្រើន គឺភ្នំជីសូរ្យ ភ្នំតាម៉ៅ ទន្លេបាទី កំពូលពេជ្រ ភ្នំដា និងជ្រោះផ្អោក៕ "),
                                    SizedBox(height: 15.px,),
                                    Text(style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.pink
                                    ),"តាកែវ ជាខេត្តមួយមានសក្ដានុពលផ្នែកទេសចរណ៍បែបប្រវត្តិសាស្ត្រ វប្បធម៌ និងធម្មជាតិ ដែលមានស្ថាបត្យកម្មបុរាណជាច្រើននៅក្នុងខេត្តមួយនេះ ដូចជា ប្រាសាទបុរាណ សំណង់គ្រឹះបុរាណ វត្តបុរាណ ទួលបុរាណ និងកន្លែងផ្សេងៗទៀត។ ស្ថាបត្យកម្មបុរាណ និងទីតាំងទេសចរណ៍ក្នុងខេត្ត ជាកត្តាដ៏សំខាន់ដើម្បីទាក់ទាញភ្ញៀវទេសចរប្រមាណ ៦០ម៉ឺននាក់ក្នុងមួយឆ្នាំៗ។"),
                                    SizedBox(height: 15.px,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15.px),
                                      child: Container(
                                        height: 190,
                                        child: Image.network("https://cdn.pixabay.com/photo/2021/07/15/06/47/coffee-6467644_960_720.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15.px,),

                                    Text("រាបរៀងដោយ: \n លោក លឹម វិចិត្រ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.pink
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
