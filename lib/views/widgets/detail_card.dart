import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/constants/app_colors.dart';
import '../screens/location/home_location.dart';

class DetailCard extends StatefulWidget {
  const DetailCard({Key? key}) : super(key: key);

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> with SingleTickerProviderStateMixin{

  double lat  = 11.01318354777545;
  double long = 104.67263881105798;
  final Set<Marker> _marker = {};

  late GoogleMapController googleMapController;

  void getCurrentLocation () async{
    await GeolocatorPlatform.instance.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
      // desiredAccuracy: LocationAccuracy.high
    );
    setState(() {
      lat = position.latitude.toDouble();
      long = position.longitude.toDouble();
      _marker.add(
          Marker(
            markerId: const MarkerId("map-1"),
            position: LatLng(lat,long),
          )
      );
    });
    CameraPosition _cameraPosition = new CameraPosition(
      target: LatLng(lat,long),
      zoom: 15,
    );

    googleMapController.animateCamera(
      CameraUpdate.newCameraPosition(_cameraPosition),
    );
  }

  static const CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(11.01318354777545, 104.67263881105798),
    zoom: 15,
  );

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
    getCurrentLocation();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }



  Widget build(BuildContext context) {
    return Container(
      height: 600.px,
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
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaTBYs0P6VEawoeB9YK75yC3t74v9eRelOjAHhTKgud1VbCuHV10fQaOuDSk9clNLDgEA&usqp=CAU"),
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.px , top: 8.px),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("សូមស្វាគមន៍មកកាន់ខេត្តតាកែវ",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("ខេត្តតាកែវ មានប្រាសាទបុរាណ និងមានតំ...",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey
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
            child: TabBar(
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
                color: Colors.green,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'អំពីយើង',
                ),
                Tab(
                  text: 'ទំនាក់ទំនង',
                ),
                Tab(
                  text: 'ចំនុចសំខាន់',
                ),
                Tab(
                  text: 'ផែនទី',
                ),
              ],
            ),
          ),
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
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    primary: true,
                    children: [
                      Text("03/03/2023",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                      SizedBox(height: 15.px,),
                      Text(style: TextStyle(
                          fontSize: 15
                      ),"       តាកែវ ជាខេត្តមួយមានសក្ដានុពលផ្នែកទេសចរណ៍បែបប្រវត្តិសាស្ត្រ វប្បធម៌ និងធម្មជាតិ ដែលមានស្ថាបត្យកម្មបុរាណជាច្រើននៅក្នុងខេត្តមួយនេះ ដូចជា ប្រាសាទបុរាណ សំណង់គ្រឹះបុរាណ វត្តបុរាណ ទួលបុរាណ និងកន្លែងផ្សេងៗទៀត។ ស្ថាបត្យកម្មបុរាណ និងទីតាំងទេសចរណ៍ក្នុងខេត្ត ជាកត្តាដ៏សំខាន់ដើម្បីទាក់ទាញភ្ញៀវទេសចរប្រមាណ ៦០ម៉ឺននាក់ក្នុងមួយឆ្នាំៗ។"),
                      SizedBox(height: 15.px,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.px),
                        child: Container(
                          height: 190,
                          child: Image.network("https://media.istockphoto.com/id/1155378204/photo/old-structure-between-ta-keo-and-ta-prohm-in-siem-reap-cambodia.jpg?s=612x612&w=0&k=20&c=SsXMnQqZpEylOILfBxeuGVTaetS3gAOPr8aKIJp5Jg0=",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.px,),
                      Text(style: TextStyle(
                          fontSize: 15
                      ),"បើតាមបញ្ជីស្ថានីយបុរាណនៅប្រទេសកម្ពុជា  របស់ក្រសួងវប្បធម៌ និងវិចិត្រសិល្បៈ ខេត្តតាកែវ មានប្រាសាទបុរាណចំនួន១៦ សំណង់គ្រឹះប្រាសាទបាក់បែកចំនួន៦ ទួលបុរាណចំនួន២៥ វត្តបុរាណចំនួន៣១៣ និងស្រះដែលជាទីតាំងយកថ្មចំនួន៣។ ស្ថាបត្យកម្មក្នុងខេត្តនេះ បានរំលេចនូវព្រលឹងនៃស្ថាបត្យកម្ម រូបបដិមា វប្បធម៌ និងសាសានា។"),
                      SizedBox(height: 15.px,),
                      Text(style: TextStyle(
                          fontSize: 15
                      ),"តំបន់វប្បធម៌ប្រវត្តិសាស្រ្ត និងធម្មជាតិចំនួន៥កន្លែង មានដូចជា ភ្នំដា ភ្នំបាយ៉ង់កោរ ភ្នំជីសូរ្យ ភ្នំតាម៉ៅ និង ប្រាសាទតាព្រហ្ម នៅទន្លេបាទី ព្រមទាំងរមណីយដ្ឋានទេសចរណ៍វប្បធម៌ និងធម្មជាតិ២កន្លែង គឺភ្នំខ្លែង និងភ្នំជីតាពេជ្រ។ ជាមួយគ្នានេះ ខេត្តតាកែវ មានរមណីយដ្ឋានធម្មជាតិមួយកន្លែង គឺជ្រោះផ្អោក និងរមណីយដ្ឋានទេសចរណ៍កែច្នៃមួយកន្លែងទៀត គឺកំពូលពេជ្រ។ "),
                      SizedBox(height: 15.px,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.px),
                        child: Container(
                          height: 190,
                          child: Image.network("https://www.aboutcambodiatravel.com/uploads/images/content_image/Takeo/Takeo-ACT%20Cambodia%20Tours1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.px,),
                      Text(style: TextStyle(
                          fontSize: 15
                      ),"ក្នុងចំណោមទីតាំងរមណីយដ្ឋានទេសចរណ៍ទាំងអស់នេះ តំបន់ទេសចរណ៍ចំនួន៦កន្លែង ដែលបានទាក់ទាញភ្ញៀវទេសចរច្រើន គឺភ្នំជីសូរ្យ ភ្នំតាម៉ៅ ទន្លេបាទី កំពូលពេជ្រ ភ្នំដា និងជ្រោះផ្អោក៕ "),
                      SizedBox(height: 15.px,),
                      Text(style: TextStyle(
                          fontSize: 15
                      ),"តាកែវ ជាខេត្តមួយមានសក្ដានុពលផ្នែកទេសចរណ៍បែបប្រវត្តិសាស្ត្រ វប្បធម៌ និងធម្មជាតិ ដែលមានស្ថាបត្យកម្មបុរាណជាច្រើននៅក្នុងខេត្តមួយនេះ ដូចជា ប្រាសាទបុរាណ សំណង់គ្រឹះបុរាណ វត្តបុរាណ ទួលបុរាណ និងកន្លែងផ្សេងៗទៀត។ ស្ថាបត្យកម្មបុរាណ និងទីតាំងទេសចរណ៍ក្នុងខេត្ត ជាកត្តាដ៏សំខាន់ដើម្បីទាក់ទាញភ្ញៀវទេសចរប្រមាណ ៦០ម៉ឺននាក់ក្នុងមួយឆ្នាំៗ។"),
                      SizedBox(height: 15.px,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.px),
                        child: Container(
                          height: 190,
                          child: Image.network("https://d13jio720g7qcs.cloudfront.net/images/destinations/origin/561e104fe749c.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.px,),

                      Text("រាបរៀងដោយ: \n លោក លឹម វិចិត្រ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
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
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 2,
                          color: Colors.red,
                        )
                      ),
                      child: GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: _cameraPosition,
                        onMapCreated: (GoogleMapController controller) {
                          googleMapController = controller;
                          getCurrentLocation();
                        },
                        markers: _marker,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
