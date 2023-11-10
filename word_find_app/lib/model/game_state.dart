import 'package:word_find_app/model/word_search_model.dart';

class GameState {
  WordSearchModel currentModel;
  int currentModelIndex;
  bool isWon;
  int howManyGuessed;

  GameState (
  {required this.currentModel,
  required this.currentModelIndex,
  required this.isWon,
  required this.howManyGuessed});
}