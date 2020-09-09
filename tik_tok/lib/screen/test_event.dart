import 'package:flutter/material.dart';
import 'package:tik_tok/data/event_data.dart';
import 'package:tik_tok/widget/event_widget.dart';

class TestEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
            children: eventItems
                .map((eventItems) => EventWidget(eventModel: eventItems))
                .toList()),
      );
}
