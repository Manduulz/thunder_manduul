import 'package:flutter/material.dart';
import 'package:lesson_day_23_flutter/hidden_word_widget.dart';
import 'package:word_search_safety/word_search_safety.dart';

class WordSearchGame extends StatelessWidget {
  const WordSearchGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WordSearchScreen(),
    );
  }
}

class WordSearchScreen extends StatefulWidget {
  const WordSearchScreen({super.key});

  @override
  State<WordSearchScreen> createState() => _WordSearchScreenState();
}

class _WordSearchScreenState extends State<WordSearchScreen> {
  final List<String> hiddenWord = ['M', 'I', 'C', 'K', 'E', 'Y'];
  final WSSettings settings = WSSettings(
      width: 7,
      height: 2,
    orientations: List.from([
      WSOrientation.horizontal,
    ])
  );

  final WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;
  WSSolved? solved;

  List<bool> revealedHiddenWord = [];

  @override
  void initState() {
    super.initState();
    revealedHiddenWord = List.filled(hiddenWord.length, false);
    newPuzzle = wordSearch.newPuzzle(hiddenWord, settings);
    if(newPuzzle!.errors!.isEmpty) {
      solved = wordSearch.solvePuzzle(newPuzzle!.puzzle!,
          ['M', 'I', 'C', 'K', 'E', 'Y']);
    }
  }

  void onLetterSelected(String letter) {
    setState(() {
      updateHiddenWordGrid(letter);
    });
  }

  void updateHiddenWordGrid(letter) {
    print('updateHiddenWordGrid: $letter');
    for (int i = 0; i < hiddenWord.length; i++) {
      if(hiddenWord[i] == letter) {
        revealedHiddenWord[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Search Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: settings.width,
                    ),
                    itemCount: settings.width * settings.height,
                    itemBuilder: (BuildContext context, int index) {
                      final int row = index ~/ settings.width;
                      final int col = index % settings.width;
                      final cell = newPuzzle!.puzzle![row][col];
                      return GestureDetector(
                        onTap: () {
                          print('tapped $cell');
                          onLetterSelected(cell);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            cell,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    }
                )
            ),
            SizedBox(height: 20),
            Text('Hidden Word Grid'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(hiddenWord.length, (index) {
                if (revealedHiddenWord[index]) {
                  print(hiddenWord[index]);
                  return HiddenWidget(hiddenWord[index], 60, 60);
                } else {
                  return HiddenWidget('', 60, 60);
                }
              }),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

