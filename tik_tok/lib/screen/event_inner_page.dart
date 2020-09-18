import 'package:flutter/material.dart';

class EventInnerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            SafeArea(
              child: Container(
                color: Colors.white,
              ),
            ),
            ExhibitionBottomSheet(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FloatingActionButton.extended(
                onPressed: () {
                  // TODO: Add your onPressed code here!
                },
                label: Text(
                  'Attend',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                icon: Icon(Icons.event_available),
                backgroundColor: Color(0xFF2CCAE2),
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  // TODO: Add your onPressed code here!
                },
                label: Text(
                  'Add to Favorites',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                backgroundColor: Color(0xFF2CCAE2),
              ),
            ],
          ),
        ));
  }
}

const double minHeight = 120;

class ExhibitionBottomSheet extends StatefulWidget {
  @override
  _ExhibitionBottomSheetState createState() => _ExhibitionBottomSheetState();
}

class _ExhibitionBottomSheetState extends State<ExhibitionBottomSheet>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: minHeight,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20.0,
            ),
          ],
          color: Color(0xFFE5E5E5),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(36)),
        ),
      ),
    );
  }
}
