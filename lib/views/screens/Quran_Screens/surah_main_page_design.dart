import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Simple_Arabic_Quran_Surah_Wise/simple_arabic_quran_surah_wise_bloc.dart';

import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Surah_Wise_Widgets/surah_wise_quaran_custom_list_view_design_widget.dart';

class SurahMainPageDesign extends StatefulWidget {
  const SurahMainPageDesign({super.key});
  static const String pageName = "surahMainPage/";

  @override
  State<SurahMainPageDesign> createState() => _SurahMainPageDesignState();
}

class _SurahMainPageDesignState extends State<SurahMainPageDesign> {
  late int surahNumber;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    surahNumber = ModalRoute.of(context)!.settings.arguments as int;

    context
        .read<SimpleArabicQuranSurahWiseBloc>()
        .add(FetchSimpleArabicQuranEvent(surahNumber: surahNumber));
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: SurahWiseCustomListViewDesignWidget(
          surahNumber: surahNumber,
        ),
      ),
    );
  }
}
