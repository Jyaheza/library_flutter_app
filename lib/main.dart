import 'package:flutter/material.dart';
import 'package:library_flutter_app/controllers/book_controller.dart';
import 'package:library_flutter_app/controllers/library_controller.dart';
import 'package:library_flutter_app/models/library_model.dart';
import 'views/home_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Library library = Library();
  LibraryController libraryController = LibraryController(Library());
  BookController bookController = BookController();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
          controller: libraryController,
          bookController: bookController,
          title: 'Library App Home Page'),
    );
  }
}
