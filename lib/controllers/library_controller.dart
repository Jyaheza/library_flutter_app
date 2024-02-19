import '../models/book.dart';
import '../models/library_model.dart';

class LibraryController {
  Library library = Library();
  LibraryController(Library library) {
    populateLibraryWithDummyBooks();
  }

  void populateLibraryWithDummyBooks() {
    List<Book> dummyBooks = [
      Book(title: 'Book 1 ', author: 'Author 1'),
      Book(title: 'Book 2', author: 'Author 2'),
      Book(title: 'Book 3', author: 'Author 3'),
      // Add more dummy books as needed
    ];
    // library.books.add(dummyBooks as Book;
    library = Library(isOpen: false, books: dummyBooks);
  }

  void openLibrary() {
    library.isOpen = true;
  }

  void closeLibrary() {
    library.isOpen = false;
  }

  List<Book> getAllBooks() {
    return library.books;
  }
}
