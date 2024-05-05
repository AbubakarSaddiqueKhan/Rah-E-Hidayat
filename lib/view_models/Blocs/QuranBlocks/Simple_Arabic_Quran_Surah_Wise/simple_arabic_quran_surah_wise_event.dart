part of 'simple_arabic_quran_surah_wise_bloc.dart';

@immutable
sealed class SimpleArabicQuranSurahWiseEvent {
  const SimpleArabicQuranSurahWiseEvent();
}

class FetchSimpleArabicQuranEvent extends SimpleArabicQuranSurahWiseEvent {
  final int surahNumber;
  const FetchSimpleArabicQuranEvent({
    required this.surahNumber,
  });
}
