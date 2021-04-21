import 'package:flutter/material.dart';

import 'quiz.dart';

class QuestionScreen extends StatefulWidget {
  final int index;
  QuestionScreen(this.index);
  @override
  _State createState() => _State();
}

class _State extends State<QuestionScreen> {
  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              myQuiz.quiz[widget.index].question,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30.0,
              ),
            ),
            Visibility(
              child: Row(
                children: [
                  Text('congrats! your answer is correct keep going..'),
                  Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 50.0,
                  ),
                ],
              ),
              visible: isCorrect,
              replacement: Visibility(
                child: Row(
                  children: [
                    Text('sorry wrong answer try again'),
                    Icon(
                      Icons.clear,
                      color: Colors.red,
                      size: 50.0,
                    ),
                  ],
                ),
                visible: isWrong,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].answer == 25)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                  },
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    child: Center(
                      child: Text(
                        '25',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].answer == 5)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    child: Center(
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].answer == 9)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    child: Center(
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if (myQuiz.quiz[widget.index].answer == 10)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                  },
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    child: Center(
                      child: Text(
                        '10',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(widget.index + 1),
                  ),
                );
              },
              child: Container(
                width: 20.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
