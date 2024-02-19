import 'package:flutter/material.dart';

class CloseLibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Close Library'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Library is closed.'),
              ),
            );
          },
          child: Text('Close Library'),
        ),
      ),
    );
  }
}
