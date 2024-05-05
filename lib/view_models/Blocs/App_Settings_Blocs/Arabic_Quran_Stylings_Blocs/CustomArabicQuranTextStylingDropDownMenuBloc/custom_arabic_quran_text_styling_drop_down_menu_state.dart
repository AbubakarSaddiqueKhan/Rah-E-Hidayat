part of 'custom_arabic_quran_text_styling_drop_down_menu_bloc.dart';

@immutable
sealed class CustomArabicQuranTextStylingDropDownMenuState {
  const CustomArabicQuranTextStylingDropDownMenuState();
}

final class CustomArabicQuranTextStylingDropDownMenuInitialState
    extends CustomArabicQuranTextStylingDropDownMenuState {}

final class CustomArabicQuranTextStylingDropDownMenuLoadingState
    extends CustomArabicQuranTextStylingDropDownMenuState {}

final class CustomArabicQuranTextStylingDropDownMenuLoadedState
    extends CustomArabicQuranTextStylingDropDownMenuState {
  final String currentSelectedArabicQuranFontStyleName;

  const CustomArabicQuranTextStylingDropDownMenuLoadedState(
      {required this.currentSelectedArabicQuranFontStyleName});
}

final class CustomArabicQuranTextStylingDropDownMenuErrorState
    extends CustomArabicQuranTextStylingDropDownMenuState {}
