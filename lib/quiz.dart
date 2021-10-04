import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQues;

  Quiz(
      {@required this.questions,
      @required this.answerQues,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 16, left: 16),
          child: Column(
            children: [
              SizedBox(height: 70.0),//added sized box so that it looks good ;)
              Question(
                questions[questionIndex]['questions'],
              ),
              SizedBox(height: 100.0),//added sized box so that it looks good ;)
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
