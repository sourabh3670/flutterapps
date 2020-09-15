import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  @override
  String questiontext;
  Question(this.questiontext);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        questiontext,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
