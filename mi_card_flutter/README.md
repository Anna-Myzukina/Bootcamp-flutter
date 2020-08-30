"# mi_card_flutter"

![screen](https://github.com/Anna-Myzukina/Bootcamp-flutter/blob/master/mi_card_flutter/images/screen.PNG)


            import 'package:flutter/material.dart';
            void main() => runApp(NewApp());
            class NewApp extends StatelessWidget {
            @override
            Widget build(BuildContext context) {
                return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                    backgroundColor: Colors.teal,
                    body: SafeArea(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('images/anna.jpg'),
                        ),
                        Text(
                            'Anna Muzykina',
                            style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            ),
                        ),
                        Text(
                            'full-stack developer'.toUpperCase(),
                            style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 20.0,
                            letterSpacing: 1.5,
                            color: Colors.teal[100],
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        SizedBox(
                            height: 20.0,
                            width: 150.0,
                            child: Divider(
                            color: Colors.teal.shade100,
                            ),
                        ),
                        Card(
                            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                            child: ListTile(
                            leading: Icon(
                                Icons.phone,
                                color: Colors.teal,
                            ),
                            title: Text(
                                '+3800000000',
                                style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: 'Ubuntu',
                                fontSize: 20.0,
                                ),
                            ),
                            ),
                        ),
                        Card(
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                            child: ListTile(
                            leading: Icon(
                                Icons.email,
                                color: Colors.teal,
                            ),
                            title: Text(
                                'anna@gmail.com',
                                style: TextStyle(
                                color: Colors.teal.shade900,
                                fontFamily: 'Ubuntu',
                                fontSize: 20.0,
                                ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
             }
           }
