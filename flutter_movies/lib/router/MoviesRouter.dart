import 'package:flutter/cupertino.dart';
import 'package:flutter_block/bloc/common/BlockProvider.dart';
import 'package:flutter_block/bloc/router/RouterBloc.dart';
import 'package:flutter_block/router/PhoneRouter.dart';

class MoviesRouter extends StatefulWidget {

  @override
  _MoviesRouterState createState() => _MoviesRouterState();
}

class  _MoviesRouterState extends State<MoviesRouter> {
  @override
  Widget build(BuildContext context) {
    final RouterBloc bloc = RouterBloc();
    final PhoneRouter router = PhoneRouter();

    return BlocProvider(child: router, bloc: bloc);
  }
}