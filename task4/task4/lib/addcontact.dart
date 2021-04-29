import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task4/contacts.dart';

void add(String input) {
  contact.images.add(
      'https://cdn1.vectorstock.com/i/1000x1000/50/30/user-icon-male-person-symbol-profile-avatar-vector-20715030.jpg');
  contact.emails.add(input);
}

class addcontact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration:
                  InputDecoration(filled: true, hintText: 'enter your name'),
              onSubmitted: (input) => contact.names.add(input),
            ),
            TextField(
              decoration:
                  InputDecoration(filled: true, hintText: 'enter your phone'),
              onSubmitted: (input) => contact.phone.add(input),
            ),
            TextField(
              decoration:
                  InputDecoration(filled: true, hintText: 'enter your email'),
              onSubmitted: (input) => add(input),
            )
          ],
        ),
      ),
    ));
  }
}
