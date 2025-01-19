import 'package:flutter/material.dart';
import 'package:special_note/themes/theme_data.dart';
import 'package:styled_widget/styled_widget.dart';

class OfflineNoteLoby extends StatelessWidget {
  const OfflineNoteLoby({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          //  note counts starting
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('0').padding(bottom: height / 100),
                    Text('Text Notes')
                  ],
                ).padding(top: height / 8),
                SizedBox(
                  width: width / 4,
                ),
                Column(
                  children: [
                    Text('0').padding(bottom: height / 100),
                    Text('Checkbox Notesf')
                  ],
                ).padding(top: height / 8)
              ],
            ),
          )
              .backgroundColor(AppTheme.color.appThemeColor)
              .width(width)
              .height(height / 3.5),

          // notes count ends

          // search bar starts

          SizedBox(
              child: TextField(
            cursorColor: AppTheme.color.appThemeColor,
            textAlign: TextAlign.center ,
            decoration: InputDecoration(
                focusColor: AppTheme.color.appThemeColor,
                hintText: "serch for notes",
                border: InputBorder.none),
          ).decorated(
            border: Border.all(width: 2.5, color: AppTheme.color.appThemeColor),
            borderRadius: BorderRadius.circular(10),
          )).padding(
              top: height / 50, bottom: height / 150, horizontal: width / 10),

          // search bar ends
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: AppTheme.color.buttonColor),
    );
  }
}
