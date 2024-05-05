import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Qibla_Direction/check_qibla_co_ordinates.dart';
import 'package:flutter_quran_api_practice/model/Qibla_Direction/qibla_direction_model.dart';
import 'package:flutter_quran_api_practice/view_models/Custom_Painters/qibla_page_custom_painters.dart';

class QiblaDirectionMainPageDesign extends StatefulWidget {
  const QiblaDirectionMainPageDesign({
    super.key,
  });

  static const String pageName = "/qiblaDirectionPage";

  @override
  State<QiblaDirectionMainPageDesign> createState() =>
      _QiblaDirectionMainPageDesignState();
}

class _QiblaDirectionMainPageDesignState
    extends State<QiblaDirectionMainPageDesign> {
  @override
  Widget build(BuildContext context) {
    var recordData = ModalRoute.of(context)!.settings.arguments as (
      double,
      QiblaDirectionModel
    );

    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Distance from Makkah",
              style: const TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Archivo"),
            ),
            Text(
              "${recordData.$1.toInt().toString()} KM",
              style: const TextStyle(
                  color: Colors.green, fontSize: 20, fontFamily: "Archivo"),
            ),
            Text(
              "${recordData.$2.data.direction.toInt().toString()} °  -   ${QiblaCoOrdinates.checkCardinalWithDirectionInDegree(degree: recordData.$2.data.direction)}",
              style: const TextStyle(
                  color: Colors.cyan, fontSize: 20, fontFamily: "Archivo"),
            ),
            SizedBox(
              width: width * 0.8,
              height: height * 0.6,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: width * 0.7,
                      height: height * 0.6,
                      child: CustomPaint(
                        painter: QiblaPageCustomPainter(),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: (pi / 180) * recordData.$2.data.direction,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: width * 0.2,
                        height: height * 0.2,
                        child: Image.asset(
                          "assets/images/kaaba.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Place your device same as the cartesian point shown above",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 14, fontFamily: "Archivo"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
