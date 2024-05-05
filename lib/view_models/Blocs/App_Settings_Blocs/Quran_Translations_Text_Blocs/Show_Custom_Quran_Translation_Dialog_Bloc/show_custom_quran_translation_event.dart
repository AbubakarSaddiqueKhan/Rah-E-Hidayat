part of 'show_custom_quran_translation_bloc.dart';

@immutable
sealed class ShowCustomQuranTranslationEvent {
  const ShowCustomQuranTranslationEvent();
}

class OpenOrCloseQuranTranslationsDialogEvent
    extends ShowCustomQuranTranslationEvent {
  final bool isDialogOpened;

  const OpenOrCloseQuranTranslationsDialogEvent({required this.isDialogOpened});
}
