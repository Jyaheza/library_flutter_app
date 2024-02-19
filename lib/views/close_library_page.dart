import 'package:flutter/material.dart';

class CloseLibraryPage extends StatelessWidget {
  const CloseLibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Close Library'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Library is closed.'),
              ),
            );
          },
          child: const Text('Close Library'),
        ),
      ),
    );
  }
}
