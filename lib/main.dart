import 'dart:math';
import 'package:flutter/material.dart';
import 'answers.dart';

void main() => runApp(
    MaterialApp(
      home: BallPage(),
    ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Scaffold(
        appBar: AppBar(
          toolbarHeight: 47,
          backgroundColor: Colors.black,
          title: Text('Загадайте вопрос и нажмите на магический шар',
            maxLines: 2,
            textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            fontFamily: 'Reggae',
          ),
          ),
        ),
        body: Stack(
          children: [
            Image.asset('images/space.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Center(
              child: Ball(),
          ),
          ],
        ),
      ),
        ],
    );
  }
}

class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
            children: [
              Center(
                child: Container(
                  child: OutlinedButton(
                    onPressed: () => {setState(() => showRandomAnswer())},
                    child: Image.asset('images/ball.png'),
                  ),
                ),
              ),
              Center(
                child: Text(
                      answersList[Random().nextInt(answersList.length)],
                    style: TextStyle(
                      fontFamily: 'Volkorn',
                      fontSize: 13,
                      color: Colors.yellow,
                    ),
                ),
              ),




                /*OutlinedButton(
                  onPressed: () => {setState(() => showRandomAnswer())},
                  child: Text('$textHolder',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                      ),
                      ),
                ),*/

          ],
                  ),
    );

  }
}

