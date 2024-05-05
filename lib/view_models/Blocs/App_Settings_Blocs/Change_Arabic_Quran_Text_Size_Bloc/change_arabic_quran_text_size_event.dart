part of 'change_arabic_quran_text_size_bloc.dart';

@immutable
sealed class ChangeArabicQuranTextSizeEvent {
  const ChangeArabicQuranTextSizeEvent();
}

class ChangeArabicQuranTextSizeFromGivenValueOfSlider
    extends ChangeArabicQuranTextSizeEvent {
  final double currentArabicQuranFontSize;

  const ChangeArabicQuranTextSizeFromGivenValueOfSlider(
      {required this.currentArabicQuranFontSize});
}
