import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Dicee', style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold
          ),),
        ),
        backgroundColor: Colors.red,
        body: DicePage(),
      )
    )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 3;
  int rightdicenumber = 2;

  void ChangeDiceFace() {
    setState(() {
      leftdicenumber = Random().nextInt(6) +1;
      rightdicenumber = Random().nextInt(6) +1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(onPressed: () {
                  ChangeDiceFace();
                },
                  child: Image.asset('images/dice$leftdicenumber.png'),
                ),
              ),
              SizedBox(width: 15),
              Expanded(child: TextButton(onPressed: () {
                ChangeDiceFace();
              },
                  child: Image.asset('images/dice$rightdicenumber.png')
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
