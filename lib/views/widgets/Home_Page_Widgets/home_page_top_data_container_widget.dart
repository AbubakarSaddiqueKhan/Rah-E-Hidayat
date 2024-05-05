import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/All_Day_Prayers_TIming_Widgets/all_day_prayers_timing_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/home_page_digital_clock_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/home_page_islamic_date_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/home_page_top_custom_app_bar_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/home_page_user_address_widget.dart';

class HomePageTopDataContainerWidget extends StatelessWidget {
  const HomePageTopDataContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
        child: Container(
          width: width,
          height: height * 0.45,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          alignment: Alignment.center,
          child: const Column(
            children: [
              SizedBox(
                height: 5,
              ),
              HomePageTopCustomAppBar(),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    HomePageDigitalClockWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    HomePageIslamicDateWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    HomePageUserAddressWidget(),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: AllDayPrayerTimingWidget(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
