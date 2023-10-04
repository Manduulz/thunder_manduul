import 'dart:ffi';

void main() {
  List<String> input_books = ['Tungalag Tamir', 'Percy Jackson', 'Management'];
  String input_Name = 'Center Library';
  final Library mglLibrary = Library(input_Name, input_books);
  print(mglLibrary);
  mglLibrary.addBook('Nuuts Tovchoo');
  print(mglLibrary);
  print(mglLibrary.hasBook('Tungalag Tamir'));
  print(mglLibrary.hasBook('Nuuts Tovchoo'));
  print(mglLibrary.hasBook('Book of God'));
}
class Library {
  String name;
  List<String>books;
  void addBook(String newBook){
    books.add(newBook);
  }
  bool hasBook(String repairBook){
    return books.contains(repairBook);
  }
  Library(this.name, this.books);
  @override
  String toString() {
    // TODO: implement toString
    return "Library{name: $name, books: $books}";
  }
}