import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;
import 'package:flutter_quran_api_practice/view_models/Blocs/Supplications/AllSupplicationsCategoriesData/all_supplications_categories_data_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Supplications_Widgets/supplication_category_custom_list_tile_widget.dart';

class SupplicationCategoriesMainPage extends StatefulWidget {
  const SupplicationCategoriesMainPage({super.key});
  static const String pageName = "supplicationsMainPage";

  @override
  State<SupplicationCategoriesMainPage> createState() =>
      _SupplicationCategoriesMainPageState();
}

class _SupplicationCategoriesMainPageState
    extends State<SupplicationCategoriesMainPage> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    context
        .read<AllSupplicationsCategoriesDataBloc>()
        .add(FetchAllSupplicationsCategoriesEvent());
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
        child: BlocBuilder<AllSupplicationsCategoriesDataBloc,
            AllSupplicationsCategoriesDataState>(
          builder: (context, state) {
            if (state is AllSupplicationsCategoriesDataInitialState) {
              developer.log("Initialll .................");
              return const SizedBox.shrink();
            } else if (state is AllSupplicationsCategoriesDataLoadingState) {
              developer.log("Loaidngggg .................");
              return const SizedBox.shrink();
            } else if (state is AllSupplicationsCategoriesDataLoadedState) {
              developer.log("laondeddddddddddd");
              return ListView.builder(
                itemCount: state.supplicationCategoriesData.length,
                itemBuilder: (context, index) {
                  return SupplicationsCategoryCustomListTileWidget(
                    index: index,
                    state: state,
                  );
                },
              );
            } else {
              developer.log("Errrrrrrrrrrrrrrrrrr");
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
