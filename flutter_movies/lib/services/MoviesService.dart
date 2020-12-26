
import 'package:flutter_block/model/Movie.dart';
import 'package:flutter_block/model/MovieShortInfo.dart';
import 'package:flutter_block/services/datasource/MoviesRemoteRepository.dart';

import 'datasource/MoviesLocalRepository.dart';

class MovieService {
  final MoviesRemoteRepostirory _remoteRepostirory;
  final MoviesLocalRepository _localRepostirory;

  MovieService(this._remoteRepostirory, this._localRepostirory);

  Future<MovieShortInfo> getRandomMovie() => _remoteRepostirory.getRandomMovie();

  Future<Movie> fectMovieDataById(int id) => _remoteRepostirory.fectMovieDataById(id);

  Future<void> insertMovie(Movie movie) => _localRepostirory.insertMovie(movie);
  Future<Movie> findMovieWithId(int id) => _localRepostirory.findMovieWithId(id);

}