import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_books.dart';
import 'package:flutter_quran_api_practice/model/Hadith/handle_navigation_to_hadith_detailed_page.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Hadith_Books_Data/all_hadith_books_data_bloc.dart';
import 'dart:developer' as developer;

class HadithCategoryCustomListTileWidget extends StatelessWidget {
  final int index;
  final AllHadithBooksDataLoadedState state;
  const HadithCategoryCustomListTileWidget(
      {super.key, required this.index, required this.state});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
      child: InkWell(
        onTap: () {
          developer.log(
              "Clicked on : ${state.allHadithBooksDetailsList[index].hadithBookTranslationLanguageName.toString()} - ${state.allHadithBooksDetailsList[index].hadithBookEnglishName.toString()}  Book No : ${state.allHadithBooksDetailsList[index].hadithBookId.toString()}");
          handleNavigationToDetailedPage(index, context, state);
        },
        child: Container(
          width: width,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${state.allHadithBooksDetailsList[index].hadithBookTranslationLanguageName} - ${state.allHadithBooksDetailsList[index].hadithBookEnglishName}",
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    fontFamily: "Archivo",
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: state.allHadithBooksDetailsList[index]
                              .hadithBookNameInTheirTranslatedLanguageTextDirection ==
                          HadithBooksDataModel.leftToRightTextDirection
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Text(
                    state.allHadithBooksDetailsList[index]
                        .hadithBookNameInTheirTranslatedLanguage,
                    textAlign: state.allHadithBooksDetailsList[index]
                                .hadithBookNameInTheirTranslatedLanguageTextDirection ==
                            HadithBooksDataModel.leftToRightTextDirection
                        ? TextAlign.start
                        : TextAlign.end,
                    textDirection: state.allHadithBooksDetailsList[index]
                                .hadithBookNameInTheirTranslatedLanguageTextDirection ==
                            HadithBooksDataModel.leftToRightTextDirection
                        ? TextDirection.ltr
                        : TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: state.allHadithBooksDetailsList[index]
                          .translatedLanguageFontStyleName,
                      color: Colors.amber,
                    ),
                  ),
                ),
                Text(
                  "Total Hadith : ${state.allHadithBooksDetailsList[index].totalNumberOfHadithInThatBook}",
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
