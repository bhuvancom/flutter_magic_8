import 'dart:math' show Random;

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MainScreen(),
      ),
    );

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var img = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset(
          'images/ball$img.png',
        ),
        onPressed: () {
          switchImg();
        },
      ),
    );
  }

  void switchImg() {
    setState(() {
      img = Random().nextInt(5) + 1;
    });
  }
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Ask Me Anything',
          ),
        ),
        body: Container(
          color: Colors.cyan,
          child: Ball(),
        ),
      ),
    );
  }
}
