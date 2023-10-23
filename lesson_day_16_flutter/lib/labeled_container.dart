import 'package:flutter/material.dart';

class LabeledContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Color color;
  final String text;
  final Color? textColor;
  const LabeledContainer(
      {super.key,
      this.width,
      this.height = double.infinity,
      required this.color,
        this.textColor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      color: this.color,
      alignment: Alignment.center,
      child: Text(
        this.text,
        style: TextStyle(color: this.textColor, fontSize: 30),
      ),
    );
  }
}
