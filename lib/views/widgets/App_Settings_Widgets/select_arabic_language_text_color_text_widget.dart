import 'package:flutter/material.dart';

class SelectArabicLanguageTextColorTextWidget extends StatelessWidget {
  const SelectArabicLanguageTextColorTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Select Arabic Language Color",
          style: TextStyle(
            fontFamily: "Archivo",
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
