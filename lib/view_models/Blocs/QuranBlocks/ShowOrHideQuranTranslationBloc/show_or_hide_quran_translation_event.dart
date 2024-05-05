part of 'show_or_hide_quran_translation_bloc.dart';

@immutable
sealed class ShowOrHideQuranTranslationEvent {
  const ShowOrHideQuranTranslationEvent();
}

class ChangeShowOrHideQuranTranslationValueEvent
    extends ShowOrHideQuranTranslationEvent {
  final bool isTranslationCurrentlyShowing;

  const ChangeShowOrHideQuranTranslationValueEvent(
      {required this.isTranslationCurrentlyShowing});
}
