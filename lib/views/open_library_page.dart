import 'package:flutter/material.dart';

class OpenLibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Open Library'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Library is open.'),
              ),
            );
          },
          child: Text('Open Library'),
        ),
      ),
    );
  }
}
