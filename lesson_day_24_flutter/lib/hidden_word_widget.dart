import 'package:flutter/material.dart';

class HiddenWidget extends StatelessWidget {
  final String letter;
  final double height;
  final double width;

  const HiddenWidget(this.letter, this.width, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      alignment: Alignment.center,
      child: Text(
        letter,
        style: const TextStyle(
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
