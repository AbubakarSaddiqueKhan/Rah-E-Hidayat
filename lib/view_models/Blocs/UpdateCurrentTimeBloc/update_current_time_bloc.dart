import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'update_current_time_event.dart';
part 'update_current_time_state.dart';

class UpdateCurrentTimeBloc
    extends Bloc<UpdateCurrentTimeEvent, UpdateCurrentTimeState> {
  static int currentHour = 0;
  static int currentMinute = 0;
  static int currentSecond = 0;

  UpdateCurrentTimeBloc()
      : super(UpdateCurrentTimeInitialState(dateTime: DateTime.now())) {
    currentUpdatedTime().listen(
      (event) {
        currentHour = event.hour;
        currentMinute = event.minute;
        currentSecond = event.second;

        if (currentHour > 12) {
          currentHour = 12 - currentHour;
          if (currentHour < 0) {
            currentHour = currentHour * (-1);
          }
        }

        add(FetchCurrentUpdatedTime());
      },
    );

    on<FetchCurrentUpdatedTime>((event, emit) {
      emit(UpdateCurrentTimeLoadedState(
          currentHour: currentHour,
          currentMinute: currentMinute,
          currentSecond: currentSecond));
    });
  }
}

@override
Stream<DateTime> currentUpdatedTime() async* {
  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    yield DateTime.now();
  }
}
