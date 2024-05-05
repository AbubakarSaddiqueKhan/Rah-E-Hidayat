import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Supplications/SupplicationDataOfGivenSupplicationId/supplications_data_of_given_supplication_id_bloc.dart';

class SupplicationDetailedCustomListTileWidget extends StatelessWidget {
  final int index;
  final SupplicationsDataOfGivenSupplicationIdLoadedState state;
  const SupplicationDetailedCustomListTileWidget(
      {super.key, required this.index, required this.state});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
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
            Center(
              child: Text(
                "${(index + 1).toString()} دعا نمبر",
                style: const TextStyle(
                    color: Colors.white, fontSize: 22, fontFamily: "Archivo"),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "${state.supplicationsData[index].content}",
                textAlign: TextAlign.end,
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
              child: Center(
                child: Text(
                  "${state.supplicationsData[index].reference}",
                  style: const TextStyle(
                      color: Colors.cyan, fontSize: 22, fontFamily: "Archivo"),
                ),
              ),
            ),
            Center(
              child: Text(
                "Count : ${state.supplicationsData[index].count}",
                style: const TextStyle(
                    color: Colors.amber, fontSize: 22, fontFamily: "Archivo"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
