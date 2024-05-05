import 'package:flutter/material.dart';

class SelectArabicLanguageTextSizeTextWidget extends StatelessWidget {
  const SelectArabicLanguageTextSizeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Select Arabic Language Text Size",
          style: TextStyle(
            fontFamily: "Archivo",
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
