import 'package:flutter/material.dart';
import 'file:///C:/Users/PC/AndroidStudioProjects/Bootcamp-flutter/tik_tok/lib/widget/event_generator.dart';
import 'package:tik_tok/widget/navbar_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FrameScreen extends StatefulWidget {
  @override
  _FrameScreenState createState() => _FrameScreenState();
}

class _FrameScreenState extends State<FrameScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
      return Scaffold(
        body: EventGenerator(),
        bottomNavigationBar: NavBar(),
      );
    });
  }
}
