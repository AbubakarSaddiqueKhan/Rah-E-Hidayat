part of 'update_current_time_bloc.dart';

@immutable
sealed class UpdateCurrentTimeState {
  const UpdateCurrentTimeState();
}

@immutable
final class UpdateCurrentTimeInitialState extends UpdateCurrentTimeState {
  final DateTime dateTime;

  const UpdateCurrentTimeInitialState({required this.dateTime});
}

@immutable
class UpdateCurrentTimeLoadedState extends UpdateCurrentTimeState {
  final int currentHour;
  final int currentMinute;
  final int currentSecond;

  const UpdateCurrentTimeLoadedState(
      {required this.currentHour,
      required this.currentMinute,
      required this.currentSecond});
}
