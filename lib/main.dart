import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Center(
              child: Text(
                'Decision making',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: Change(),
        ),
      ),
    );

class Change extends StatefulWidget {
  @override
  _ChangeState createState() => _ChangeState();
}
class _ChangeState extends State<Change> {
  int decision=1;
  void changee(){
    setState(() {
      decision= Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: FlatButton(
            onPressed: () {
              changee();
            },
            child: Image(
              image: AssetImage('images/ball$decision.png'),
            ),
          ),
        ),
      ),
    );
  }
}
