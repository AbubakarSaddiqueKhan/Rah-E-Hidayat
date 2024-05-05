part of 'custom_quran_reciter_drop_down_menu_bloc.dart';

@immutable
sealed class CustomQuranReciterDropDownMenuState {
  const CustomQuranReciterDropDownMenuState();
}

@immutable
final class CustomQuranReciterDropDownMenuInitialState
    extends CustomQuranReciterDropDownMenuState {}

@immutable
final class CustomQuranReciterDropDownMenuLoadingState
    extends CustomQuranReciterDropDownMenuState {}

@immutable
final class CustomQuranReciterDropDownMenuLoadedState
    extends CustomQuranReciterDropDownMenuState {
  final QuranReciterModel quranReciterData;

  const CustomQuranReciterDropDownMenuLoadedState(
      {required this.quranReciterData});
}

@immutable
final class CustomQuranReciterDropDownMenuErrorState
    extends CustomQuranReciterDropDownMenuState {}
