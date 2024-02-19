import '../models/book.dart';

class BookController {
  bool rentBook(Book book) {
    if (book.isAvailable) {
      book.isAvailable = false;
      return true;
    } else {
      return false;
    }
  }

  void returnBook(Book book) {
    if (!book.isAvailable) {
      book.isAvailable = true;
    }
  }

  bool isBookRented(Book book) {
    return !book.isAvailable;
  }
}
