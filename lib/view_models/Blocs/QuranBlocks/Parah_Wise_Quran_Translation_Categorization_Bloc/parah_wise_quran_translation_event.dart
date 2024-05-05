part of 'parah_wise_quran_translation_bloc.dart';

@immutable
sealed class ParahWiseQuranTranslationCategorizationEvent {
  const ParahWiseQuranTranslationCategorizationEvent();
}

class FetchParahWiseQuranTranslationOfGivenParahNumberEvent
    extends ParahWiseQuranTranslationCategorizationEvent {
  final int parahNumber;
  final int translatorId;
  const FetchParahWiseQuranTranslationOfGivenParahNumberEvent(
      {required this.parahNumber, required this.translatorId});
}
