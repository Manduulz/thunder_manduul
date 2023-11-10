import 'package:lesson_day_24_flutter/models/word_search_model.dart';

class WordListRepository {
  final List<WordSearchModel> search_words = [
    WordSearchModel(
        imageURL: 'assets/images/mickey.png',
        hiddenWord: ['M', 'I', 'C', 'K', 'E', 'Y']),
    WordSearchModel(
        imageURL: 'assets/images/elsa.png',
        hiddenWord: ['E', 'L', 'S', 'A']),
    WordSearchModel(
        imageURL: 'assets/images/totoro.jpeg',
        hiddenWord: ['T', 'O', 'T', 'O', 'R', 'O']),
  ];
}