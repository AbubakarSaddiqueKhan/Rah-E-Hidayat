part of 'show_or_hide_quran_translation_bloc.dart';

@immutable
sealed class ShowOrHideQuranTranslationState {
  const ShowOrHideQuranTranslationState();
}

@immutable
final class ShowOrHideQuranTranslationInitialState
    extends ShowOrHideQuranTranslationState {
  final bool showOrHideQuranTranslationUpdatedCurrentValue;

  const ShowOrHideQuranTranslationInitialState(
      {required this.showOrHideQuranTranslationUpdatedCurrentValue});
}

@immutable
final class ShowOrHideQuranTranslationLoadingState
    extends ShowOrHideQuranTranslationState {
  final bool showOrHideQuranTranslationUpdatedCurrentValue;

  const ShowOrHideQuranTranslationLoadingState(
      {required this.showOrHideQuranTranslationUpdatedCurrentValue});
}

@immutable
final class ShowOrHideQuranTranslationLoadedState
    extends ShowOrHideQuranTranslationState {
  final bool showOrHideQuranTranslationUpdatedCurrentValue;

  const ShowOrHideQuranTranslationLoadedState(
      {required this.showOrHideQuranTranslationUpdatedCurrentValue});
}

@immutable
final class ShowOrHideQuranTranslationErrorState
    extends ShowOrHideQuranTranslationState {}
