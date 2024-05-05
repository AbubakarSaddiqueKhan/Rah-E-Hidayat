import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/All_Day_Prayers_TIming_Widgets/asar_prayer_timig_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/All_Day_Prayers_TIming_Widgets/dhuhr_prayrer_timing_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/All_Day_Prayers_TIming_Widgets/fajar_prayer_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/All_Day_Prayers_TIming_Widgets/isha_prayer_timing_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/All_Day_Prayers_TIming_Widgets/maghrib_prayer_timing_widget.dart';

class AllDayPrayerTimingWidget extends StatelessWidget {
  const AllDayPrayerTimingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: FajarPrayerTimingWidget()),
        Expanded(
          child: DhuhrPrayerTimingWidget(),
        ),
        Expanded(
          child: AsarPrayerTimingWidget(),
        ),
        Expanded(
          child: MaghribPryerTimingWidget(),
        ),
        Expanded(
          child: IshaPrayerTimingWidget(),
        ),
      ],
    );
  }
}
