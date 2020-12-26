import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_block/bloc/common/BlockProvider.dart';
import 'package:flutter_block/bloc/router/RouterBloc.dart';
import 'package:flutter_block/bloc/router/RouterState.dart';
import 'package:flutter_block/router/MoviesPageFactory.dart';
import 'package:flutter_block/router/MoviesRouteFabric.dart';

class PhoneRouter extends StatefulWidget {
  @override
  _PhoneRouterState createState() => _PhoneRouterState();
}

class _PhoneRouterState extends State<PhoneRouter> {
  MoviesRouteFactory _routeFactory = MoviesRouteFactory();
  MoviesPageFactory _pageFactory;
  RouterBloc _routerBloc;
  StreamSubscription _routerStreamSubscription;

  void initListener() {
    _routerStreamSubscription = _routerBloc.output.listen((state) {
      if (state is RouterOnNavigateBackState) {
        Navigator.pop(context);
      } else if (state is RouterOnNavigateToDetailsState) {
        _push(() => _pageFactory.movieDetailsPage(state.movie));
      } else {
        assert(false, 'Unexpected navigation state');
      }
    });
  }

  void _push(Widget pageBuilder()) =>
      Navigator.push(context, _routeFactory.create(pageBuilder));

  @override
  Widget build(BuildContext context) {
    final RouterBloc _bloc = BlocProvider.of(context);
    if (_routerBloc == null) {
      _routerBloc = _bloc;
      _pageFactory = MoviesPageFactory(_routerBloc);
      initListener();
    }
    return _pageFactory.homePage();
  }

  @override
  void dispose() {
    _routerStreamSubscription.cancel();
    super.dispose();
  }
}
