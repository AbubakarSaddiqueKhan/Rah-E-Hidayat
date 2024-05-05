part of 'custom_arabic_quran_text_styling_drop_down_menu_bloc.dart';

@immutable
sealed class CustomArabicQuranTextStylingDropDownMenuEvent {
  const CustomArabicQuranTextStylingDropDownMenuEvent();
}

class FetchCustomArabicQuranTextStyleFromGivenIndex
    extends CustomArabicQuranTextStylingDropDownMenuEvent {
  final int currentSelectedArabicQuranFontStyleIndex;

  const FetchCustomArabicQuranTextStyleFromGivenIndex(
      {required this.currentSelectedArabicQuranFontStyleIndex});
}
