part of 'all_chapters_of_hadith_book_bloc.dart';

@immutable
sealed class AllChaptersOfHadithBookEvent {
  const AllChaptersOfHadithBookEvent();
}

class FetchAllHadithChaptersDataOfGivenHadithBookEvent
    extends AllChaptersOfHadithBookEvent {
  final int hadithBookNumber;

  const FetchAllHadithChaptersDataOfGivenHadithBookEvent(
      {required this.hadithBookNumber});
}
