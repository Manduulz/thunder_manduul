import 'package:flutter/material.dart';
import 'package:word_search_safety/word_search_safety.dart';

class WordSearchApp extends StatelessWidget {
  const WordSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Search Safety'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Puzzle 2D List'), _WordSearch()],
        ),
      ),
    );
  }
}

class _WordSearch extends StatefulWidget {
  const _WordSearch({super.key});

  @override
  State<_WordSearch> createState() => _WordSearchState();
}

class _WordSearchState extends State<_WordSearch> {
  final List<String> wordList = ['hello', 'world', 'foo', 'bar', 'baz', 'dart'];
  final WSSettings settings = WSSettings(
      width: 7, height: 2, orientations: List.from([WSOrientation.horizontal]));
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
      return Column(
        children: [
          Container(
            height: 300,
            child: GridView.builder(
              padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: settings.width,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1/1
                ),
                itemCount: settings.width * settings.height,
                itemBuilder: (BuildContext context, int index) {
                  final int row = index ~/ settings.width;
                  final int col = index % settings.width;
                  final cell = newPuzzle!.puzzle![row][col];
                  return Container(
                    padding: EdgeInsets.all(10),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )
                    ),
                    child: Center(
                      child: Text(
                        cell,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  );
                }
            ),
          ),
          const Text(
            'Found Words!',
          ),
          Column(
            children: [
              for (var element in solved!.found!)
                Column(
                  children: [
                    Text('word: ${element.word}, orientation: ${element
                        .orientation}'),
                    Text('x:${element.x}, y:${element.y}'),
                  ],
                )
            ],
          ),
          const Text('Not found Words!'),
          Column(
            children: [
              for (var element in solved!.notFound!)
                Text('word: $element'),
            ],
          )
        ],
      );
    } else {
      return Text('Errors: ${newPuzzle!.errors}',);
    }
  }
}
