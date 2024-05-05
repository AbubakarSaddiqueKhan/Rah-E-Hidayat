part of 'show_custom_quran_reciter_dialog_bloc.dart';

@immutable
sealed class ShowCustomQuranReciterDialogEvent {
  const ShowCustomQuranReciterDialogEvent();
}

class OpenOrCloseQuranReciterDialogEvent
    extends ShowCustomQuranReciterDialogEvent {
  final bool isDialogOpened;

  const OpenOrCloseQuranReciterDialogEvent({required this.isDialogOpened});
}
