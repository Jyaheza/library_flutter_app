import 'package:flutter/material.dart';

import '../controllers/library_controller.dart';

class ListOfBooksPage extends StatelessWidget {
  final LibraryController controller;

  const ListOfBooksPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Books'),
      ),
      body: ListView.builder(
        itemCount: controller.getAllBooks().length,
        itemBuilder: (context, index) {
          final book = controller.getAllBooks()[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.author),
          );
        },
      ),
    );
  }
}
