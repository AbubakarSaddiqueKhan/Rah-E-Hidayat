import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Supplications/AllSupplicationsCategoriesData/all_supplications_categories_data_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/Supplications/supplications_detailed_page.dart';

class SupplicationsCategoryCustomListTileWidget extends StatelessWidget {
  final int index;
  final AllSupplicationsCategoriesDataLoadedState state;
  const SupplicationsCategoryCustomListTileWidget(
      {super.key, required this.index, required this.state});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 2,
        top: 2,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SupplicationsDetailedPage.pageName,
              arguments: state.supplicationCategoriesData[index]);
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
          alignment: Alignment.center,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  state.supplicationCategoriesData[index]
                      .supplicationCategoryEnglishName,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 22, fontFamily: "Archivo"),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  state.supplicationCategoriesData[index]
                      .supplicationCategoryUrduName,
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      height: 2,
                      letterSpacing: 2,
                      fontFamily: "Saleem"),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Total Supplications : ${state.supplicationCategoriesData[index].totalNumberOfSupplicationsInThatCategory}",
                  style: const TextStyle(
                      color: Colors.cyan, fontSize: 22, fontFamily: "Archivo"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
