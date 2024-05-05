part of 'show_custom_arabic_quran_dialog_bloc.dart';

@immutable
sealed class ShowCustomArabicQuranDialogState {
  const ShowCustomArabicQuranDialogState();
}

final class ShowCustomArabicQuranDialogInitialState
    extends ShowCustomArabicQuranDialogState {
  final bool isCustomDialogOpened;

  const ShowCustomArabicQuranDialogInitialState(
      {required this.isCustomDialogOpened});
}

final class ShowCustomArabicQuranDialogLoadingState
    extends ShowCustomArabicQuranDialogState {
  final bool isCustomDialogOpened;

  const ShowCustomArabicQuranDialogLoadingState(
      {required this.isCustomDialogOpened});
}

final class ShowCustomArabicQuranDialogLoadedState
    extends ShowCustomArabicQuranDialogState {
  final bool isCustomDialogOpened;

  const ShowCustomArabicQuranDialogLoadedState(
      {required this.isCustomDialogOpened});
}

final class ShowCustomArabicQuranDialogErrorState
    extends ShowCustomArabicQuranDialogState {
  const ShowCustomArabicQuranDialogErrorState();
}
