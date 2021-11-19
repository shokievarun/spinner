import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinning_wheel/flutter_spinning_wheel.dart';
import 'label text.dart';
import 'myapp.dart';

class RouletteScore extends StatelessWidget {
  final List<Color> colors = <Color>[
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.cyan,
    Colors.purple,
    Colors.yellow,
    Colors.lightGreenAccent,
    Colors.yellow,
    Colors.green
  ];
  final int selected;
  RouletteScore(this.selected);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 00, 0, 0),
                child: Row(
                  children: [
                    Text(
                      'CHANCE',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontFamily: 'BonaNova',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff85219C)),
                    ),
                  ],
                ),
              ),
              Container(
                padding: new EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    new Text(
                      'GAMES ',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'BonaNova',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff85219C)),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'MINUTE',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'BonaNova',
                          fontWeight: FontWeight.bold,
                          color: colors[selected]),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          )),
      SizedBox(
        height: 20,
      ),
      Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          color: colors[selected],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  '\$345343',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'BonaNova',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                child: Text(
                  'JACKPOT',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'BonaNova',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      '\$18765',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'BonaNova',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff85219C)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      'LARGE PRIZE',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'BonaNova',
                          fontWeight: FontWeight.bold,
                          color: colors[selected]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Text(
                      '\$6787',
                      style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'BonaNova',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff85219C)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Text(
                      'MEDIUM PRIZE',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'BonaNova',
                          fontWeight: FontWeight.bold,
                          color: colors[selected]),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              )),
        ],
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    '\$772',
                    style: TextStyle(
                        fontSize: 35.0,
                        fontFamily: 'BonaNova',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff85219C)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    'SMALL PRIZES',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'BonaNova',
                        fontWeight: FontWeight.bold,
                        color: colors[selected]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text(
                  '\$4.26',
                  style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'BonaNova',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff85219C)),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text(
                  'MINI PRIZES',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'BonaNova',
                      fontWeight: FontWeight.bold,
                      color: colors[selected]),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          )),
        ],
      ),
      Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            width: 90,
            height: 60,
            child: Text(
              '45',
              style: TextStyle(fontSize: 30.0, color: Colors.deepPurple),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: colors[selected], width: 3),
                shape: BoxShape.circle,
                color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'SECONDS',
              style: TextStyle(
                  fontSize: 10.0,
                  fontFamily: 'BonaNova',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff85219C)),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    ]);

    Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 175.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 100.0,
              child: Text(
                '${colors[selected]}',
                style: TextStyle(color: colors[selected]),
              ),
            );
          }),
    );
  }
}

//
// class RouletteScore extends StatelessWidget {
//   final int selected;
//
//   final Map<int, String> labels = {
//     1: '1000\$',
//     2: '400\$',
//     3: '800\$',
//     4: '7000\$',
//     5: '5000\$',
//     6: '300\$',
//     7: '2000\$',
//     8: '100\$',
//   };
//
//   Color? colorr = Colors.green;
//
//   RouletteScore(this.selected);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text('${labels[selected]}',
//         style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24.0,color: Colors.black ));
//   }
// }
