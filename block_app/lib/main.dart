import 'package:flutter/material.dart';
import 'package:flutter_block/router/MoviesRouter.dart';
import 'package:flutter_block/ui/details/DetailsPage.dart';
import 'package:flutter_block/ui/home/MoviesHomePage.dart';

import 'bloc/common/BlockProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MoviesHomePage(),
    );
  }
}