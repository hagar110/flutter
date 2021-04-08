import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(        
          margin: const EdgeInsets.only(left:30.0 , right: 30.0, top: 100.0 , bottom: 187.0),
          decoration: BoxDecoration(
                   boxShadow: [
                      BoxShadow(
                      color: Colors.blueGrey,
                    offset: const Offset(5.0, 5.0),
                    blurRadius: 20.0,
                    spreadRadius: 5.0,
                      )
                    ],
                    border: Border(
                      top: BorderSide(width: 3.0,color: Colors.deepOrange,),
                      left: BorderSide(width: 3.0,color: Colors.deepOrange,),
                      right: BorderSide(width: 3.0,color: Colors.deepOrange,),
                      bottom: BorderSide(width: 3.0,color: Colors.deepOrange,)
                    ),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10.0), bottom: Radius.circular(10.0)),
          ),
          child: Center(
             child: Column(
               
             children: [
               Text('1st task :',style: TextStyle(fontSize: 20.0),),
                Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                   
                      borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/f2.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Container(
                  width: 300.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(5.0)),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/f2.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
