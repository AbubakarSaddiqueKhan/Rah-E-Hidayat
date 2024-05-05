part of 'change_quran_translation_text_size_bloc.dart';

@immutable
sealed class ChangeQuranTranslationTextSizeEvent {
  const ChangeQuranTranslationTextSizeEvent();
}

class ChangeQuranTranslationTextSizeFromGivenValueOfSliderEvent
    extends ChangeQuranTranslationTextSizeEvent {
  final double currentQuranTranslationFontSize;

  const ChangeQuranTranslationTextSizeFromGivenValueOfSliderEvent(
      {required this.currentQuranTranslationFontSize});
}
