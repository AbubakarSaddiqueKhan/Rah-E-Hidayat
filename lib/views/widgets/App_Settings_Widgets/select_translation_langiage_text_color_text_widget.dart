import 'package:flutter/material.dart';

class SelectTranslationLanguageTextColorTextWidget extends StatelessWidget {
  const SelectTranslationLanguageTextColorTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Select Translation Language Color",
          style: TextStyle(
            fontFamily: "Archivo",
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
