import 'package:flutter/material.dart';
import 'package:tik_tok/data/list_data.dart';

class SelectList extends StatefulWidget {
  @override
  _SelectListState createState() => _SelectListState();
}

class _SelectListState extends State<SelectList> {
  int _active = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: lists.length,
      itemBuilder: (ctx, i) {
        return GestureDetector(
            onTap: () {
              setState(() {
                _active = i;
              });
            },
            child: Container(
              //constraints: BoxConstraints(minWidth: 120, minHeight: 20),
              margin: EdgeInsets.only(right: i == lists.length - 1 ? 0 : 15.0),
              decoration: BoxDecoration(
                color: _active == i ? Colors.red : Colors.purple,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    lists[i].icon,
                    color: _active == i ? Colors.white : Colors.black,
                  ),
                ],
              ),
            ));
      },
    );
  }
}
