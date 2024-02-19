import 'package:flutter/material.dart';

class OpenLibraryPage extends StatelessWidget {
  const OpenLibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open Library'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Library is open.'),
              ),
            );
          },
          child: const Text('Open Library'),
        ),
      ),
    );
  }
}
