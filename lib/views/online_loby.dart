import 'package:flutter/material.dart';
import 'package:special_note/main.dart';
import 'package:special_note/themes/theme_data.dart';

class OnlineNoteLoby extends StatelessWidget {
  const OnlineNoteLoby({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to online note"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor:AppTheme.color.buttonColor ,
      ),
    );
  }
}
 