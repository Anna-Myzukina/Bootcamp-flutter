import 'package:flutter/material.dart';
//import 'package:tik_tok/screen/event_add.dart';
import 'package:tik_tok/screen/frame_screen.dart';
// import 'package:tik_tok/screen/home_screen.dart';
// import 'package:responsive_builder/responsive_builder.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FrameScreen(),
    );
  }
}
