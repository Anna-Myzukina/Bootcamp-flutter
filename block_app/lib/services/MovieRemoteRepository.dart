import 'dart:convert';
import 'dart:math';
import 'package:flutter_block/Constants/ApiConstants.dart';
import 'package:flutter_block/model/Movie.dart';
import 'package:flutter_block/model/MovieShortInfo.dart';
import 'package:http/http.dart' as http;

class MoviesRemoteRepostirory {
  Future<MovieShortInfo> getRandomMovie() async {
    await new Future.delayed(const Duration(milliseconds: 2500));
    List<MovieShortInfo> _movies = [
      MovieShortInfo(577922, 'Tenet'),
      MovieShortInfo(275, 'Fargo'),
      MovieShortInfo(10147, 'Bad Santa'),
      MovieShortInfo(420622, 'Wnder women')
    ];
    final _random = new Random();
    return _movies[_random.nextInt(_movies.length)];
  }
}
