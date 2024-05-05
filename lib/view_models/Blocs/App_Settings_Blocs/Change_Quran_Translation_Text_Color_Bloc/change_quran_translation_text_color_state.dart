part of 'change_quran_translation_text_color_bloc.dart';

@immutable
sealed class ChangeQuranTranslationTextColorState {
  const ChangeQuranTranslationTextColorState();
}

final class ChangeQuranTranslationTextColorInitialState
    extends ChangeQuranTranslationTextColorState {}

final class ChangeQuranTranslationTextColorLoadingState
    extends ChangeQuranTranslationTextColorState {}

final class ChangeQuranTranslationTextColorLoadedState
    extends ChangeQuranTranslationTextColorState {
  final Color currentSelectedQuranTranslationTextColor;

  const ChangeQuranTranslationTextColorLoadedState(
      {required this.currentSelectedQuranTranslationTextColor});
}

final class ChangeQuranTranslationTextColorErrorState
    extends ChangeQuranTranslationTextColorState {}
