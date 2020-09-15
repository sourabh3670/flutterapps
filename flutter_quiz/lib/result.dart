import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultscore;
  final Function reset;
  Result(this.resultscore,this.reset);
  String get resultphrase {
    var rsulttext = 'Welcome';
    if (resultscore <= 30) {
      rsulttext = "Go Read The Newspaper.";
    } else if (resultscore <= 40) {
      rsulttext = 'You Can Learn.';
    } else if (resultscore <= 70) {
      rsulttext = 'You Have Good Knowledge.';
    } else if (resultscore <= 90) {
      rsulttext = 'You Are Awesome.';
    } else if (resultscore <= 100) {
      rsulttext = 'You Are Genius!!!!';
    }

    return rsulttext;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultphrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(child: Text("Restart Quiz",style: TextStyle(fontSize: 20,color: Colors.blue),) ,onPressed: reset)
      ]),
    );
  }
}
