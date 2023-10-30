import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';

class WordSearchApp extends StatelessWidget {
  const WordSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Search Safety',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Word Search Safety'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Puzzle 2D list'),
              WordSearchState()
            ],
          ),
        ),
      ),
    );
  }
}

class WordSearchState extends StatefulWidget {
  const WordSearchState({super.key});

  @override
  State<WordSearchState> createState() => _WordSearchStateState();
}

class _WordSearchStateState extends State<WordSearchState> {
  final List<String> wordList = ['hello', 'world', 'foo', 'bar', 'baz', 'dart'];
  final WSSettings settings = WSSettings(
      width: 10,
      height: 1,
      orientations: List.from([
        WSOrientation.horizontal,
        WSOrientation.vertical,
      ]));
  final WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;
  WSSolved? solved;

  @override
  void initState() {
    super.initState();
    newPuzzle = wordSearch.newPuzzle(wordList, settings);
    if (newPuzzle!.errors!.isEmpty) {
      solved = wordSearch.solvePuzzle(newPuzzle!.puzzle!, ['hello', 'world']);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (newPuzzle!.errors!.isEmpty) {
      return Column(children: [
        for (var row in newPuzzle!.puzzle!)
          Row(
            children: [
              for (var cell in row)
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
                  child: Center(
                    child: Text(
                      cell,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                )
            ],
          ),
        const Text(
          'Found Words !',
        ),
        Column(
          children: [
            for (var element in solved!.found!)
              Text(
                'word: $element',
              )
          ],
        )
      ]);
    } else {
      return Text('Errors: ${newPuzzle!.errors}');
    }
  }
}
