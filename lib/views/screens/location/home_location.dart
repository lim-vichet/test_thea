import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../widgets/app_bar.dart';


class HomeLocation extends StatefulWidget {
  static String routeName = '/HomeLocation';
  const HomeLocation({Key? key}) : super(key: key);

  @override
  State<HomeLocation> createState() => _HomeLocationState();
}

class _HomeLocationState extends State<HomeLocation> {

  double lat = 11.530294374541688;
  double long = 104.80804458523598;
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
    target: LatLng(11.530294374541688, 104.80804458523598),
    zoom: 15,
  );
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:defaultAppBar(context,title: "Location",isHasButtonBack: false),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _cameraPosition,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
          getCurrentLocation();
        },
        markers: _marker,
      ),
    );
  }
}
