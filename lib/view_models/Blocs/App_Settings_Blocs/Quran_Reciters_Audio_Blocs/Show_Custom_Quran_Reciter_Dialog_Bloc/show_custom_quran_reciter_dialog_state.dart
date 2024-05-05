part of 'show_custom_quran_reciter_dialog_bloc.dart';

@immutable
sealed class ShowCustomQuranReciterDialogState {
  const ShowCustomQuranReciterDialogState();
}

@immutable
final class ShowCustomQuranReciterDialogInitialState
    extends ShowCustomQuranReciterDialogState {
  final bool isCustomDialogOpened;

  const ShowCustomQuranReciterDialogInitialState(
      {required this.isCustomDialogOpened});
}

@immutable
final class ShowCustomQuranReciterDialogLoadingState
    extends ShowCustomQuranReciterDialogState {
  final bool isCustomDialogOpened;

  const ShowCustomQuranReciterDialogLoadingState(
      {required this.isCustomDialogOpened});
}

@immutable
final class ShowCustomQuranReciterDialogLoadedState
    extends ShowCustomQuranReciterDialogState {
  final bool isCustomDialogOpened;

  const ShowCustomQuranReciterDialogLoadedState(
      {required this.isCustomDialogOpened});
}

@immutable
final class ShowCustomQuranReciterDialogErrorState
    extends ShowCustomQuranReciterDialogState {}
