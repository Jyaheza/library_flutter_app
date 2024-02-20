import 'package:flutter/material.dart';
import 'package:library_flutter_app/controllers/book_controller.dart';
import 'package:library_flutter_app/controllers/library_controller.dart';
import 'package:library_flutter_app/models/library_model.dart';
import 'views/home_page.dart';
import 'package:dcdg/dcdg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
