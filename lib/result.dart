import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartApp;
  final int score;
  Result(this.restartApp, this.score);

  String get resultPhrase {
    String resultText;

    if (score <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (score <= 12) {
      resultText = 'Prettly likeable!';
    } else if (score <= 16) {
      resultText = 'You are ... strange?';
    } else {
      resultText = 'You are a fucking monster..';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 5),
          ),
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
          ),
          RaisedButton(
            child: Text('Restart Quiz'),
            onPressed: restartApp,
          ),
        ],
      ),
    );
  }
}
