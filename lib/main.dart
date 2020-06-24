import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 2;
  int rightDiceNum = 2;
  @override
  Widget build(BuildContext context) {

    void onDiceRoll () {
      setState(() {
        leftDiceNum = Random().nextInt(6) + 1;
        rightDiceNum = Random().nextInt(6) + 1;
        print('dice num = $leftDiceNum');
      });
    };


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(
            onPressed: () {
              onDiceRoll();
            },
            child: Image.asset('images/dice$leftDiceNum.png'),
          ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                onDiceRoll();
                },
              child: Image(image: AssetImage('images/dice$rightDiceNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

