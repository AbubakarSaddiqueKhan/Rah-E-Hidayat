part of 'quran_all_parah_local_data_bloc.dart';

@immutable
sealed class QuranAllParahLocalDataState {
  const QuranAllParahLocalDataState();
}

@immutable
final class QuranAllParahLocalDataInitialState
    extends QuranAllParahLocalDataState {}

@immutable
final class QuranAllParahLocalDataLoadingState
    extends QuranAllParahLocalDataState {}

@immutable
final class QuranAllParahLocalDataLoadedState
    extends QuranAllParahLocalDataState {
  final List<Parah> allParahDataList;

  const QuranAllParahLocalDataLoadedState({required this.allParahDataList});
}

@immutable
final class QuranAllParahLocalDataErrorState
    extends QuranAllParahLocalDataState {}
