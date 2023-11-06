import 'package:flutter/material.dart';
import 'package:word_find_app/components/gradient_letter.dart';

class WordSearchGameWord extends StatelessWidget {
  const WordSearchGameWord({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WordSearchScreen(),
    );
  }
}

class WordSearchScreen extends StatefulWidget {


  @override
  State<WordSearchScreen> createState() => _WordSearchScreenState();
}

class _WordSearchScreenState extends State<WordSearchScreen> {
  final List<String> words = ['FLUTTER', 'WORD', 'SEARCH', 'GAME'];
  final List<List<String>> grid = [
    ['T', 'O', 'R', 'R', 'F', 'O'],
    ['L', 'G', 'A', 'M', 'T', 'O'],

  ];
  final String hiddenWord = 'TOTORO';
  String selectedLetter = '';
  List<bool> revealedHiddenWord = [];

  @override
  void initState() {
    super.initState();
    revealedHiddenWord = List.filled(hiddenWord.length, false);
  }

  void onLetterSelected(String letter) {
    setState(() {
      selectedLetter = letter;
      updateHiddenWordGrid();
    });
  }

  void updateHiddenWordGrid() {
    for (int i = 0; i < hiddenWord.length; i++) {
      if (hiddenWord[i] == selectedLetter){
        revealedHiddenWord[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word Search Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(hiddenWord.length, (index) {
                if(revealedHiddenWord[index]) {
                  return Container(
                    child: GradientLetter(word: hiddenWord[index], width: 43, height: 43, fontSize: 25, outerCircleRadius: 8, innerCircleRadius: 4, letterHeight: 12/15),
                  );
                } else {
                  return Container(
                    child: GradientLetter(word: '', width: 43, height: 43, fontSize: 25, outerCircleRadius: 8, innerCircleRadius: 4, letterHeight: 12/15),
                  );
                }
              }),
            ),
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: grid[0].length,
                    ),
                    itemCount: grid.length * grid[0].length,
                    itemBuilder: (BuildContext context, int index) {
                      final row = index ~/ grid[0].length;
                      final col = index % grid[0].length;
                      final letter = grid[row][col];

                      return GestureDetector(
                        onTap: () {
                          onLetterSelected(letter);
                        },
                        child: Container(
                         child: GradientLetter(word: letter, width: 43, height: 43, fontSize: 25, outerCircleRadius: 8, innerCircleRadius: 4, letterHeight: 12/15),
                        ),
                      );
                    }
                )),
          ],
        ),
      ),
    );
  }
}