part of 'quran_all_surahs_local_data_bloc.dart';

@immutable
sealed class QuranAllSurahsLocalDataState {
  const QuranAllSurahsLocalDataState();
}

@immutable
final class QuranAllSurahsLocalDataInitialState
    extends QuranAllSurahsLocalDataState {}

@immutable
final class QuranAllSurahsLocalDataLoadingState
    extends QuranAllSurahsLocalDataState {}

@immutable
final class QuranAllSurahsLocalDataLoadedState
    extends QuranAllSurahsLocalDataState {
  final List<Surah> allSurahsDataList;
  const QuranAllSurahsLocalDataLoadedState({required this.allSurahsDataList});
}

@immutable
final class QuranAllSurahsLocalDataErrorState
    extends QuranAllSurahsLocalDataState {}
