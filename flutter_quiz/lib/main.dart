import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  var _quest = 0;
  var _totalscore = 0;
  static const question = [
    {
      'questn': '1)Silicon Valley of India is located in _____________?',
      'ans': [
        {'text': ' A)Banglore', 'score': 10},
        {'text': 'B)Delhi', 'score': 0},
        {'text': 'C)Bihar', 'score': 0},
        {'text': 'D)Assam', 'score': 0}
      ],
    },
    {
      'questn': '2)The quorum of the Lok Sabha and the Rajya Sabha is _________ of the total membership of each house ?',
      'ans': [
        {'text': 'A) One-Fifth', 'score': 0},
        {'text': 'B) One-Tenth', 'score': 10},
        {'text': 'C) Half', 'score': 0},
        {'text': 'D) One-Sixth', 'score': 0}
      ],
    },


    {
      'questn': ' 3)Which one of the following river flows between Vindhyan and Satpura ranges? ',
      'ans': [
        {'text': 'A) Narmada', 'score': 10},
        {'text': 'B) Mahanadi', 'score': 0},
        {'text': 'C) Son', 'score': 0},
        {'text': 'D) Netravati', 'score': 0}
      ],
    },
    {
      'questn': ' 4)The Central Rice Research Station is situated in ?',
      'ans': [
        {'text': 'A) Chennai', 'score': 0},
        {'text': 'B) Cuttock', 'score': 10},
        {'text': 'C) Banglore', 'score': 0},
        {'text': 'D) Quilon', 'score': 0}
      ],
    },
    {
      'questn': ' 5)Who among the following wrote Sanskrit grammar?',
      'ans': [
        {'text': 'A) Kalidas', 'score': 0},
        {'text': 'B) Charak', 'score': 0},
        {'text': 'C) Panini', 'score': 10},
        {'text': 'D) Aryabhtta', 'score': 0}
      ],
    },
    {
      'questn': ' 6)Which among the following headstreams meets the Ganges in last?',
      'ans': [
        {'text': 'A) Alaknanda', 'score': 0},
        {'text': 'B) Pindar', 'score': 0},
        {'text': 'C) Mandakini', 'score': 0},
        {'text': 'D)  Bhagirathi', 'score': 10}
      ],
    },
    {
      'questn': ' 7)The metal whose salts are sensitive to light is?',
      'ans': [
        {'text': 'A) Zinc', 'score': 0},
        {'text': 'B) Silver', 'score': 10},
        {'text': 'C) Aluminum', 'score': 0},
        {'text': 'D) Copper', 'score': 0}
      ],
    },

    {
      'questn': '8)Patanjali is well known for the compilation of ?',
      'ans': [
        {'text': 'A) Yoga Sutra', 'score': 10},
        {'text': 'B) Panchatantra', 'score': 0},
        {'text': 'C) Brahma Sutra', 'score': 0},
        {'text': 'D) Ayurveda', 'score': 0}
      ],
    },
    {
      'questn': '9)River Luni originates near Pushkar and drains into which one of the following?',
      'ans': [
        {'text': 'A) Rann of Kachchh', 'score': 10},
        {'text': 'B) Arabian Sea', 'score': 0},
        {'text': 'C) Gulf of Cambay', 'score': 0},
        {'text': 'D) Lake Sambhar', 'score': 0}
      ],
    },

    {
      'questn': '10)Which one of the following rivers originates in Brahmagiri range of Western Ghats?',
      'ans': [
        {'text': 'A) Pennar', 'score': 0},
        {'text': 'B) Cauvery', 'score': 10},
        {'text': 'C) Krishna', 'score': 0},
        {'text': 'D) Tapti', 'score': 0}
      ],
    },
  ];

  void _answer(int score) {
    _totalscore += score;
    setState(() {
      if (_quest < question.length) _quest = _quest + 1;
    });
  }
  void resetquiz(){
    setState(() {
      _quest=0;
      _totalscore=0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Center( child:Text('QUIZ APP'),)
        ),
        body: _quest < question.length
            ? Quiz(
                answer: _answer,
                quest: _quest,
                question: question,
              )
            : Result(_totalscore,resetquiz),
      ),
    );
  }
}
