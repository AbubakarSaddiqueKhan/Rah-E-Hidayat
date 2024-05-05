part of 'custom_quran_translation_drop_down_menu_bloc.dart';

@immutable
sealed class CustomQuranTranslationDropDownMenuEvent {
  const CustomQuranTranslationDropDownMenuEvent();
}

class FetchQuranTranslationDropDownMenuValueFromIndexEvent
    extends CustomQuranTranslationDropDownMenuEvent {
  final int index;

  const FetchQuranTranslationDropDownMenuValueFromIndexEvent(
      {required this.index});
}
