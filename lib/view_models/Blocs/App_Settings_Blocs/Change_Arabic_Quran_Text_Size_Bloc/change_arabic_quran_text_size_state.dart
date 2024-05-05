part of 'change_arabic_quran_text_size_bloc.dart';

@immutable
sealed class ChangeArabicQuranTextSizeState {
  const ChangeArabicQuranTextSizeState();
}

final class ChangeArabicQuranTextSizeInitialState
    extends ChangeArabicQuranTextSizeState {}

final class ChangeArabicQuranTextSizeLoadingState
    extends ChangeArabicQuranTextSizeState {}

final class ChangeArabicQuranTextSizeLoadedState
    extends ChangeArabicQuranTextSizeState {
  final double currentArabicQuranFontSize;

  const ChangeArabicQuranTextSizeLoadedState(
      {required this.currentArabicQuranFontSize});
}

final class ChangeArabicQuranTextSizeErrorState
    extends ChangeArabicQuranTextSizeState {}
