import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int quest;
  final Function answer;

  Quiz({@required this.question, @required this.answer, @required this.quest});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          question[quest]['questn'],
        ),
        ...(question[quest]['ans'] as List<Map<String,Object>>).map(
          (answr) {
            return Answer(()=>answer(answr['score']), answr['text']);
          },
        ).toList()
      ],
    );
  }
}
