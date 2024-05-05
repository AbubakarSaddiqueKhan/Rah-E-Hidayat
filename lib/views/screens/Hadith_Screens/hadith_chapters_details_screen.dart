import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;
import 'package:flutter_quran_api_practice/model/Hadith/hadith_books.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Chapters_Of_Given_Hadith_Book_Bloc/all_chapters_of_hadith_book_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Hadith_Screens_Widgets/hadith_chapter_intro_custom_list_tile.dart';

class HadithChaptersDataPage extends StatefulWidget {
  const HadithChaptersDataPage({super.key});

  static const String pageName = "/hadithChaptersDataPage";

  @override
  State<HadithChaptersDataPage> createState() => _HadithChaptersDataPageState();
}

late HadithBooksDataModel allHadithBooksDetailsData;

class _HadithChaptersDataPageState extends State<HadithChaptersDataPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    allHadithBooksDetailsData =
        ModalRoute.of(context)!.settings.arguments as HadithBooksDataModel;

    context.read<AllChaptersOfHadithBookBloc>().add(
        FetchAllHadithChaptersDataOfGivenHadithBookEvent(
            hadithBookNumber: allHadithBooksDetailsData.hadithBookId));
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
        child: BlocBuilder<AllChaptersOfHadithBookBloc,
            AllChaptersOfHadithBookState>(
          builder: (context, state) {
            if (state is AllChaptersOfHadithBookInitialState) {
              developer.log("Haditthhhh .... Initial");
              return const SizedBox.shrink();
            } else if (state is AllChaptersOfHadithBookLoadingState) {
              developer.log("Haditthhhh .... Loadinggg");
              return const SizedBox.shrink();
            } else if (state is AllChaptersOfHadithBookLoadedState) {
              developer.log("Haditthhhh .... Loadedddd");

              return ListView.builder(
                itemCount: state.allChapterWiseDataOfGivenHadithBookData
                    .allChapterWiseBoundariesOfGivenHadithBook.length,
                itemBuilder: (context, index) {
                  return HadithChapterIntroCustomListTileWidget(
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
