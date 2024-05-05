import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AllPrayersTimingsOfSingleDay/all_prayers_timings_of_single_day_bloc.dart';

class MaghribPryerTimingWidget extends StatelessWidget {
  const MaghribPryerTimingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Maghrib",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: Image.asset(
            "assets/icons/maghrib.png",
            fit: BoxFit.contain,
          ),
        ),
        // Icon(
        //   Icons.cloud,
        //   color: Colors.white,
        // ),
        BlocBuilder<AllPrayersTImingsOfSingleDayBloc,
            AllPrayersTimingsOfSingleDayState>(
          builder: (context, state) {
            if (state is AllPrayersTimingsOfSingleDayInitialState) {
              if (kDebugMode) {
                print("Initial ..... State");
              }
              return const Text(
                "Waiting ...",
                style: const TextStyle(fontSize: 8, color: Colors.amber),
              );
            } else if (state is AllPrayersTimingsOfSingleDayLoadingState) {
              if (kDebugMode) {
                print("Loading ..... State");
              }
              return const Text(
                "Fetching ...",
                style: const TextStyle(fontSize: 8, color: Colors.green),
              );
            } else if (state is AllPrayersTimingsOfSingleDayErrorState) {
              if (kDebugMode) {
                print("Error ..... State");
              }
              return const Text(
                "Error ...",
                style: const TextStyle(color: Colors.red),
              );
            } else {
              (state as AllPrayersTimingsOfSingleDayLoadedState);
              if (kDebugMode) {
                print("Loaded ..... State ");
              }
              return Text(
                state.allPrayersTimingOfDay.data.timings.Maghrib,
                style: const TextStyle(color: Colors.white),
              );
            }
          },
        )
      ],
    );
  }
}
