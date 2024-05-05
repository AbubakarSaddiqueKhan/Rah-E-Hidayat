part of 'simple_arabic_quran_surah_wise_bloc.dart';

@immutable
sealed class SimpleArabicQuranSurahWiseState {
  const SimpleArabicQuranSurahWiseState();
}

@immutable
final class SimpleArabicQuranSurahWiseInitialState
    extends SimpleArabicQuranSurahWiseState {}

@immutable
final class SimpleArabicQuranSurahWiseLoadingState
    extends SimpleArabicQuranSurahWiseState {}

@immutable
final class SimpleArabicQuranSurahWiseLoadedState
    extends SimpleArabicQuranSurahWiseState {
  final SimpleArabicQuranSurahWiseModel simpleArabicCompleteSurahData;

  const SimpleArabicQuranSurahWiseLoadedState(
      {required this.simpleArabicCompleteSurahData});
}

@immutable
final class SimpleArabicQuranSurahWiseErrorState
    extends SimpleArabicQuranSurahWiseState {}
