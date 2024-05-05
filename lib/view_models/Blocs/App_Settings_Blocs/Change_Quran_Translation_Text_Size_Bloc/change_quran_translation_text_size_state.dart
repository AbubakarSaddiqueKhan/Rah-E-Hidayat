part of 'change_quran_translation_text_size_bloc.dart';

@immutable
sealed class ChangeQuranTranslationTextSizeState {
  const ChangeQuranTranslationTextSizeState();
}

final class ChangeQuranTranslationTextSizeInitialState
    extends ChangeQuranTranslationTextSizeState {}

final class ChangeQuranTranslationTextSizeLoadingState
    extends ChangeQuranTranslationTextSizeState {}

final class ChangeQuranTranslationTextSizeLoadedState
    extends ChangeQuranTranslationTextSizeState {
  final double currentQuranTranslationFontSize;

  const ChangeQuranTranslationTextSizeLoadedState(
      {required this.currentQuranTranslationFontSize});
}

final class ChangeQuranTranslationTextSizeErrorState
    extends ChangeQuranTranslationTextSizeState {}
