import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tik_tok/widget/select_list_widget.dart';

class EventGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          backgroundColor: Color(0xFFE5E5E5),
          body: DefaultTabController(
            length: 5,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  _buildSearchContainer(sizingInformation),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('icons/calendar.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('icons/Events.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('icons/Switch_on.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          // decoration: BoxDecoration(
                          //   image: DecorationImage(
                          //     image: AssetImage('images/bachata.png'),
                          //     fit: BoxFit.cover,
                          //   ),
                          // ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/bachata.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200.0,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              // TODO: Add your onPressed code here!
            },
            label: Text(
              'Add Event',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            icon: FaIcon(FontAwesomeIcons.calendarPlus),
            backgroundColor: Color(0xFF2CCAE2),
          ),
        );
      },
    );
  }

  Container _buildSearchContainer(SizingInformation sizingInformation) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10.0),
            width: sizingInformation.localWidgetSize.width * 0.92,
            height: 45.0,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2.0,
                  color: Color(0xFFA79CC3),
                ),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Color(0xFFA79CC3),
                  fontSize: 17.0,
                ),
                icon: Icon(
                  Icons.search,
                  color: Color(0xFFFF2D55),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
