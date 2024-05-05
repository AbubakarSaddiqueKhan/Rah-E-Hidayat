part of 'show_custom_quran_translation_bloc.dart';

@immutable
sealed class ShowCustomQuranTranslationState {
  const ShowCustomQuranTranslationState();
}

final class ShowCustomQuranTranslationInitialState
    extends ShowCustomQuranTranslationState {
  final bool isCustomDialogOpened;

  const ShowCustomQuranTranslationInitialState(
      {required this.isCustomDialogOpened});
}

final class ShowCustomQuranTranslationLoadingState
    extends ShowCustomQuranTranslationState {
  final bool isCustomDialogOpened;

  const ShowCustomQuranTranslationLoadingState(
      {required this.isCustomDialogOpened});
}

final class ShowCustomQuranTranslationLoadedState
    extends ShowCustomQuranTranslationState {
  final bool isCustomDialogOpened;

  const ShowCustomQuranTranslationLoadedState(
      {required this.isCustomDialogOpened});
}

final class ShowCustomQuranTranslationErrorState
    extends ShowCustomQuranTranslationState {}
