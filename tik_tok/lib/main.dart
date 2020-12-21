import 'package:flutter/material.dart';
//import 'package:tik_tok/screen/event_inner_page.dart';
//import 'package:tik_tok/screen/event_add.dart';
import 'package:tik_tok/screen/frame_screen.dart';
//import 'package:tik_tok/widget/event_generator.dart';
//import 'package:tik_tok/widget/event_widget.dart';
//import 'package:tik_tok/widget/select_list_widget.dart';
// import 'package:tik_tok/screen/home_screen.dart';
// import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: FrameScreen(),
    );
  }
}
