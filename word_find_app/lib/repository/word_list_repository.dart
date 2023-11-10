import 'package:word_find_app/model/word_search_model.dart';

class WordListRepository {
  final List<WordSearchModel> search_words = [
    WordSearchModel(
        imageURL: 'assets/images/totoro.jpeg',
        hiddenWord: ['T', 'O', 'T', 'O', 'R', 'O']),
    WordSearchModel(
        imageURL: 'assets/images/elsa.png',
        hiddenWord: ['E', 'L', 'S', 'A']),
  ];
}