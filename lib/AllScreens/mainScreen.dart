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
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(12),
              height: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(18),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 16,
                      spreadRadius: 0.5,
                      offset: Offset(.7, .7),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6),
                  Text("Hi there, ", style: TextStyle(fontSize: 12)),
                  Text(
                    "Where to?,  ",
                    style: TextStyle(fontSize: 20, fontFamily: "Brand-Bold"),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 0.5,
                          offset: Offset(.7, .7),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 10),
                        Text("Search Drop Off"),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Add Home"),
                          SizedBox(height: 4),
                          Text(
                            "Your living home address",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.work,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Add Work"),
                          SizedBox(height: 4),
                          Text(
                            "Your office address",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
