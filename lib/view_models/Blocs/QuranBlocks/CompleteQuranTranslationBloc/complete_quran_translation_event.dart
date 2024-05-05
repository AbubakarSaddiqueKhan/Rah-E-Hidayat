part of 'complete_quran_translation_bloc.dart';

@immutable
sealed class CompleteQuranTranslationEvent {
  const CompleteQuranTranslationEvent();
}

class FetchCompleteQuranTranslationEvent extends CompleteQuranTranslationEvent {
  final int translatorId;

  const FetchCompleteQuranTranslationEvent({required this.translatorId});
}
