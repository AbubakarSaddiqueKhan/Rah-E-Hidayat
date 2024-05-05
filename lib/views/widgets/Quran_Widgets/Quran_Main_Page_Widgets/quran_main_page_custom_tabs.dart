import 'package:flutter/material.dart';

List<Widget> quranMainPageCustomTabBarsTitle = [
  Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 1,
          )),
      alignment: Alignment.center,
      child: const Padding(
        padding: EdgeInsets.only(top: 2, bottom: 2, left: 10, right: 10),
        child: Text(
          "Surahs",
          style: TextStyle(
            color: Colors.green,
            fontFamily: "Archivo",
            fontSize: 26,
          ),
        ),
      )),
  Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 1,
          )),
      alignment: Alignment.center,
      child: const Padding(
        padding: EdgeInsets.only(top: 2, bottom: 2, left: 10, right: 10),
        child: Text(
          "Parahs",
          style: TextStyle(
            color: Colors.green,
            fontFamily: "Archivo",
            fontSize: 26,
          ),
        ),
      )),
];
