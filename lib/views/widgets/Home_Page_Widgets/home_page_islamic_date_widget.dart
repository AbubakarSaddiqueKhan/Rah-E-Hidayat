import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/IslamicDateConversionBloc/date_conversion_bloc.dart';

class HomePageIslamicDateWidget extends StatelessWidget {
  const HomePageIslamicDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DateConversionBloc, DateConversionState>(
      builder: (context, state) {
        if (state is DateConversionInitialState) {
          return const Text(
            "Waiting ...",
            maxLines: 1,
            style: TextStyle(
                fontSize: 12,
                color: Colors.deepPurple,
                overflow: TextOverflow.ellipsis,
                fontFamily: "Merienda"),
          );
        } else if (state is DateConversionLoadingState) {
          return const Text(
            "Fetching ...",
            maxLines: 1,
            style: TextStyle(
                fontSize: 12,
                color: Colors.amber,
                overflow: TextOverflow.ellipsis,
                fontFamily: "Merienda"),
          );
        } else if (state is DateConversionErrorState) {
          return const Text(
            "Network Error ...",
            maxLines: 1,
            style: TextStyle(
                fontSize: 12,
                color: Colors.red,
                overflow: TextOverflow.ellipsis,
                fontFamily: "Merienda"),
          );
        } else {
          (state as DateConversionLoadedState);
          return Text(
            "${state.convertedDate.data.hijri.day} ${state.convertedDate.data.hijri.month.ar} ${state.convertedDate.data.hijri.year} هـ",
            maxLines: 1,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontSize: 17,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
                fontFamily: "Amiri"),
          );
        }
      },
    );
  }
}
