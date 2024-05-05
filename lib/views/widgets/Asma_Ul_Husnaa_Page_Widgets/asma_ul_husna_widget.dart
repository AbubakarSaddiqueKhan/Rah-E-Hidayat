import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Asma_Ul_Husna_Model/local_asma_ul_husna.dart';

class AsmaUlHusnaWidgets extends StatelessWidget {
  const AsmaUlHusnaWidgets({super.key, required this.asmaUlHusnaData});
  final AsmaUlHusnaModel asmaUlHusnaData;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 2),
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${asmaUlHusnaData.id.toString()} .",
                      style: const TextStyle(
                          color: Colors.lime,
                          fontSize: 19,
                          fontFamily: "Khand"),
                    ),
                    Text(
                      asmaUlHusnaData.arabicName,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                          fontFamily: "Saleem",
                          wordSpacing: 2),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        asmaUlHusnaData.urduTranslation,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                            color: Colors.green,
                            fontFamily: "Amiri",
                            fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        asmaUlHusnaData.englishTranslation,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.cyan,
                            fontFamily: "Archivo"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                ),
              )),
        )
      ],
    );
  }
}
