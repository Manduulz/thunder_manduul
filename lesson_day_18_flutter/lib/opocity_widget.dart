import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  const OpacityWidget({super.key});

  @override
  State<OpacityWidget> createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  double _opacity = 1.0;

  _toggleOpacity() {
    setState(() {
      _opacity = (_opacity == 1.0) ? 0.3 : 1.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Widget Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(opacity: _opacity,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Tap the button below',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _toggleOpacity,
                child: Text('Toggle Opacity'))
          ],
        ),
      ),
    );
  }
}
