import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/QuranAllParahLocalDataBloc/quran_all_parah_local_data_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_parah_widget.dart';

class AllParahOfQuranWidgetsList extends StatefulWidget {
  const AllParahOfQuranWidgetsList({super.key});

  @override
  State<AllParahOfQuranWidgetsList> createState() =>
      _AllParahOfQuranWidgetsListState();
}

class _AllParahOfQuranWidgetsListState
    extends State<AllParahOfQuranWidgetsList> {
  @override
  void initState() {
    super.initState();
    context
        .read<QuranAllParahLocalDataBloc>()
        .add(FetchAllParahListOfQuranEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranAllParahLocalDataBloc, QuranAllParahLocalDataState>(
      builder: (context, state) {
        if (state is QuranAllParahLocalDataInitialState) {
          return const Text(
            "Initial .... ",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else if (state is QuranAllParahLocalDataLoadingState) {
          return const Text(
            "Loading .... ",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else if (state is QuranAllParahLocalDataErrorState) {
          return const Text(
            "Error .... ",
            style: TextStyle(fontSize: 22, color: Colors.white),
          );
        } else {
          (state as QuranAllParahLocalDataLoadedState);
          return ListView.builder(
            itemCount: state.allParahDataList.length,
            itemBuilder: (context, index) =>
                QuranMainPageParahWidget(parah: state.allParahDataList[index]),
          );
        }
      },
    );
  }
}
