import 'package:flutter/foundation.dart';
import 'package:flutter_block/model/Movie.dart';
import 'package:flutter_block/model/MovieShortInfo.dart';

@immutable
abstract class MoviesHomeScreenEvent {}

class MoviesHomeScreenRandomMovieFetchEvent extends MoviesHomeScreenEvent {}

class MoviesHomeScreenMovieFetchEvent extends MoviesHomeScreenEvent {
  MoviesHomeScreenMovieFetchEvent(this.shortInfo);

  final MovieShortInfo shortInfo;
}

class MoviesHomeScreenNavigateToDetailsEvent extends MoviesHomeScreenEvent {
  MoviesHomeScreenNavigateToDetailsEvent(this.movie);

  final Movie movie;
}
