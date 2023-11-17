import 'package:flutter/material.dart';

class TextThemeWidget extends StatelessWidget {
  const TextThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello World',
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
