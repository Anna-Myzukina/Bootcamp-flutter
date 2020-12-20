import 'package:flutter/material.dart';
//import 'package:list_app/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List App Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Set<String> _dateString = Set<String>();

  void _saveData() {
    setState(() {
      _dateString.add(DateTime.now().toString());
    });
  }

  // final List<ListData> listdata = [
  //   ListData(
  //     title: 'New Title',
  //     date: DateTime.now(),
  //   ),
  //   ListData(
  //     title: 'Another Title',
  //     date: DateTime.now(),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List App'),
      ),
      body: Center(
        child: SafeArea(
                  child: ListView(
            children: <Widget>[
              Column(
                children: _dateString.map((String date) {
                  return Card(
                    color: Colors.blue,
                    child: Text(
                      date,
                    ),
                  );
                }).toList(),
              ),
              Card(
                child: Text('List'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveData,
        child: Icon(Icons.add),
      ),
    );
  }
}
