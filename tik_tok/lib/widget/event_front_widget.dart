import 'package:flutter/material.dart';

class EventFrontWidget extends StatefulWidget {
  @override
  _EventFrontWidgetState createState() => _EventFrontWidgetState();
}

class _EventFrontWidgetState extends State<EventFrontWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffdfd4f4),
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Image.asset('images/ballroom.png'),
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(15.0),
          //        ),
                //color: Colors.green,
                
             
          //   ),
          // ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       //borderRadius: BorderRadius.circular(15.0),
          //       color: Colors.grey,
          //       //image: Image.asset('images/ballroom.png'),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
