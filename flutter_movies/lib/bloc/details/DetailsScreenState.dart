import 'package:flutter/foundation.dart';
import 'package:flutter_block/model/Movie.dart';

@immutable
abstract class DetailsScreenState {}

class DetailsScreenStateLoading extends DetailsScreenState {}

class DetailsScreenStateNoMoviesError extends DetailsScreenState {}

class DetailsScreenStateSuccess extends DetailsScreenState {
  DetailsScreenStateSuccess(this.movie);
  final Movie movie;
}




