//import 'package:flutter/material.dart';
//import 'package:folding_cell/folding_cell.dart';
//
//class MyEvent extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.grey,
//        leading: Padding(
//          padding: EdgeInsets.only(left: 2.0),
//          child: IconButton(
//              icon: Icon(
//                Icons.search,
//                color: Colors.red,
//              ),
//              onPressed: () {
//                print('Click success');
//              }),
//        ),
//        title: Text(
//          'Search',
//          textAlign: TextAlign.center,
//          style: TextStyle(
//            fontWeight: FontWeight.bold,
//            color: Colors.blueGrey,
//          ),
//        ),
//      ),
//      body: Container(
//        color: Color(0xffdfd4f4),
//        child: ListView(
//          scrollDirection: Axis.vertical,
//          children: <Widget>[
//            Container(
//              child: SimpleFoldingCell(
//                frontWidget: newFrontWidget(),
//                innerTopWidget: newInnerTopWidget(),
//                innerBottomWidget: Container(
//                  color: Colors.brown,
//                ),
//                cellSize: Size(MediaQuery.of(context).size.width, 130),
//                padding: EdgeInsets.all(10.0),
//              ),
//            ),
//            Container(
//              child: SimpleFoldingCell(
//                frontWidget: newFrontWidget(),
//                innerTopWidget: newInnerTopWidget(),
//                innerBottomWidget: newInnerBottomWidget(),
//                cellSize: Size(MediaQuery.of(context).size.width, 130),
//                padding: EdgeInsets.all(10.0),
//              ),
//            ),
//            Container(
//              child: SimpleFoldingCell(
//                frontWidget: newFrontWidget(),
//                innerTopWidget: newInnerTopWidget(),
//                innerBottomWidget: newInnerBottomWidget(),
//                cellSize: Size(MediaQuery.of(context).size.width, 130),
//                padding: EdgeInsets.all(10.0),
//              ),
//            ),
//            Container(
//              child: SimpleFoldingCell(
//                frontWidget: newFrontWidget(),
//                innerTopWidget: newInnerTopWidget(),
//                innerBottomWidget: newInnerBottomWidget(),
//                cellSize: Size(MediaQuery.of(context).size.width, 130),
//                padding: EdgeInsets.all(10.0),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//Container newInnerTopWidget() {
//  return Container(
//    color: Colors.red,
//  );
//}
//
//Container newInnerBottomWidget() {
//  return Container(
//    color: Colors.white,
//    // alignment: Alignment.center,
//  );
//}
//
//Container newFrontWidget() {
//  return Container(
//    color: Color(0xffdfd4f4),
//    alignment: Alignment.center,
//    child: Row(
//      children: <Widget>[
//        Expanded(
//          flex: 1,
//          child: Container(
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(15.0),
//              color: Colors.red,
//              //image: Image.asset('images/ballroom.png'),
//            ),
//          ),
//        ),
//        Expanded(
//          flex: 2,
//          child: Container(
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(15.0),
//              color: Colors.white,
//              //image: Image.asset('images/ballroom.png'),
//            ),
//          ),
//        ),
//      ],
//    ),
//  );
//}
