
import 'package:flutter/material.dart';
import 'package:flutter_block/bloc/common/BlockProvider.dart';
import 'package:flutter_block/bloc/details/DetailsScreenBlock.dart';
import 'package:flutter_block/bloc/home/MoviesHomeScreenBlock.dart';
import 'package:flutter_block/bloc/router/RouterBloc.dart';
import 'package:flutter_block/services/MoviesService.dart';
import 'package:flutter_block/services/datasource/MoviesLocalRepository.dart';
import 'package:flutter_block/services/datasource/MoviesRemoteRepository.dart';

import 'MoviesHomeScreen.dart';

class MoviesHomePage extends StatefulWidget {
  MoviesHomePage({Key key, this.routerBloc }) : super(key:key);
  final RouterBloc routerBloc;


  @override
  _MoviesHomePageState createState() => _MoviesHomePageState(routerBloc);

}

class _MoviesHomePageState extends State<MoviesHomePage> {
  final RouterBloc routerBloc;
  _MoviesHomePageState(this.routerBloc);

  @override
  Widget build(BuildContext context) {
    final MoviesHomeScreenBloc bloc = MoviesHomeScreenBloc(MovieService(MoviesRemoteRepostirory(), MoviesLocalRepository()), routerBloc);
    final MoviesHomeScreen screen = MoviesHomeScreen();

    return BlocProvider(
      child: screen,
      bloc: bloc,
    );
  }

}