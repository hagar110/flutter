import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContactCard(
                  name: 'Abdallah kamal',
                  mail: 'abdallah@gmail.com',
                  phone: '215213425415',
                  url: 'https://www.cleveland.com/resizer/Gr0GuArhZqjgK9u3brVVMQdoysA=/450x0/smart/advancelocal-adapter-image-uploads.s3.amazonaws.com/expo.advance.net/img/4eb3a4f864/width2048/28b_nnsmoviesshrek2.jpeg',

                  word: 'not boss',

                ),
                ContactCard(
                  name: 'Kerollus Sameh',
                  mail: 'kerollus@gmail.com',
                  phone: '546846846',
                   url:'https://www.cleveland.com/resizer/Gr0GuArhZqjgK9u3brVVMQdoysA=/450x0/smart/advancelocal-adapter-image-uploads.s3.amazonaws.com/expo.advance.net/img/4eb3a4f864/width2048/28b_nnsmoviesshrek2.jpeg',
                  word: 'boss',
                ),
                ContactCard(
                  name: 'Malek Muhammed',
                  mail: 'malek@gmail.com',
                  phone: '454654665',
                   url: 'https://www.cleveland.com/resizer/Gr0GuArhZqjgK9u3brVVMQdoysA=/450x0/smart/advancelocal-adapter-image-uploads.s3.amazonaws.com/expo.advance.net/img/4eb3a4f864/width2048/28b_nnsmoviesshrek2.jpeg',

                  word: 'maybe \n boss',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
