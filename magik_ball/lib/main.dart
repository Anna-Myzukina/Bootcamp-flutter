import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask anything'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Ask(),
      ),
    ),
  );
}

class Ask extends StatefulWidget {
  @override
  _AskState createState() => _AskState();
}

class _AskState extends State<Ask> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            width: 50.0,
            color: Colors.grey,
          ),
        ),
        child: Center(
          child: Text(
            'question',
          ),
        ),
      ),
    );
  }
}
