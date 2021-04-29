import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task4/addcontact.dart';
import 'package:task4/contacts.dart';

import 'logout.dart';

class Home extends StatefulWidget {
  @override
  @override
  _HomeState get createState => _HomeState();
}

void sendmessage(String input) {
  contact.mails.add(input);
}

class _HomeState extends State<Home> {
  int navbarindex = 0;

  Widget build(BuildContext context) {
    List<Widget> bodywidgets = [
      Center(
          child: ListView.builder(
              itemCount: contact.mails.length,
              itemBuilder: (context, i) => mymails(index2: i))),
      Center(
          child: ListView.builder(
              itemCount: contact.names.length,
              itemBuilder: (context, i) => mycontacts(index: i))),
      Center(
          child: ListView(
        children: [
          AppBar(
            backgroundColor: Colors.black,
            title: Text('Profile'),
            shadowColor: Colors.white,
          ),
          Container(
            width: 150,
            height: 150,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                image: NetworkImage(
                    'https://hub.awin.com/wp-content/uploads/2014/08/Ombre-Only-Model.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Padding(
            child: Text('HagarEhab\n@hagarehabb',
                style: TextStyle(
                  fontSize: 20.0,
                )),
            padding: EdgeInsets.only(left: 120.0),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30.0,
                    ),
                    Text(
                      '   Dashboard',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.payment,
                      size: 30.0,
                    ),
                    Text(
                      '   payment history',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.settings_applications_sharp,
                      size: 30.0,
                    ),
                    Text(
                      '   statics ',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.wine_bar,
                      size: 30.0,
                    ),
                    Text(
                      '   reward',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => logout(),
                            ),
                          );
                        },
                        child: Container(
                          width: 85.0,
                          height: 40.0,
                          margin: EdgeInsets.only(left: 0),
                          child: Center(
                            child: Text(
                              'logout!',
                              style: TextStyle(fontSize: 27.0),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    //Padding(
                    // padding: EdgeInsets.only(left: 0.0),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => addcontact(),
                          ),
                        );
                      },
                      child: Container(
                        //width: 10.0,
                        //height: 30.0,
                        margin: EdgeInsets.only(left: 0),
                        child: Center(
                            child: Row(
                          children: [
                            Icon(Icons.add),
                            Text(
                              'add contacts!',
                              style: TextStyle(fontSize: 27.0),
                            ),
                          ],
                        )),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ))
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: bodywidgets[navbarindex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          iconSize: 30.0,
          onTap: (index) {
            setState(() {
              navbarindex = index;
            });
          },
          selectedItemColor: Colors.blueAccent,
          currentIndex: navbarindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'mails',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: 'profile',
            ),
          ],
        ),
        drawer: Drawer(
            child: Center(
                child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.home),
                Text(
                  'Home \n',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.category),
                Text(
                  'Categories \n',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.add),
                Text(
                  'add item \n',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.description),
                Text(
                  'about us\n',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.share),
                Text(
                  'share with friend \n',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.rate_review),
                Text(
                  'rate and review \n',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.privacy_tip),
                Text(
                  'privacy policy \n',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            )
          ],
        ))),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn1.vectorstock.com/i/1000x1000/50/30/user-icon-male-person-symbol-profile-avatar-vector-20715030.jpg'),
          ),
          title: Text('welcome to our mail app'),
          // shadowColor: Colors.deepPurple,
        ),
      ),
    );
  }
}

// ignore: camel_case_types
//
// ignore: camel_case_types
class mymails extends StatelessWidget {
  final int index2;
  mymails({
    this.index2,
  });
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.grey[300],
      ),
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(
                Icons.message,
                size: 50.0,
                color: Colors.black,
              ),
              Text(
                'you have recieved a message \nfrom  your friend ' +
                    contact.names[index2] +
                    '\n message:  ' +
                    contact.mails[index2] +
                    '\n',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              hintText: 'reply to your friend',
              icon: Icon(
                Icons.input,
                color: Colors.black,
              ),
            ),
            onSubmitted: (input) => sendmessage(input),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class mycontacts extends StatelessWidget {
  final int index;
  mycontacts({
    this.index,
  });
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      child: ListTile(
        contentPadding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0),
        tileColor: Colors.grey[300],
        leading: CircleAvatar(
          backgroundImage: NetworkImage(contact.images[index]),
          radius: 30.0,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contact.names[index],
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    contact.emails[index],
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  CupertinoIcons.phone,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    contact.phone[index],
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
