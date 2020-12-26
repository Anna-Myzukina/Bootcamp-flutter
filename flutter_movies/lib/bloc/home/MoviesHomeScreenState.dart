import 'package:flutter/foundation.dart';
import 'package:flutter_block/model/Movie.dart';
import 'package:flutter_block/model/MovieShortInfo.dart';

@immutable
abstract class MoviesHomeScreenState {}

class MoviesHomeScreenStateInitial extends MoviesHomeScreenState {}

class MoviesHomeScreenStateLoading extends MoviesHomeScreenState {}

class MoviesHomeScreenStateSuccess extends MoviesHomeScreenState {
  MoviesHomeScreenStateSuccess(this.movieShortInfo);
  final MovieShortInfo movieShortInfo;
}




