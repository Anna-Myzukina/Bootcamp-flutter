import 'package:flutter/cupertino.dart';
import 'package:flutter_block/bloc/router/RouterBloc.dart';
import 'package:flutter_block/model/Movie.dart';
import 'package:flutter_block/ui/details/DetailsPage.dart';
import 'package:flutter_block/ui/home/MoviesHomePage.dart';

class MoviesPageFactory {
  final RouterBloc _routerBloc;
  MoviesPageFactory(this._routerBloc);

  Widget homePage() => MoviesHomePage(routerBloc:_routerBloc);

  Widget movieDetailsPage(Movie movie) => DetailsPage(routerBloc: _routerBloc, movie: movie);



}