import 'package:flutter/material.dart';

class MoviesRouteFactory {
  Route create(Widget pageBuilder()) => MaterialPageRoute(builder: (_) => pageBuilder());
}