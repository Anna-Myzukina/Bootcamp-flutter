import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
//import 'package:tik/data/colors.dart';
import 'package:tik_tok/model/event_model.dart';
import 'package:tik_tok/widget/event_front_widget.dart';
import 'package:tik_tok/widget/event_inside_widget.dart';

class EventWidget extends StatefulWidget {
  final EventModel eventModel;

  const EventWidget({
    @required this.eventModel,
    Key key,
  }) : super(key: key);

  @override
  EventWidgetState createState() => EventWidgetState();
}

class EventWidgetState extends State<EventWidget> {
  @override
  Widget build(BuildContext context) => SimpleFoldingCell(
        frontWidget: EventFrontWidget(),
        innerTopWidget: EventInsideWidget(),
        innerBottomWidget: Container(color: Colors.purple),
        cellSize: Size(MediaQuery.of(context).size.width, 125),
        padding: EdgeInsets.all(16),
      );
}
