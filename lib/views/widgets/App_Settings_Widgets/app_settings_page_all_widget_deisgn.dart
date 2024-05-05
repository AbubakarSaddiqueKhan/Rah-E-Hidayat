import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/change_arabic_language_text_size_And_color_widgets.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/change_translation_language_text_color_and_size_widgets.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_arabic_language_font_style_custom_dialog_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_arabic_language_font_style_text_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_quran_reciter_custom_dialog_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_quran_reciter_text_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_quran_translation_custom_dialog_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/select_quran_transltion_text_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/show_or_hide_custom_arabic_font_style_dialog_custom_widget_design.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/show_or_hide_custom_quran_translation_dialog_custom_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/show_or_hide_quran_reciter_dialog_custom_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/App_Settings_Widgets/show_or_hide_quran_translation_custom_switch_widget.dart';

class AppSettingsPageAllWidgets extends StatefulWidget {
  const AppSettingsPageAllWidgets({super.key});

  @override
  State<AppSettingsPageAllWidgets> createState() =>
      _AppSettingsPageAllWidgetsState();
}

class _AppSettingsPageAllWidgetsState extends State<AppSettingsPageAllWidgets> {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        const SelectQuranReciterTextWidget(),
        const SizedBox(
          height: 10,
        ),
        ShowOrHideQuranReciterCustomDialogWidget(
            isQuranReciterDialogOpened: isQuranReciterDialogOpened),
        const SizedBox(
          height: 10,
        ),
        SelectQuranReciterCustomDialogWidget(
          isQuranReciterDialogOpened: isQuranReciterDialogOpened,
        ),
        const SizedBox(
          height: 10,
        ),
        ShowOrHideQuranTranslationCustomSwitchWidget(
          currentTranslationShowingState: currentTranslationShowingState,
          thumbIcon: thumbIcon,
        ),
        const SizedBox(
          height: 10,
        ),
        const SelectQuranTranslationTextWidget(),
        const SizedBox(
          height: 10,
        ),
        ShowOrHideCustomQuranTranslationDialogCustomWidget(
          isQuranTranslatorDialogOpened: isQuranTranslatorDialogOpened,
        ),
        const SizedBox(
          height: 10,
        ),
        SelectQuranTranslationCustomDialogWidget(
          isQuranTranslatorDialogOpened: isQuranTranslatorDialogOpened,
        ),
        const SizedBox(
          height: 10,
        ),
        const SelectArabicLanguageFontStyleTextWidget(),
        const SizedBox(
          height: 10,
        ),
        ShowOrHideCustomArabicFontStyleDialogCustomWidget(
          isArabicQuranFontStylingDialogOpened:
              isArabicQuranFontStylingDialogOpened,
        ),
        const SizedBox(
          height: 10,
        ),
        SelectArabicLanguageFontStyleCustomDialogWidget(
          isArabicQuranFontStylingDialogOpened:
              isArabicQuranFontStylingDialogOpened,
        ),
        const ChangeArabicLanguageTextSizeAndColorWidgets(),
        const ChangeTranslationLanguageTextSizeAndColorWidgets(),
      ],
    );
  }
}
