import 'package:flutter/material.dart';
import 'package:special_note/themes/theme_data.dart';

class OfflineNoteLoby extends StatelessWidget {
  const OfflineNoteLoby({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to offline note"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: AppTheme.color.buttonColor),
    );
  }
}
