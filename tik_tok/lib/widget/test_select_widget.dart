import 'package:flutter/material.dart';

class TestSelectList extends StatelessWidget {
  const TestSelectList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TabBar(
        tabs: <Widget>[
          Tab(
            icon: ImageIcon(
              AssetImage("icons/Events.png"),
              color: Color(0xFFF9437C),
            ),
          ),
          Tab(
            icon: ImageIcon(
              AssetImage("icons/Events.png"),
              color: Color(0xFFF9437C),
            ),
          ),
          Tab(
            icon: ImageIcon(
              AssetImage("icons/Events.png"),
              color: Color(0xFFF9437C),
            ),
          ),
        ],
      ),
    );
  }
}
