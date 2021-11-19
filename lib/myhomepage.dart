import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinning_wheel/flutter_spinning_wheel.dart';

import 'label text.dart';
import 'myapp.dart';
class MyHomePage extends StatelessWidget {
  final StreamController<int> _dividerController = StreamController<int>();
  final int selected;
  MyHomePage(this.selected);
  final List<Color> colors = <Color>[Colors.blueAccent, Colors.pinkAccent, Colors.cyan, Colors.purple, Colors.yellow,Colors.lightGreenAccent,Colors.yellow,Colors.green];
  double _generateRandomAngle() => Random().nextDouble() * pi * 2;
  int _randodomVelocity ()=> (Random().nextInt(1000)* 6000)+2000;
  dispose() {
    _dividerController.close();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: [
              SpinningWheel(
                Image.asset('assets/images/roulette-8-300.png'),
                width: 410,
                height: 440,
                initialSpinAngle: _generateRandomAngle(),
                spinResistance: 0.6,
                canInteractWhileSpinning: false,
                dividers: 6,
                onUpdate: _dividerController.add,
                onEnd: _dividerController.add,
                secondaryImage: Image.asset(
                    'assets/images/fA0Tf5xNtNiwDuy-Play-Now-Button-PNG-HD.png'),
                secondaryImageHeight: 130,
                secondaryImageWidth: 130,
              ),
              StreamBuilder(
                stream: _dividerController.stream,
                builder: (context, snapshot) =>
                snapshot.hasData ? RouletteScore(snapshot.data.hashCode) : Container(),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

