import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Parah_Wise_Quran_Translation_Categorization_Bloc/parah_wise_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/SimpleArabicQuranParahWise/simple_arabic_quran_parah_wise_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Parah_Wise_Widgets/parah_wise_quran_custom_list_view_deisgn.dart';

class ParahMainPageDesign extends StatefulWidget {
  const ParahMainPageDesign({super.key});
  static const String pageName = "parahMainPage/";

  @override
  State<ParahMainPageDesign> createState() => _ParahMainPageDesignState();
}

late int parahNumber;

class _ParahMainPageDesignState extends State<ParahMainPageDesign> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    parahNumber = ModalRoute.of(context)!.settings.arguments as int;

    context
        .read<SimpleArabicQuranParahWiseBloc>()
        .add(FetchSimpleArabicQuranDataOfGivenParah(parahNumber: parahNumber));

    context.read<ParahWiseQuranTranslationCategorizationBloc>().add(
        FetchParahWiseQuranTranslationOfGivenParahNumberEvent(
            parahNumber: parahNumber, translatorId: quranTranslatorIdMainData));
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    List<String> allParahQuranTranslationText = [];
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
          child: ParahWiseQuranCustomListViewDesignWidget(
            allParahQuranTranslationText: allParahQuranTranslationText,
            quranReciterMainData: quranReciterMainData,
          )),
    );
  }
}
