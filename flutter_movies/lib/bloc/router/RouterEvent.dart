import 'package:flutter/foundation.dart';
import 'package:flutter_block/model/Movie.dart';

@immutable
abstract class RouterEvent {}

class OnNavigateBack extends RouterEvent {}

class OnNavigateToDetails extends RouterEvent {
  final Movie movie;
  OnNavigateToDetails(this.movie);
}

