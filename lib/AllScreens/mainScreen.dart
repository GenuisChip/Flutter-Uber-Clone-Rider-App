import 'package:flutter/material.dart';

class MainScereen extends StatefulWidget {
  static const String screenId = "mainScreen";

  const MainScereen({Key key}) : super(key: key);

  @override
  _MainScereenState createState() => _MainScereenState();
}

class _MainScereenState extends State<MainScereen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Screen")),
    );
  }
}
