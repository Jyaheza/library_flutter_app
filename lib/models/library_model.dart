import 'book.dart';

class Library {
  bool isOpen = false;
  List<Book> books = [];
  Library({this.isOpen = false, this.books = const []});
}
