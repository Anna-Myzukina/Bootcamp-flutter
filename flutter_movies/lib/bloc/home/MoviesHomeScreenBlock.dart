import 'dart:async';

import 'package:flutter_block/bloc/common/BlocBase.dart';
import 'package:flutter_block/bloc/router/RouterBloc.dart';
import 'package:flutter_block/bloc/router/RouterEvent.dart';
import 'package:flutter_block/model/Movie.dart';
import 'package:flutter_block/services/MoviesService.dart';
import 'package:flutter_block/services/datasource/MoviesRemoteRepository.dart';

import 'MoviesHomeScreenEvent.dart';
import 'MoviesHomeScreenState.dart';

class MoviesHomeScreenBloc extends BlocBase {
  final StreamController<MoviesHomeScreenEvent> _inputController =
      StreamController<MoviesHomeScreenEvent>();
  final StreamController<MoviesHomeScreenState> _outputController =
      StreamController<MoviesHomeScreenState>();

  Sink<MoviesHomeScreenEvent> get input => _inputController.sink;

  Stream<MoviesHomeScreenState> get output => _outputController.stream;

  StreamSubscription _inputStreamSubscription;

  final MovieService _movieService;
  final RouterBloc _routerBloc;

  MoviesHomeScreenBloc(this._movieService, this._routerBloc) {
    _inputStreamSubscription = _inputController.stream.listen(_onEvent);
  }

  MoviesHomeScreenState get initialState => MoviesHomeScreenStateInitial();

  void _onEvent(event) {
    if (event is MoviesHomeScreenRandomMovieFetchEvent) {
      _outputController.add(MoviesHomeScreenStateLoading());
      _movieService.getRandomMovie().then((value) {
        _outputController.add(MoviesHomeScreenStateSuccess(value));
      });
    } else if (event is MoviesHomeScreenNavigateToDetailsEvent) {
      _routerBloc.input.add(OnNavigateToDetails(event.movie));
    } else if (event is MoviesHomeScreenMovieFetchEvent) {
      _movieService.fectMovieDataById(event.shortInfo.id).then((value){
        _routerBloc.input.add(OnNavigateToDetails(value));
      });
  } else {
      assert(false, 'Something went wring');
    }
  }

  @override
  void dispose() {
    _inputStreamSubscription.cancel();
    _inputController.close();
    _outputController.close();
  }
}
