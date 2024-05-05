part of 'complete_quran_translation_bloc.dart';

@immutable
sealed class CompleteQuranTranslationState {
  const CompleteQuranTranslationState();
}

@immutable
final class CompleteQuranTranslationInitialState
    extends CompleteQuranTranslationState {}

@immutable
final class CompleteQuranTranslationLoadingState
    extends CompleteQuranTranslationState {}

@immutable
final class CompleteQuranTranslationLoadedState
    extends CompleteQuranTranslationState {
  final CompleteQuranTranslatorModel quranTranslatorData;
  final CompleteQuranTranslationModel completeQuranTranslationData;

  const CompleteQuranTranslationLoadedState(
      {required this.quranTranslatorData,
      required this.completeQuranTranslationData});
}

@immutable
final class CompleteQuranTranslationErrorState
    extends CompleteQuranTranslationState {}
