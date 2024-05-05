import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/QuranAllSurahsLocalDataBloc/quran_all_surahs_local_data_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_surah_widget.dart';

class AllSurahsOfQuranWidgetsList extends StatefulWidget {
  const AllSurahsOfQuranWidgetsList({super.key});

  @override
  State<AllSurahsOfQuranWidgetsList> createState() =>
      _AllSurahsOfQuranWidgetsListState();
}

class _AllSurahsOfQuranWidgetsListState
    extends State<AllSurahsOfQuranWidgetsList> {
  @override
  void initState() {
    super.initState();
    context
        .read<QuranAllSurahsLocalDataBloc>()
        .add(FetchAllSurahsOfQuranDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
        BlocBuilder<QuranAllSurahsLocalDataBloc, QuranAllSurahsLocalDataState>(
      builder: (context, state) {
        if (state is QuranAllSurahsLocalDataInitialState) {
          return const Text(
            "Initial .... ",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else if (state is QuranAllSurahsLocalDataLoadingState) {
          return const Text(
            "Loading .... ",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else if (state is QuranAllSurahsLocalDataErrorState) {
          return const Text(
            "Error .... ",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else {
          (state as QuranAllSurahsLocalDataLoadedState);
          return ListView.builder(
            itemCount: state.allSurahsDataList.length,
            itemBuilder: (context, index) =>
                QuranMainPageSurahWidget(surah: state.allSurahsDataList[index]),
          );
        }
      },
    ));
  }
}
