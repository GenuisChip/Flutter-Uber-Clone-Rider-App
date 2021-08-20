import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainScereen extends StatefulWidget {
  static const String screenId = "mainScreen";

  const MainScereen({Key key}) : super(key: key);

  @override
  _MainScereenState createState() => _MainScereenState();
}

class _MainScereenState extends State<MainScereen> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition cameraPosition = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Screen")),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
            initialCameraPosition: cameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          )
        ],
      ),
    );
  }
}
