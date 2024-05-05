import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/model/Supplications/supplications_categories_data_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Supplications/SupplicationDataOfGivenSupplicationId/supplications_data_of_given_supplication_id_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Supplications_Widgets/supplication_detailed_custom_list_tile_widget.dart';

class SupplicationsDetailedPage extends StatefulWidget {
  const SupplicationsDetailedPage({super.key});
  static const String pageName = "supplicationsDetailedPage";

  @override
  State<SupplicationsDetailedPage> createState() =>
      _SupplicationsDetailedPageState();
}

class _SupplicationsDetailedPageState extends State<SupplicationsDetailedPage> {
  late SupplicationCategoriesData supplicationCategoryData;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    supplicationCategoryData = ModalRoute.of(context)!.settings.arguments
        as SupplicationCategoriesData;

    context.read<SupplicationsDataOfGivenSupplicationIdBloc>().add(
        FetchAllSupplicationsOfGivenSupplicationIdEvent(
            supplicationCategoryData: supplicationCategoryData));
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
        child: BlocBuilder<SupplicationsDataOfGivenSupplicationIdBloc,
            SupplicationsDataOfGivenSupplicationIdState>(
          builder: (context, state) {
            if (state is SupplicationsDataOfGivenSupplicationIdInitialState) {
              developer.log("Initialll .................");
              return const SizedBox.shrink();
            } else if (state
                is SupplicationsDataOfGivenSupplicationIdLoadingState) {
              developer.log("Loadinggggggggg .................");
              return const SizedBox.shrink();
            } else if (state
                is SupplicationsDataOfGivenSupplicationIdLoadedState) {
              developer.log("Loadedddddddd .................");
              return ListView.builder(
                itemCount: state.supplicationsData.length,
                itemBuilder: (context, index) {
                  return SupplicationDetailedCustomListTileWidget(
                      index: index, state: state);
                },
              );
            } else {
              developer.log("Errorrr .................");
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
