import 'dart:async';

import 'package:flutter_block/bloc/common/BlocBase.dart';
import 'package:flutter_block/bloc/details/DetailsScreenState.dart';
import 'package:flutter_block/bloc/router/RouterBloc.dart';
import 'package:flutter_block/services/datasource/MoviesRemoteRepository.dart';

import 'DetailsScreenEvent.dart';

class DetailsScreenBloc extends BlocBase {
  final StreamController<DetailsScreenEvent> _inputController =
      StreamController<DetailsScreenEvent>();
  final StreamController<DetailsScreenState> _outputController =
      StreamController<DetailsScreenState>();

  Sink<DetailsScreenEvent> get input => _inputController.sink;

  Stream<DetailsScreenState> get output => _outputController.stream;
  StreamSubscription _inputStreamSubscription;

  MoviesRemoteRepostirory _repository;
  final RouterBloc _routerBloc;


  DetailsScreenBloc(this._repository, this._routerBloc) {
    _inputStreamSubscription = _inputController.stream.listen(_onEvent);
  }

  DetailsScreenState get initialState => DetailsScreenStateLoading();

  void _onEvent(event) {
    if (event is DetailsScreenFetchEvent) {
      _outputController.add(DetailsScreenStateLoading());

      _outputController.add(DetailsScreenStateNoMoviesError());
    } else {
      assert(false, 'Something went wrong');
    }
  }

  @override
  void dispose() {
    _inputStreamSubscription.cancel();
    _inputController.close();
    _outputController.close();
  }
}
