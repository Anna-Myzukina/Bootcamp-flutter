import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_block/bloc/common/BlockProvider.dart';
import 'package:flutter_block/bloc/details/DetailsScreenBlock.dart';
import 'package:flutter_block/bloc/details/DetailsScreenEvent.dart';
import 'package:flutter_block/bloc/details/DetailsScreenState.dart';
import 'package:flutter_block/model/Movie.dart';


class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key key, this.movie}) : super(key: key);
  final Movie movie;

  @override
  _DetailsScreenState createState() => _DetailsScreenState('1');
}

class _DetailsScreenState extends State<DetailsScreen> {
  _DetailsScreenState(this.id);
  final String id;

  @override
  Widget build(BuildContext context) {
    final DetailsScreenBloc _bloc = BlocProvider.of(context);
    _bloc.input.add(DetailsScreenFetchEvent());

    return Scaffold(
        appBar: AppBar(
          title: Text('Temp'),
        ),
        body:  _buildContent(widget.movie),
    );
  }


  Widget _buildContent(Movie movie) {
    return Container(
        child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      movie.posterPath,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        movie.title,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Text(movie.releaseDate),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(movie.overview),
                  )),
            ],
          )
        ]));
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }


  Widget _buildNoMovies() {
    return Center(
      child: Text('Sorry, there are no moview stored'),
    );
  }
}

