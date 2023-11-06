import 'package:flutter/material.dart';

class WordSearchGame extends StatelessWidget {
  const WordSearchGame({super.key});

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
    ['W', 'O', 'R', 'D', 'F'],
    ['L', 'G', 'A', 'M', 'T'],
    ['U', 'S', 'R', 'K', 'E'],
    ['T', 'N', 'H', 'C', 'H'],
    ['F', 'Z', 'E', 'S', 'M'],
  ];
  final String hiddenWord = 'HELLO';
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
                          decoration: BoxDecoration(
                            border: Border.all(),
                            color: selectedLetter == letter ? Colors.blue : null,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            letter,
                            style: TextStyle(
                              color: selectedLetter == letter
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      );
                    }
                )),
            SizedBox(height: 20),
            Text('Selected Letter: $selectedLetter'),
            SizedBox(height: 20),
            Text('Hidden Word Grid:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(hiddenWord.length, (index) {
                if(revealedHiddenWord[index]) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      hiddenWord[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                } else {
                  return Container(
                    decoration: BoxDecoration(border: Border.all()),
                    alignment: Alignment.center,
                    child: Text(' '),
                  );
                }
              }),
            )
          ],
        ),
      ),
    );
  }
}

