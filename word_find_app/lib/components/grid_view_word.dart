import 'package:flutter/material.dart';
import 'package:word_find_app/gradient_letter.dart';

class GridViewWidget extends StatelessWidget {
  final List<String> words = List.generate(14, (index) => "Word $index");
  GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
          ),
          padding: EdgeInsets.all(10),
          itemCount: words.length,
          itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: GradientLetter(word: "A", width: 43, height: 43, fontSize: 25, outerCircleRadius: 8, innerCircleRadius: 4, letterHeight: 12/15),
              ),
            );
          }),
    );
  }
}
