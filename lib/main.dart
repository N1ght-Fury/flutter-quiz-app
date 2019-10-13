import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const List<Map<String, dynamic>> _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ]
    },
    {
      'questionText': 'Who\'s your favorite idol?',
      'answers': [
        {'text': 'Me', 'score': 1},
        {'text': 'Me', 'score': 1},
        {'text': 'Me', 'score': 1},
        {'text': 'Me', 'score': 1}
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
  }

  void _restartApp() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
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
            child: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_restartApp, _totalScore)),
      ),
    );
  }
}
