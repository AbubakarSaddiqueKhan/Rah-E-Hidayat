import 'package:flutter/material.dart';

class SelectTranslationTextSizeTextWidget extends StatelessWidget {
  const SelectTranslationTextSizeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Select Translation Language Text Size",
          style: TextStyle(
            fontFamily: "Archivo",
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
