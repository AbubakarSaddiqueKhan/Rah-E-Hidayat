import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_books.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_chapters_data.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Hadith_Books_Data/all_hadith_books_data_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/Hadith_Screens/hadith_chapters_details_screen.dart';
import 'package:flutter_quran_api_practice/views/screens/Hadith_Screens/hadith_detailed_page.dart';

/// Handle Navigation detailed page ...

void handleNavigationToDetailedPage(
    int index, BuildContext context, AllHadithBooksDataLoadedState state) {
  if (state.allHadithBooksDetailsList[index].hadithBookId >= 1 &&
      state.allHadithBooksDetailsList[index].hadithBookId <= 42) {
    Navigator.of(context).pushNamed(HadithChaptersDataPage.pageName,
        arguments: state.allHadithBooksDetailsList[index]);
  } else {
    ChapterWiseHadithBoundriesDataModel chapterWiseHadithBoundriesData =
        ChapterWiseHadithBoundriesDataModel(
            hadithChapterNumber: 1,
            startingHadithNumber: 1,
            endingHadithNumber: 40,
            totalNumberOfHadithInThatChapter: 40);

    if ((state.allHadithBooksDetailsList[index].hadithBookId == 43) ||
        (state.allHadithBooksDetailsList[index].hadithBookId == 44)) {
      chapterWiseHadithBoundriesData = ChapterWiseHadithBoundriesDataModel(
          hadithChapterNumber: 1,
          startingHadithNumber: 1,
          endingHadithNumber: 42,
          totalNumberOfHadithInThatChapter: 42);
    } else if ((state.allHadithBooksDetailsList[index].hadithBookId == 45)) {
      chapterWiseHadithBoundriesData = ChapterWiseHadithBoundriesDataModel(
          hadithChapterNumber: 1,
          startingHadithNumber: 1,
          endingHadithNumber: 40,
          totalNumberOfHadithInThatChapter: 40);
    } else if ((state.allHadithBooksDetailsList[index].hadithBookId == 46)) {
      chapterWiseHadithBoundriesData = ChapterWiseHadithBoundriesDataModel(
          hadithChapterNumber: 1,
          startingHadithNumber: 1,
          endingHadithNumber: 40,
          totalNumberOfHadithInThatChapter: 40);
    }

    (
      HadithBooksDataModel hadithBookData,
      ChapterWiseHadithBoundriesDataModel chapterWiseHadithBoundriesData
    ) hadithDataRecord = (
      state.allHadithBooksDetailsList[index],
      chapterWiseHadithBoundriesData
    );

    Navigator.of(context).pushNamed(HadithDetailedDataPage.pageName,
        arguments: hadithDataRecord);
  }
}
