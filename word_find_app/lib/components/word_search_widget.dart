import 'package:flutter/material.dart';
import 'package:word_find_app/gradient_letter.dart';
import 'package:word_search_safety/word_search_safety.dart';

class WordSearchGame extends StatefulWidget {
  const WordSearchGame({super.key});

  @override
  State<WordSearchGame> createState() => _WordSearchGameState();
}

class _WordSearchGameState extends State<WordSearchGame> {
  final List<String> wordList = ['TOTORO', 'ELSA'];
  final WSSettings settings = WSSettings(
    width: 7,
    height: 2,
    maxAttempts: 5,
  );
  final WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;

  @override
  void initState() {
    super.initState();
    newPuzzle = wordSearch.newPuzzle(wordList, settings);
  }

  @override
  Widget build(BuildContext context) {
    if (newPuzzle!.errors!.isEmpty) {
      return Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 197,
              width: 375,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 1,
                      crossAxisCount: settings.width,
                      childAspectRatio: 1),
                  itemCount: 14,
                  // itemCount: settings.width * settings.height,
                  itemBuilder: (BuildContext context, int index) {
                    final int row = index ~/ settings.width;
                    final int col = index % settings.width;
                    final cell = newPuzzle!.puzzle![row][col];
                    return Column(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.white,
                          )),
                        ),
                        GradientLetter(
                            word: cell.toUpperCase(),
                            width: 40,
                            height: 40,
                            fontSize: 26,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15)
                      ],
                    );
                  }),
            ),
          ]);
    } else {
      return Container();
    }
  }
}
