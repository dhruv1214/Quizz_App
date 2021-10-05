import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTxt;

  Question(this.questionTxt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 16, bottom: 16),
      child: Text(questionTxt,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),//changed font size to 28 from 24
          textAlign: TextAlign.center,), //Aligned text to center
    );
  }
}
