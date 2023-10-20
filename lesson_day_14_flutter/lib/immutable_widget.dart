import 'dart:math';

import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          Icon(Icons.edit)
        ],
      ),
         drawer: Drawer(
           child: Container(
             color: Colors.indigo,
             child: Text('Hello SHAPES'),
           ),
         ),
         body: Container(
          color: Colors.green,
          child: Center(
            child: Transform.rotate(
              angle: 180/pi,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple.withAlpha(120),
                          spreadRadius: 8,
                          blurRadius: 15,
                          offset: Offset.fromDirection(1.0, 30)
                      )
                    ]
                ),
                child: Padding(
                  padding: EdgeInsets.all(50.0),
                  child: _buildShinyCircle(),
                ),
              ),
            ),
          ),
        )
    );

  }
  Widget _buildShinyCircle(){
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent
          ],
          center: Alignment(-0.3, -0.5)
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20
          )
        ]
      ),
    );
  }
}
