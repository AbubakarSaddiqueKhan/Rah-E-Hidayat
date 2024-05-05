part of 'change_arabic_quran_text_color_bloc.dart';

@immutable
sealed class ChangeArabicQuranTextColorEvent {
  const ChangeArabicQuranTextColorEvent();
}

class FetchCurrentSelectedArabicQuranTextFromGivenIndexEvent
    extends ChangeArabicQuranTextColorEvent {
  final int currentSelectedColorIndex;

  const FetchCurrentSelectedArabicQuranTextFromGivenIndexEvent(
      {required this.currentSelectedColorIndex});
}
