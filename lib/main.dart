import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> questions = [
    'What\'s your favorite color?',
    'How old are u?'
  ];

  int _questionIndex = 0;
  int _answerIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
      _answerIndex++;
    });
  }

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
              Question(questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: _answerQuestion,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
