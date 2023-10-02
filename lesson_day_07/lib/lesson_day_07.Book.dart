void main() {
  final Book books = Book();
  books.title = 'Nom';
  books.author = 'Bichig';
  books.publishedYear = 2023;
  print(books.title);
  print(books.author);
  print(books.publishedYear);
}

class Book {
  String? title;
  String? author;
  int? publishedYear;
}