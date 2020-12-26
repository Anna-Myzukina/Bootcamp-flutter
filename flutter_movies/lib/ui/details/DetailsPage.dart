
import 'package:flutter/cupertino.dart';
import 'package:flutter_block/bloc/common/BlockProvider.dart';
import 'package:flutter_block/bloc/details/DetailsScreenBlock.dart';
import 'package:flutter_block/bloc/home/MoviesHomeScreenBlock.dart';
import 'package:flutter_block/bloc/router/RouterBloc.dart';
import 'package:flutter_block/model/Movie.dart';
import 'package:flutter_block/services/datasource/MoviesRemoteRepository.dart';
import 'package:flutter_block/ui/details/DetailsScreen.dart';
import 'package:flutter_block/ui/home/MoviesHomeScreen.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key key, this.routerBloc, this.movie}) : super(key:key);
  final RouterBloc routerBloc;
  final Movie movie;

  @override
  _DetailsPageState createState() => _DetailsPageState(routerBloc, movie);

}

class _DetailsPageState extends State<DetailsPage> {
  final RouterBloc routerBloc;
  _DetailsPageState(this.routerBloc, this.movie);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final DetailsScreenBloc bloc = DetailsScreenBloc(MoviesRemoteRepostirory(), routerBloc);
    final DetailsScreen screen = DetailsScreen(movie: this.movie);

    return BlocProvider(
      child: screen,
      bloc: bloc,
    );
  }
}