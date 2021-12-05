import 'dart:math';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int randomNumber = Random().nextInt(100);

  var inNumber = TextEditingController();
  int number = 0;
  int guessCounter = 5;
  var guessList = <int>[];
  bool rightGuess = false;
  bool wrongGuess = false;
  bool showNote = false;

  IconData selectIcon() {
    if (!rightGuess && !wrongGuess) {
      return Icons.emoji_emotions_outlined;
    } else if (rightGuess) {
      return Icons.thumb_up_outlined;
    } else {
      return Icons.thumb_down_outlined;
    }
  }

  MaterialColor selectColor() {
    if (!rightGuess && !wrongGuess) {
      return Colors.orange;
    } else if (rightGuess) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guess Number"),
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 10, top: 30, left: 16, right: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Spacer(flex: 20),
              Icon(
                selectIcon(),
                size: 100,
                color: selectColor(),
              ),
              const Spacer(flex: 10),
              Visibility(
                visible: rightGuess || guessCounter == 0 ? true : false,
                child: Text(
                  rightGuess
                      ? "You win! $number"
                      : guessCounter == 0
                          ? "You lose!"
                          : "",
                  style: TextStyle(fontSize: 30, color: selectColor()),
                ),
              ),
              Visibility(
                child: Text("You have $guessCounter guesses."),
                visible: guessCounter > 0 ? true : false,
              ),
              const Spacer(flex: 10),
              Visibility(
                visible: showNote && !rightGuess ? true : false,
                child: Text("You've already tried $number. Try another one."),
              ),
              const Spacer(flex: 10),
              TextField(
                controller: inNumber,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Guess number!",
                ),
              ),
              const Spacer(flex: 10),
              Visibility(
                visible: rightGuess || guessCounter == 0 ? false : true,
                child: ElevatedButton(
                    child: const Text("Submit"),
                    onPressed: () {
                      setState(() {
                        number = int.parse(inNumber.text);
                        if (guessList.contains(number)) {
                          showNote = true;
                        } else {
                          showNote = false;
                          if (randomNumber == number) {
                            rightGuess = true;
                            wrongGuess = false;
                          } else {
                            guessList.add(number);
                            wrongGuess = true;
                            rightGuess = false;
                            guessCounter -= 1;
                          }
                        }
                      });
                    }),
              ),
              Visibility(
                visible: rightGuess || guessCounter == 0 ? true : false,
                child: Column(
                  children: [
                    Visibility(
                      visible: rightGuess ? false : true,
                      child: Text(
                        "Number was $randomNumber.",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    ElevatedButton(
                        child: const Text("Return home"),
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                        }),
                  ],
                ),
              ),
              const Spacer(flex: 20),
              // Text("$randomNumber")
            ],
          ),
        ),
      ),
    );
  }
}
