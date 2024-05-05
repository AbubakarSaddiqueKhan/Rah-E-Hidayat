part of 'parah_wise_quran_translation_bloc.dart';

@immutable
sealed class ParahWiseQuranTranslationCategorizationState {
  const ParahWiseQuranTranslationCategorizationState();
}

final class ParahWiseQuranTranslationCategorizationInitialState
    extends ParahWiseQuranTranslationCategorizationState {}

final class ParahWiseQuranTranslationCategorizationLoadingState
    extends ParahWiseQuranTranslationCategorizationState {}

final class ParahWiseQuranTranslationCategorizationLoadedState
    extends ParahWiseQuranTranslationCategorizationState {
  final List<String> allParahQuranTranslationText;
  final CompleteQuranTranslatorModel completeQuranTranslatorData;

  const ParahWiseQuranTranslationCategorizationLoadedState(
      {required this.allParahQuranTranslationText,
      required this.completeQuranTranslatorData});
}

final class ParahWiseQuranTranslationCategorizationErrorState
    extends ParahWiseQuranTranslationCategorizationState {}
