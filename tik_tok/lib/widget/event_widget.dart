//import 'package:flutter/material.dart';
//import 'package:folding_cell/folding_cell.dart';
////import 'package:tik/data/colors.dart';
//import 'package:tik_tok/model/event_model.dart';
//import 'package:tik_tok/widget/event_front_widget.dart';
//import 'package:tik_tok/widget/event_inside_widget.dart';
//
//class EventWidget extends StatefulWidget {
//  final EventModel eventModel;
//
//  const EventWidget({
//    @required this.eventModel,
//    Key key,
//  }) : super(key: key);
//
//  @override
//  EventWidgetState createState() => EventWidgetState();
//}
//
//class EventWidgetState extends State<EventWidget> {
//  @override
//  Widget build(BuildContext context) => SimpleFoldingCell(
//        frontWidget: EventFrontWidget(),
//        innerTopWidget: EventInsideWidget(),
//        innerBottomWidget: Container(color: Colors.purple),
//        cellSize: Size(MediaQuery.of(context).size.width, 125),
//        padding: EdgeInsets.all(16),
//      );
//}
//
//class EventSmallWidget extends StatelessWidget {
//  const EventSmallWidget({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Color(0xffdfd4f4),
//      alignment: Alignment.center,
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            flex: 1,
//            child: Container(
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(15.0),
//                image: DecorationImage(
//                  image: AssetImage('images/ballroom.png'),
//                  fit: BoxFit.cover,
//                ),
//              ),
//            ),
//          ),
//          Expanded(
//            flex: 1,
//            child: Container(
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(15.0),
//                color: Colors.white,
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
