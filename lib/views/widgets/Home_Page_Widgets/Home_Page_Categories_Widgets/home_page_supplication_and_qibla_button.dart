import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Qibla_Direction/qibla_direction_model.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories_Widgets/home_page_qibla_direction_custom_button.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories_Widgets/home_page_supplications_custom_button.dart';

class HomePageQiblaAndSupplicationCustomButtons extends StatelessWidget {
  final QiblaDirectionModel qiblaDirectionModel;
  final double distanceBetweenUserCurrentLocationAndKaaba;

  const HomePageQiblaAndSupplicationCustomButtons(
      {super.key,
      required this.qiblaDirectionModel,
      required this.distanceBetweenUserCurrentLocationAndKaaba});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return SizedBox(
      width: width,
      height: height * 0.2,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Row(
          children: [
            const Expanded(
                flex: 48, child: HomePageSupplicationsCustomButton()),
            const Spacer(flex: 2),
            Expanded(
                flex: 48,
                child: HomePageQiblaDirectionCustomButton(
                    qiblaDirectionModel: qiblaDirectionModel,
                    distanceBetweenUserCurrentLocationAndKaaba:
                        distanceBetweenUserCurrentLocationAndKaaba)),
          ],
        ),
      ),
    );
  }
}
