import 'package:flutter/material.dart';

import 'quiz.dart';

class QuestionScreen extends StatefulWidget {
  final int index;
  static int totalanswer = 0;
  QuestionScreen(this.index);
  @override
  _State createState() => _State();
}

class _State extends State<QuestionScreen> {
  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;
  bool needhint = false;
  String answer;
  @override
  void initState() {
    super.initState();
  }

//https://www.pinclipart.com/picdir/big/4-43970_person-thinking-with-question-mark-clipart.png
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://www.pinclipart.com/picdir/big/4-43970_person-thinking-with-question-mark-clipart.png',
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
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
                  Text('congrats! your answer is correct \n keep going..',
                      style:
                          TextStyle(color: Colors.greenAccent, fontSize: 20.0)),
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
                    Text('sorry wrong answer try again',
                        style: TextStyle(color: Colors.red, fontSize: 20.0)),
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
                        QuestionScreen.totalanswer += 1;
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
                        QuestionScreen.totalanswer += 1;
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
                        QuestionScreen.totalanswer += 1;
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
                        QuestionScreen.totalanswer += 1;
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
                width: 150.0,
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
            MaterialButton(
              onPressed: () {
                setState(() {
                  needhint = true;
                  answer = myQuiz.quiz[widget.index].answer.toString();
                });
              },
              child: Container(
                width: 150.0,
                height: 50.0,
                child: Center(
                  child: Text(
                    'answer',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            Visibility(
                child: Text(
                    'the answer is :' +
                        myQuiz.quiz[widget.index].answer.toString(),
                    style:
                        TextStyle(color: Colors.greenAccent, fontSize: 20.0)),
                visible: needhint),
          ],
        ),
      ),
    );
  }
}
