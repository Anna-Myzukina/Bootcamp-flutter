import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_block/bloc/common/BlockProvider.dart';
import 'package:flutter_block/bloc/details/DetailsScreenBlock.dart';
import 'package:flutter_block/bloc/home/MoviesHomeScreenBlock.dart';
import 'package:flutter_block/bloc/home/MoviesHomeScreenEvent.dart';
import 'package:flutter_block/bloc/home/MoviesHomeScreenState.dart';
import 'package:flutter_block/model/Movie.dart';
import 'package:flutter_block/model/MovieShortInfo.dart';


class MoviesHomeScreen extends StatefulWidget {
  MoviesHomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MoviesHomeScreenState createState() => _MoviesHomeScreenState();
}

class _MoviesHomeScreenState extends State<MoviesHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final MoviesHomeScreenBloc _bloc = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: StreamBuilder<MoviesHomeScreenState>(
        stream: _bloc.output,
        initialData: _bloc.initialState,
        builder: (context, snapshot) {
          final state = snapshot.data;
          if (state is MoviesHomeScreenStateLoading) {
            return _buildLoading();
          } else if (state is MoviesHomeScreenStateSuccess) {
            return _buildContent(state.movieShortInfo, _bloc);
          } else if (state is MoviesHomeScreenStateInitial) {
            return _buildInit(_bloc);
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }

  Widget _buildInit(MoviesHomeScreenBloc bloc) {
    return Center(
      child: RaisedButton(
        child: const Text('Wanna Random movie?'),
        onPressed: () => bloc.input.add(MoviesHomeScreenRandomMovieFetchEvent()),
      ),
    );
  }

  Widget _buildContent(MovieShortInfo movieShortInfo, MoviesHomeScreenBloc bloc) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your random movie is: ${movieShortInfo.title}'),
          RaisedButton(
            child: const Text('Next random movie?'),
            onPressed: () => bloc.input.add(MoviesHomeScreenRandomMovieFetchEvent()),
          ),
          RaisedButton(
            child: const Text('Wanna see details?'),
            onPressed: () => bloc.input.add(MoviesHomeScreenMovieFetchEvent(movieShortInfo)),
          ),
        ],
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
