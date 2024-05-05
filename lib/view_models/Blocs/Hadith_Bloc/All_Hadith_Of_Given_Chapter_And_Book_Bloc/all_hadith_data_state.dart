part of 'all_hadith_data_bloc.dart';

@immutable
sealed class AllHadithDataState {
  const AllHadithDataState();
}

final class AllHadithDataInitialState extends AllHadithDataState {}

final class AllHadithDataLoadingState extends AllHadithDataState {}

final class AllHadithDataLoadedState extends AllHadithDataState {
  final HadithData hadithData;

  const AllHadithDataLoadedState({required this.hadithData});
}

final class AllHadithDataErrorState extends AllHadithDataState {}
