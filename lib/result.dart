import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetHandler;
  Result(this.result, this.resetHandler);

  String get resultPhrase {
    var resultText =
        "You did it \n😉"; //added emoji so that it is more interactive
    if (result >= 45) {
      resultText =
          'You are awesome! \n🤩'; //for adding emojis press (window key) + (;)
    } else if (result > 20 && result < 45) {
      resultText = "Better luck next time! \n😊";
    } else {
      resultText = "Sorry... you did not score well \n🤗";
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
              SizedBox(height: 60.0),
              Text(
                'Your score',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(24.0),
                padding: EdgeInsets.symmetric(vertical: 32.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue[300],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Text(
                  result.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                resultPhrase,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 70.0), //added sized box so that it looks good ;)
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
