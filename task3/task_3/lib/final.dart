import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_3/qestion_screen.dart';

class finalpage extends StatelessWidget {
  QuestionScreen s;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text(
            'your final score is ' +
                QuestionScreen.totalanswer.toString() +
                ((QuestionScreen.totalanswer > 2) ? ' very good' : ' not bad'),
          ),
        ),
      ),
    );
  }
}
