import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_books.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Hadith_Of_Given_Chapter_And_Book_Bloc/all_hadith_data_bloc.dart';

class HadithDetailedCustomListTileWidget extends StatelessWidget {
  final int index;
  final AllHadithDataLoadedState state;
  const HadithDetailedCustomListTileWidget(
      {super.key, required this.index, required this.state});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 2, top: 3),
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
                  "Hadith Number : ${state.hadithData.hadithNumbersList[index]}",
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                    fontFamily: "Archivo",
                    color: Colors.green,
                  ),
                ),
              ),
              Text(
                state.hadithData.arabicHadithTextList[index],
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  fontFamily: "Saleem",
                  wordSpacing: 2.5,
                  fontSize: 28,
                  height: 1.5,
                  color: Colors.white,
                ),
              ),
              Text(
                state.hadithData.translatedHadithTextList[index],
                textAlign: TextAlign.start,
                textDirection: state.hadithData.translatedHadithTextDirection ==
                        HadithBooksDataModel.leftToRightTextDirection
                    ? TextDirection.ltr
                    : TextDirection.rtl,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: state.hadithData.translatedHadithFontStyleName,
                  color: Colors.cyan,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
