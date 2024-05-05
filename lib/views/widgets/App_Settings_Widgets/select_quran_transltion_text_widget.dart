import 'package:flutter/material.dart';

class SelectQuranTranslationTextWidget extends StatelessWidget {
  const SelectQuranTranslationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Select Quran Translation",
          style: TextStyle(
            fontFamily: "Archivo",
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
