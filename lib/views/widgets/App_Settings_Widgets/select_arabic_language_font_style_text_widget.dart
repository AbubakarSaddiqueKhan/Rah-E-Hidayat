import 'package:flutter/material.dart';

class SelectArabicLanguageFontStyleTextWidget extends StatelessWidget {
  const SelectArabicLanguageFontStyleTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Select Arabic Language Text Style",
          style: TextStyle(
            fontFamily: "Archivo",
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
