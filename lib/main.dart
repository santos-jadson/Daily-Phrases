import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _phrase = "Click in the button to generate another phrase";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Phrases"),
        backgroundColor: Colors.cyan[600],
      ),
      body: Center (
        child: Container(
        padding: EdgeInsets.all(16),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            Text(
              _phrase,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  _phrase = generatePhrase();
                });
              },
              child: Text(
                "New",
                style: TextStyle (
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              color: Colors.amber[800],
            )
          ],
        ),
      ),
      )
    );
  }
}

String generatePhrase() {
  var _phrases = [
    'The greatest glory in living lies not in never falling, but in rising every time we fall." -Nelson Mandela',
    '"The way to get started is to quit talking and begin doing." -Walt Disney',
    "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking. -Steve Jobs",
    '"If life were predictable it would cease to be life, and be without flavor." -Eleanor Roosevelt',
    "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough. -Oprah Winfrey",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success. -James Cameron",
    "Life is what happens when you're busy making other plans. -John Lennon",
    '"Spread love everywhere you go. Let no one ever come to you without leaving happier." -Mother Teresa',
    '"When you reach the end of your rope, tie a knot in it and hang on." -Franklin D. Roosevelt',
    '"Always remember that you are absolutely unique. Just like everyone else." -Margaret Mead'
  ];

  Random rand = new Random();
  int randomInt = rand.nextInt(_phrases.length);

  return _phrases[randomInt];
}