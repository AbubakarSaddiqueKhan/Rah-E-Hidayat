import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_books.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_chapters_data.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Chapters_Of_Given_Hadith_Book_Bloc/all_chapters_of_hadith_book_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/Hadith_Screens/hadith_chapters_details_screen.dart';
import 'package:flutter_quran_api_practice/views/screens/Hadith_Screens/hadith_detailed_page.dart';
import 'dart:developer' as developer;

class HadithChapterIntroCustomListTileWidget extends StatelessWidget {
  final int index;
  final AllChaptersOfHadithBookLoadedState state;
  const HadithChapterIntroCustomListTileWidget(
      {super.key, required this.index, required this.state});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 2, top: 3),
      child: InkWell(
        onTap: () {
          developer.log(
              "Clicked on : ${state.allChapterWiseDataOfGivenHadithBookData.allChapterNamesOfGivenHadithBook[index].toString()}");

          (
            HadithBooksDataModel hadithBookData,
            ChapterWiseHadithBoundriesDataModel chapterWiseHadithBoundriesData
          ) hadithDataRecord = (
            allHadithBooksDetailsData,
            state.allChapterWiseDataOfGivenHadithBookData
                .allChapterWiseBoundariesOfGivenHadithBook[index]
          );
          Navigator.of(context).pushNamed(HadithDetailedDataPage.pageName,
              arguments: hadithDataRecord);
        },
        child: Container(
          width: width,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    state.allChapterWiseDataOfGivenHadithBookData
                        .allChapterNamesOfGivenHadithBook[index],
                    textAlign: allHadithBooksDetailsData
                                .hadithBookNameInTheirTranslatedLanguageTextDirection ==
                            HadithBooksDataModel.leftToRightTextDirection
                        ? TextAlign.start
                        : TextAlign.end,
                    textDirection: allHadithBooksDetailsData
                                .hadithBookNameInTheirTranslatedLanguageTextDirection ==
                            HadithBooksDataModel.leftToRightTextDirection
                        ? TextDirection.ltr
                        : TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: allHadithBooksDetailsData
                          .translatedLanguageFontStyleName,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Total Number Of Hadith : ${state.allChapterWiseDataOfGivenHadithBookData.allChapterWiseBoundariesOfGivenHadithBook[index].totalNumberOfHadithInThatChapter}",
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    fontFamily: "Archivo",
                    color: Colors.cyan,
                  ),
                ),
                Text(
                  "Hadith Number : ${state.allChapterWiseDataOfGivenHadithBookData.allChapterWiseBoundariesOfGivenHadithBook[index].startingHadithNumber} - ${state.allChapterWiseDataOfGivenHadithBookData.allChapterWiseBoundariesOfGivenHadithBook[index].endingHadithNumber}",
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    fontFamily: "Archivo",
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
