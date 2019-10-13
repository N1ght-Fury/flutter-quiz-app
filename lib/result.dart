import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartApp;

  Result(this.restartApp);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Center(child: Text('Would you like to play again?')),
            Center(
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Yes'),
                    onPressed: restartApp,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 15),
                  ),
                  RaisedButton(
                    child: Text('No'),
                    onPressed: null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
