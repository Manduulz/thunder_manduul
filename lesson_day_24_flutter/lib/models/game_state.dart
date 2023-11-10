import 'package:lesson_day_24_flutter/models/word_search_model.dart';

class GameState {
  WordSearchModel currentModel;
  int currentModelIndex;
  bool isWon;
  int howManyGuessed;

  GameState(
      {required this.currentModel,
      required this.currentModelIndex,
      required this.isWon,
      required this.howManyGuessed});
}
