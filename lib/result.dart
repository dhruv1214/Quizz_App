import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetHandler;
  Result(this.result, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it \n😉";//added emoji so that it is more interactive 
    if (result >= 45) {
      resultText = 'You are awesome! \n🤩';//for adding emojis press (window key) + (;)
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
                resultPhrase,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 130.0),//added sized box so that it looks good ;)
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
