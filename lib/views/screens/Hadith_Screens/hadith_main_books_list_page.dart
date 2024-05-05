import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Hadith_Books_Data/all_hadith_books_data_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Hadith_Screens_Widgets/hadith_category_custom_list_tile_widget.dart';

class HadithMainPage extends StatefulWidget {
  const HadithMainPage({super.key});

  static const String pageName = "/hadithMainPage";

  @override
  State<HadithMainPage> createState() => _HadithMainPageState();
}

class _HadithMainPageState extends State<HadithMainPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<AllHadithBooksDataBloc>().add(FetchAllHadithBooksDataEvent());
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
        child: BlocBuilder<AllHadithBooksDataBloc, AllHadithBooksDataState>(
          builder: (context, state) {
            if (state is AllHadithBooksDataInitialState) {
              developer.log("Haditthhhh .... Initial");
              return const SizedBox.shrink();
            } else if (state is AllHadithBooksDataLoadingState) {
              developer.log("Haditthhhh .... Loadinggg");
              return const SizedBox.shrink();
            } else if (state is AllHadithBooksDataLoadedState) {
              developer.log("Haditthhhh .... Loadedddd");

              return ListView.builder(
                itemCount: state.allHadithBooksDetailsList.length,
                itemBuilder: (context, index) {
                  return HadithCategoryCustomListTileWidget(
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
