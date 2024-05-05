import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Qibla_Direction/qibla_direction_model.dart';
import 'package:flutter_quran_api_practice/views/screens/Qibla_Direction_Screens/qibla_direction_main_page_widget.dart';

class HomePageQiblaDirectionCustomButton extends StatelessWidget {
  final QiblaDirectionModel qiblaDirectionModel;
  final double distanceBetweenUserCurrentLocationAndKaaba;
  const HomePageQiblaDirectionCustomButton(
      {super.key,
      required this.qiblaDirectionModel,
      required this.distanceBetweenUserCurrentLocationAndKaaba});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("clicked... qiblaa compasss ...........");

        var recordData =
            (distanceBetweenUserCurrentLocationAndKaaba, qiblaDirectionModel);

        Navigator.of(context).pushNamed(QiblaDirectionMainPageDesign.pageName,
            arguments: recordData);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
              width: 1,
            )),
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
                flex: 70,
                child: SizedBox(
                  child: Image.asset(
                    "assets/images/compass.png",
                    fit: BoxFit.contain,
                  ),
                )),
            const Expanded(
              flex: 30,
              child: Text(
                "قبلہ",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 22, color: Colors.lime, fontFamily: "Amiri"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
