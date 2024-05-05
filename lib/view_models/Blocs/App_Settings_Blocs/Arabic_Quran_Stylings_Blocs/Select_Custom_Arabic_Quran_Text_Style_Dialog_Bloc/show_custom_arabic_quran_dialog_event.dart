part of 'show_custom_arabic_quran_dialog_bloc.dart';

@immutable
sealed class ShowCustomArabicQuranDialogEvent {
  const ShowCustomArabicQuranDialogEvent();
}

class OpenOrCloseArabicQuranFontStyleChangeDialogEvent
    extends ShowCustomArabicQuranDialogEvent {
  final bool isDialogOpened;

  const OpenOrCloseArabicQuranFontStyleChangeDialogEvent(
      {required this.isDialogOpened});
}
