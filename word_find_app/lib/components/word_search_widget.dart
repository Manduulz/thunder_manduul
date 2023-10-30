import 'package:flutter/material.dart';
import 'package:word_find_app/gradient_letter.dart';
import 'package:word_search_safety/word_search_safety.dart';

class WordSearchGame extends StatefulWidget {
  const WordSearchGame({super.key});

  @override
  State<WordSearchGame> createState() => _WordSearchGameState();
}

class _WordSearchGameState extends State<WordSearchGame> {
  final List<String> wordList = ['TOTORO'];
  final WSSettings settings = WSSettings(
    width: 7,
    height: 2,
    fillBlanks: int,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (var row in newPuzzle!.puzzle!)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var cell in row)
                  GradientLetter(
                    word: cell.toUpperCase(),
                    width: 40,
                    height: 40,
                    fontSize: 26,
                    outerCircleRadius: 8,
                    innerCircleRadius: 4,
                    letterHeight: 15 / 12,
                  ),
              ],
            )
        ],
      );
    }
    return Container();
  }
}
