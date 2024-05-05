part of 'change_quran_translation_text_color_bloc.dart';

@immutable
sealed class ChangeQuranTranslationTextColorEvent {
  const ChangeQuranTranslationTextColorEvent();
}

class FetchCurrentSelectedQuranTranslationTextFromGivenIndexEvent
    extends ChangeQuranTranslationTextColorEvent {
  final int currentSelectedColorIndex;

  const FetchCurrentSelectedQuranTranslationTextFromGivenIndexEvent(
      {required this.currentSelectedColorIndex});
}
