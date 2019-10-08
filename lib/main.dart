import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 'What\'s your ...' ---> \ sing makes ' a character
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World!'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Question 1'),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
