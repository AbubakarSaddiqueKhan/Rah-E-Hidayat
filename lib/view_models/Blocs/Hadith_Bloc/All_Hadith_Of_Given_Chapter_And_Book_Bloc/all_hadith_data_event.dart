part of 'all_hadith_data_bloc.dart';

@immutable
sealed class AllHadithDataEvent {
  const AllHadithDataEvent();
}

class FetchHadithDataOfGivenChapterNumberAndBookIdEvent extends AllHadithDataEvent {
  final HadithBooksDataModel hadithBookData;
  final ChapterWiseHadithBoundriesDataModel chapterWiseHadithBoundriesData;

  const FetchHadithDataOfGivenChapterNumberAndBookIdEvent(
      {required this.hadithBookData,
      required this.chapterWiseHadithBoundriesData});
}
