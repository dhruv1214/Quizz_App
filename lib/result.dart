import 'package:flutter/material.dart';
import 'package:quiz_app/constant.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetHandler;
  Result(this.result, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it \n😉";
    if (result >= 45) {
      resultText = 'You are awesome! \n🤩';
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
          margin: EdgeInsets.all(kSize * 4),
          child: Column(
            children: [
              SizedBox(height: kSize * 15),
              Text(
                'Your score',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(
                  kSize * 6,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: kSize * 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.lightBlue[300],
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      kSize * 5,
                    ),
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
              SizedBox(
                height: kSize * 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: kSize * 2,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                child: Container(
                  margin: EdgeInsets.all(
                    kSize * 3,
                  ),
                  child: Text(
                    "Restart Quizz!",
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
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
