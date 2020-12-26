import 'package:flutter/foundation.dart';
import 'package:flutter_block/model/Movie.dart';

@immutable
abstract class RouterState {}

class RouterOnNavigateBackState extends RouterState {}

class RouterOnNavigateToDetailsState extends RouterState {
  final Movie movie;

  RouterOnNavigateToDetailsState(this.movie);
}


