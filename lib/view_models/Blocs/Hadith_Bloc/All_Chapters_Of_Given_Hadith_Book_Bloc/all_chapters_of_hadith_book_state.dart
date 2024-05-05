part of 'all_chapters_of_hadith_book_bloc.dart';

@immutable
sealed class AllChaptersOfHadithBookState {
  const AllChaptersOfHadithBookState();
}

final class AllChaptersOfHadithBookInitialState
    extends AllChaptersOfHadithBookState {}

final class AllChaptersOfHadithBookLoadingState
    extends AllChaptersOfHadithBookState {}

final class AllChaptersOfHadithBookLoadedState
    extends AllChaptersOfHadithBookState {
  final AllChapterWiseDataOfGivenHadithBookModel
      allChapterWiseDataOfGivenHadithBookData;

  const AllChaptersOfHadithBookLoadedState(
      {required this.allChapterWiseDataOfGivenHadithBookData});
}

final class AllChaptersOfHadithBookErrorState
    extends AllChaptersOfHadithBookState {}
