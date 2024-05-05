import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';

class HomePageAppSettingsCustomButton extends StatelessWidget {
  const HomePageAppSettingsCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppSettingsMainPageDesign.pageName);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Container(
            width: width,
            height: height * 0.1,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )),
            alignment: Alignment.center,
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "App Settings",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.lime,
                        fontFamily: "Archivo"),
                  ),
                ),
                const VerticalDivider(
                  indent: 0,
                  endIndent: 0.1,
                ),
                Expanded(
                    child: Image.asset(
                  "assets/images/settings.png",
                  fit: BoxFit.contain,
                )),
              ],
            )),
      ),
    );
  }
}
