import 'package:flutter/material.dart';
import 'package:quiz_app/constant.dart';

class Question extends StatelessWidget {
  final String questionTxt;

  Question(this.questionTxt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: kSize * 4,
      ),
      child: Text(
        questionTxt,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
