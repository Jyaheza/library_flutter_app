import 'package:flutter/material.dart';
import 'package:library_flutter_app/controllers/book_controller.dart';
import 'package:library_flutter_app/models/library_model.dart';

import '../controllers/library_controller.dart';
import '../navigation_card.dart';
import 'list_of_books_page.dart';
import 'rent_book_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {Key? key,
      required this.title,
      required this.controller,
      required this.bookController})
      : super(key: key);

  final String title;
  final LibraryController controller;
  final BookController bookController;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLibraryOpen = false;

  @override
  Widget build(BuildContext context) {
    Library library = Library();
    final LibraryController controller = LibraryController(library);
    final BookController bookController = BookController();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NavigationCard(
              title: isLibraryOpen ? 'Close Library' : 'Open Library',
              icon: isLibraryOpen ? Icons.close : Icons.library_books,
              onPressed: () {
                setState(() {
                  if (isLibraryOpen) {
                    widget.controller.closeLibrary();
                  } else {
                    widget.controller.openLibrary();
                  }
                  isLibraryOpen = !isLibraryOpen;
                });
              },
            ),
            if (isLibraryOpen) ...[
              NavigationCard(
                title: 'List of Books',
                icon: Icons.book,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListOfBooksPage(
                        controller: widget.controller,
                      ),
                    ),
                  );
                },
              ),
              NavigationCard(
                title: 'Rent Book',
                icon: Icons.shopping_cart,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RentBookPage(
                        bookController: bookController,
                        libraryController: controller,
                      ),
                    ),
                  );
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
