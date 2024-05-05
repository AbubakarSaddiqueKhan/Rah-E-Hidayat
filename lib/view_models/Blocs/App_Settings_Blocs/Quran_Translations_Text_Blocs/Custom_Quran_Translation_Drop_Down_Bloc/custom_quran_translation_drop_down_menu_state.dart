part of 'custom_quran_translation_drop_down_menu_bloc.dart';

@immutable
sealed class CustomQuranTranslationDropDownMenuState {
  const CustomQuranTranslationDropDownMenuState();
}

final class CustomQuranTranslationDropDownMenuInitialState
    extends CustomQuranTranslationDropDownMenuState {}

final class CustomQuranTranslationDropDownMenuLoadingState
    extends CustomQuranTranslationDropDownMenuState {}

final class CustomQuranTranslationDropDownMenuLoadedState
    extends CustomQuranTranslationDropDownMenuState {
  final int selectQuranTranslationId;

  const CustomQuranTranslationDropDownMenuLoadedState(
      {required this.selectQuranTranslationId});
}

final class CustomQuranTranslationDropDownMenuErrorState
    extends CustomQuranTranslationDropDownMenuState {}
