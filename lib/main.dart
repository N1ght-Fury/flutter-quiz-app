import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<String> questions = [
    'What\'s your favorite color?',
    'How old are u?'
  ];

  int questionIndex = 0;
  int answerIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
      answerIndex++;
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
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
