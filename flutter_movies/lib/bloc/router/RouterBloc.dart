import 'dart:async';

import 'package:flutter_block/bloc/common/BlocBase.dart';
import 'package:flutter_block/bloc/router/RouterEvent.dart';
import 'package:flutter_block/bloc/router/RouterState.dart';

class RouterBloc extends BlocBase {
  final StreamController<RouterEvent> _inputController =
      StreamController<RouterEvent>();
  final StreamController<RouterState> _outputController =
      StreamController<RouterState>();

  Sink<RouterEvent> get input => _inputController.sink;

  Stream<RouterState> get output => _outputController.stream;
  StreamSubscription _inputStreamSubscription;

  RouterBloc() {
    _inputStreamSubscription = _inputController.stream.listen(_onEvent);
  }

  void _onEvent(event) {
    if (event is OnNavigateBack) {
     _outputController.add(RouterOnNavigateBackState());
    } else if (event is OnNavigateToDetails) {
      _outputController.add(RouterOnNavigateToDetailsState(event.movie));
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
