
import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../utils/constants/app_colors.dart';

class AhmokScreen extends StatefulWidget {
  static String routeName = '/AhmokScreen';
  const AhmokScreen({Key? key}) : super(key: key);

  @override
  State<AhmokScreen> createState() => _AhmokScreenState();
}

class _AhmokScreenState extends State<AhmokScreen> {
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
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ88vtunMJ3nyAcpG_794ydjgtqDt_Z2JAq6Q&usqp=CAU"),
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
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ88vtunMJ3nyAcpG_794ydjgtqDt_Z2JAq6Q&usqp=CAU"),
                                          ),
                                        )
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10.px , top: 8.px),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("អាម៉ុកខេត្តតាកែវ",
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
                                        child: Image.network("https://4.bp.blogspot.com/-enicNfw9tOo/V-Ud7x_UZpI/AAAAAAAABC4/Qf5uHI0ddwwYwBMCNU2WishK8NbePmgiACLcB/s1600/34.%25E0%25B8%25AB%25E0%25B9%2588%25E0%25B8%25AD%25E0%25B8%25AB%25E0%25B8%25A1%25E0%25B8%2581%25E0%25B9%2580%25E0%25B8%2588_6_1.1.860_490X960.Jpeg",
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
                                        child: Image.network("http://image.freshnewsasia.com/2019/fn-2019-08-22-13-10-47-5.jpg",
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
                                        child: Image.network("http://1.bp.blogspot.com/-h3W3oiZTqec/VSfo1xgO6oI/AAAAAAAAAE4/XAJxmjKRoho/s1600/ce508cb789179ffe499a2eae85d16930a7314ba5.jpg",
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
