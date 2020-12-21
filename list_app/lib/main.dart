import 'package:flutter/material.dart';

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
        title: Text('Flutter App'),
      ),
      body: SafeArea(
        child: Center(
          child: Scrollbar(
            child: ListView(
              children: <Widget>[
                Card(
                  child: Text(
                    'List of data:',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Column(
                  children: _dateString.map((String date) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) => DetailsPage(
                                  timeString: date,
                                ),
                                ),
                                );
                      },
                      child: Container(
                        decoration:
                            BoxDecoration(border: Border(bottom: BorderSide())),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              date,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
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

class DetailsPage extends StatelessWidget {
  DetailsPage({Key key, this.timeString}) : super(key: key);

  final String timeString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(timeString),
      ),
      body: Container(

      ),
    );
  }
}
