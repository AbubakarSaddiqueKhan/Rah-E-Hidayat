part of 'change_arabic_quran_text_color_bloc.dart';

@immutable
sealed class ChangeArabicQuranTextColorState {
  const ChangeArabicQuranTextColorState();
}

final class ChangeArabicQuranTextColorInitialState
    extends ChangeArabicQuranTextColorState {}

final class ChangeArabicQuranTextColorLoadingState
    extends ChangeArabicQuranTextColorState {}

final class ChangeArabicQuranTextColorLoadedState
    extends ChangeArabicQuranTextColorState {
  final Color currentSelectedArabicQuranTextColor;

  const ChangeArabicQuranTextColorLoadedState(
      {required this.currentSelectedArabicQuranTextColor});
}

final class ChangeArabicQuranTextColorErrorState
    extends ChangeArabicQuranTextColorState {}
