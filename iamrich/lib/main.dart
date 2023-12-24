import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[500],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              Text('Venktesh Kale',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              Text('FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'SourceSans3',
                color: Colors.teal[200],
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),),
              SizedBox(height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal[100],
              ),),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 25),
                child : Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(Icons.phone,
                      color: Colors.teal,),
                    title: Text('+917031323434',
                      style: TextStyle(
                        color: Colors.teal[700],
                        fontSize: 20,
                      ),),
                  )
                )
              ),

              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(Icons.mail,
                      color: Colors.teal,),
                    title: Text('venkteshkale@gmail.com',
                      style: TextStyle(
                        color: Colors.teal[700],
                        fontSize: 20,
                      ),),
                  ),
                )
              )
            ],
          )
        ),
      ),
    );
  }
}
