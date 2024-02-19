import 'package:flutter/material.dart';
import 'package:library_flutter_app/controllers/library_controller.dart';
import '../controllers/book_controller.dart';
import '../models/book.dart';

class RentBookPage extends StatelessWidget {
  final BookController bookController;
  final LibraryController libraryController;

  RentBookPage({required this.bookController, required this.libraryController});

  @override
  Widget build(BuildContext context) {
    List<Book> books = libraryController.getAllBooks();

    return Scaffold(
      appBar: AppBar(
        title: Text('Rent Book'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          bool isBookRented = bookController.isBookRented(book);
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.author),
            trailing: isBookRented
                ? null
                : ElevatedButton(
                    onPressed: () {
                      if (bookController.rentBook(book)) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text('Book ${book.title} rented successfully.'),
                          ),
                        );
                      }
                    },
                    child: Text('Rent'),
                  ),
          );
        },
      ),
    );
  }
}
