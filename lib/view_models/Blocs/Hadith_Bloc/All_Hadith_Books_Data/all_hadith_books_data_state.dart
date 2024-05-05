part of 'all_hadith_books_data_bloc.dart';

@immutable
sealed class AllHadithBooksDataState {
  const AllHadithBooksDataState();
}

final class AllHadithBooksDataInitialState extends AllHadithBooksDataState {}

final class AllHadithBooksDataLoadingState extends AllHadithBooksDataState {}

final class AllHadithBooksDataLoadedState extends AllHadithBooksDataState {
  final List<HadithBooksDataModel> allHadithBooksDetailsList;

  const AllHadithBooksDataLoadedState(
      {required this.allHadithBooksDetailsList});
}

final class AllHadithBooksDataErrorState extends AllHadithBooksDataState {}
