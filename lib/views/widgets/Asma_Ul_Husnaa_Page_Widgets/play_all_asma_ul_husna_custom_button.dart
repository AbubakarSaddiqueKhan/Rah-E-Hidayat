import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Asma_Ul_Husnaa_Bloc/asma_ul_husnaa_bloc.dart';

class PlayAllAsmaUlHusnaCustomButton extends StatelessWidget {
  const PlayAllAsmaUlHusnaCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 2),
      child: InkWell(
        onTap: () {
          context.read<AsmaUlHusnaaBloc>().add(PlayAllAsmaUlHusnaaEvent());
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          alignment: Alignment.center,
          child: const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Play Asma Ul Husna",
                  style: TextStyle(
                      fontFamily: "Archivo", fontSize: 18, color: Colors.amber),
                ),
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.amber,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
