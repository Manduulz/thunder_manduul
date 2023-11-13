import 'package:flutter/material.dart';
import 'package:word_find_app/components/gradient_letter.dart';
import 'package:word_search_safety/word_search_safety.dart';

class WordSearchGame extends StatefulWidget {
  final List<String> hiddenWord;
  final Function onLetterSelected;
  final Function changeState;
  final WSNewPuzzle? newPuzzle;
  final WSSolved? solved;
  final WSSettings settings;

  const WordSearchGame(
      {required this.solved,
        required this.changeState,
      required this.newPuzzle,
      required this.settings,
      required this.hiddenWord,
      required this.onLetterSelected,
      super.key});

  @override
  State<WordSearchGame> createState() => _WordSearchGameState();
}

class _WordSearchGameState extends State<WordSearchGame> {
  GlobalKey<_WordSearchGameState> globalKey = GlobalKey();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.newPuzzle!.errors!.isEmpty) {
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
                      crossAxisCount: widget.settings.width,
                      childAspectRatio: 1),
                  itemCount: 14,
                  // itemCount: settings.width * settings.height,
                  itemBuilder: (BuildContext context, int index) {
                    final int row = index ~/ widget.settings.width;
                    final int col = index % widget.settings.width;
                    final cell = widget.newPuzzle!.puzzle![row][col];
                    return InkWell(
                      onTap: () {
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
            Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  IconButton(onPressed: (){
                    widget.changeState();
                  }, icon: Image.asset('assets/images/reload.png')),

                  Text(
                    'abc',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange
                    ),
                  )
                ],
              ),
            ),
          ]);
    } else {
      return Container();
    }
  }
}
