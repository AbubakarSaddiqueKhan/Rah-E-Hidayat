import 'package:flutter/material.dart';

class SelectQuranReciterTextWidget extends StatelessWidget {
  const SelectQuranReciterTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Text(
          "Select Quran Reciter",
          style: TextStyle(
            fontFamily: "Archivo",
            color: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
