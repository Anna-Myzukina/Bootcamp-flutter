![screen](https://github.com/Anna-Myzukina/Bootcamp-flutter/blob/master/i_am_rich/images/screen.PNG)



            import 'package:flutter/material.dart';

            void main() {
            runApp(
                MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                    backgroundColor: Colors.black,
                    appBar: AppBar(
                    title: Text('I`m rich'),
                    backgroundColor: Colors.blueGrey[900],
                    ),
                    body: Center(
                    child: Container(
                        decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/ruby.jpg'),
                        ),
                        ),
                    ),
                    ),
                ),
                ),
            );
            }