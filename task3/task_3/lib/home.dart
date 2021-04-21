import 'package:flutter/material.dart';

import 'qestion_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://www.drupal.org/files/project-images/quiz-image_0.jpg',
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          // child: Image.network('https://image.shutterstock.com/image-vector/quiz-comic-pop-art-style-260nw-1506580442.jpg'),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Welcome to our IQ quiz , you have 4 questions to answer so be quick!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionScreen(0),
                    ),
                  );
                },
                child: Container(
                  width: 250.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      'let\'s start!',
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
