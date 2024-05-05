import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UpdateCurrentTimeBloc/update_current_time_bloc.dart';

class HomePageDigitalClockWidget extends StatelessWidget {
  const HomePageDigitalClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateCurrentTimeBloc, UpdateCurrentTimeState>(
      builder: (context, state) {
        if (state is UpdateCurrentTimeInitialState) {
          return Text(
            "${state.dateTime.hour} : ${state.dateTime.minute} : ${state.dateTime.second}",
            style: const TextStyle(fontSize: 34, color: Colors.white),
          );
        } else {
          (state as UpdateCurrentTimeLoadedState);

          return Text(
            "${state.currentHour} : ${state.currentMinute} : ${state.currentSecond}",
            style: const TextStyle(
                fontSize: 38, color: Colors.white, fontFamily: "Archivo"),
          );
        }
      },
    );
  }
}
