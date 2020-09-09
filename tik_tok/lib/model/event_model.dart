import 'package:meta/meta.dart';

@immutable
class EventModel {
  final String image;
  final String title;
  final String time;
  final String location;
  final String countDancers;

  const EventModel(
      {@required this.image,
      @required this.title,
      @required this.time,
      @required this.location,
      @required this.countDancers});
}
