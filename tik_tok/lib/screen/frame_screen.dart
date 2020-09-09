import 'package:flutter/material.dart';
import 'package:tik_tok/screen/test_event.dart';
//import 'package:tik_tok/data_model/event_data.dart';
//import 'home_screen.dart';

import 'package:tik_tok/screen/my_event.dart';

class FrameScreen extends StatefulWidget {
  @override
  _FrameScreenState createState() => _FrameScreenState();
}

class _FrameScreenState extends State<FrameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TestEvent(),
    );
  }
}

// class EventDataSearch extends SearchDelegate<EventData>{

// }
