import 'package:flutter/material.dart';
import 'package:word_find_app/components/gradient_letter.dart';
import 'package:word_search_safety/word_search_safety.dart';

class WordSearchGame extends StatefulWidget {
  final String hiddenWord;
  final Function onLetterSelected;
  const WordSearchGame(this.hiddenWord,this.onLetterSelected, {super.key});

  @override
  State<WordSearchGame> createState() => _WordSearchGameState();
}

class _WordSearchGameState extends State<WordSearchGame> {
  final WSSettings settings = WSSettings(
      width: 7,
      height: 2,
      maxAttempts: 5,
      orientations: List.from([
        WSOrientation.horizontal,
      ])
  );
  List<bool> revealedHiddenWord = [];
  final List<String> wordList = ['T', 'O', 'T', 'O', 'R', 'O'];
  final WordSearchSafety wordSearch = WordSearchSafety();
  WSNewPuzzle? newPuzzle;
  WSSolved? solved;


  @override
  void initState() {
    super.initState();
    revealedHiddenWord = List.filled(widget.hiddenWord.length, false);
    newPuzzle = wordSearch.newPuzzle(wordList, settings);
    if(newPuzzle!.errors!.isEmpty) {
      solved = wordSearch.solvePuzzle(newPuzzle!.puzzle!,
      ['T', 'O', 'T', 'O', 'R', 'O']);
    }
  }



  @override
  Widget build(BuildContext context) {
    if (newPuzzle!.errors!.isEmpty) {
      return Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 110,
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
                    return InkWell(
                      onTap: (){
                        widget.onLetterSelected(cell);
                        print('on letter selected $cell');
                      },
                      child: Column(
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
                              letterHeight: 12 / 15),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
                child:
                ElevatedButton(
                    onPressed: (){},
                    child: Text('abc')),
            )
          ]);
    } else {
      return Container();
    }
  }
}
