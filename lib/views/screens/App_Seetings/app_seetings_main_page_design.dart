import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_reciter_model.dart';
import 'package:flutter_quran_api_practice/utils/my_custom_colors.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Arabic_Quran_Stylings_Blocs/CustomArabicQuranTextStylingDropDownMenuBloc/custom_arabic_quran_text_styling_drop_down_menu_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/app_settings_page_all_widget_deisgn.dart';

class AppSettingsMainPageDesign extends StatefulWidget {
  const AppSettingsMainPageDesign({super.key});

  static const String pageName = "/appSettingsPage";

  @override
  State<AppSettingsMainPageDesign> createState() =>
      _AppSettingsMainPageDesignState();
}

QuranReciterModel quranReciterMainData = quranReciterDataList[7];
int quranTranslatorIdMainData = 32;
String currentSelectedArabicQuranFontStyleNameMainData =
    arabicQuranFontStyles[1];

Color currentSelectedArabicQuranTextColorMainData = quranTextColors[0];
double currentArabicQuranFontSizeMainData = 26;

Color currentSelectedQuranTranslationTextColorMainData = quranTextColors[2];
double currentQuranTranslationFontSizeMainData = 20;

String currentSelectedQuranReciterName = "Select Quran Reciter";
String currentSelectedQuranTranslatorName = "Select Quran Translator";
String currentSelectedArabicQuranTextStyle = "Select Arabic Quran Style";

bool currentTranslationShowingState = false;

class _AppSettingsMainPageDesignState extends State<AppSettingsMainPageDesign> {
  bool isQuranReciterDialogOpened = false;
  bool isQuranTranslatorDialogOpened = false;
  bool isArabicQuranFontStylingDialogOpened = false;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

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
        child: const SingleChildScrollView(
          child: AppSettingsPageAllWidgets(),
        ),
      ),
    );
  }
}
