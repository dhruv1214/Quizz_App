import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetHandler;
  Result(this.result, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it";
    if (result >= 45) {
      resultText = 'You are awesome!';
    } else if (result > 20 && result < 45) {
      resultText = "Better luck next time!";
    } else {
      resultText = "Sorry... you did not score well";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                resultPhrase,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Restart Quizz!",
                    style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                onPressed: resetHandler,
              )
            ],
          ),
        )
      ],
    );
  }
}
