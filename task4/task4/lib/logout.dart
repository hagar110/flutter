import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/contacts.dart';

class logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          //  padding: EdgeInsets.only(top: 300.0, left: 80, bottom: 50),
          child: Center(
            child: Text(
              'good bye ' + contact.names[0],
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://clipground.com/images/goodbye-clipart-11.jpg',
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
