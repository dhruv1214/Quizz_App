import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandle;
  final String answerTxt;
  Answer(this.selectHandle, this.answerTxt);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 6),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Text(
                answerTxt,
                style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500),
              ),
            ),
            onPressed: selectHandle,
          ),
        ));
  }
}
