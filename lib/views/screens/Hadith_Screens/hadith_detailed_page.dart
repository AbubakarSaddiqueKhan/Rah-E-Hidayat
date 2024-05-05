import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/model/Hadith/hadith_books.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_chapters_data.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Hadith_Of_Given_Chapter_And_Book_Bloc/all_hadith_data_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Hadith_Screens_Widgets/hadith_detailed_custom_list_tile_widget.dart';

class HadithDetailedDataPage extends StatefulWidget {
  const HadithDetailedDataPage({super.key});

  static const String pageName = "/hadithDetailedDataPage";

  @override
  State<HadithDetailedDataPage> createState() => _HadithDetailedDataPageState();
}

late (
  HadithBooksDataModel hadithBookData,
  ChapterWiseHadithBoundriesDataModel chapterWiseHadithBoundriesData
) hadithDataRecord;

class _HadithDetailedDataPageState extends State<HadithDetailedDataPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    hadithDataRecord = ModalRoute.of(context)!.settings.arguments as (
      HadithBooksDataModel hadithBookData,
      ChapterWiseHadithBoundriesDataModel chapterWiseHadithBoundriesData
    );

    context.read<AllHadithDataBloc>().add(
        FetchHadithDataOfGivenChapterNumberAndBookIdEvent(
            hadithBookData: hadithDataRecord.$1,
            chapterWiseHadithBoundriesData: hadithDataRecord.$2));
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: BlocBuilder<AllHadithDataBloc, AllHadithDataState>(
          builder: (context, state) {
            if (state is AllHadithDataInitialState) {
              developer.log("Haditthhhh .... Initial");
              return const SizedBox.shrink();
            } else if (state is AllHadithDataLoadingState) {
              developer.log("Haditthhhh .... Loadinggg");
              return const SizedBox.shrink();
            } else if (state is AllHadithDataLoadedState) {
              developer.log("Haditthhhh .... Loadedddd");

              return ListView.builder(
                itemCount: state.hadithData.translatedHadithTextList.length,
                itemBuilder: (context, index) {
                  return HadithDetailedCustomListTileWidget(
                    index: index,
                    state: state,
                  );
                },
              );
            } else {
              developer.log("Haditthhhh .... Errrorr");
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
