import 'package:flutter/material.dart';
import 'package:quiz_app/constant.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQues;
  Quiz({
    @required this.questions,
    @required this.answerQues,
    @required this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: kSize * 4,
          ),
          child: Column(
            children: [
              SizedBox(
                height: kSize * 18,
              ),
              Text(
                'Question ${questionIndex + 1}/${questions.length}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ), //added sized box so that it looks good ;)
              Question(
                questions[questionIndex]['questions'],
              ),
              SizedBox(
                height: kSize * 25,
              ), //added sized box so that it looks good ;)
              ...(questions[questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map((answer) {
                return Answer(
                    () => answerQues(answer['score']), answer['text']);
              }).toList()
            ],
          ),
        )
      ],
    );
  }
}
