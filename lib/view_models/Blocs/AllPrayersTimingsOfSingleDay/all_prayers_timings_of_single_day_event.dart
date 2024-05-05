part of 'all_prayers_timings_of_single_day_bloc.dart';

@immutable
sealed class AllPrayersTImingsOfSingleDayEvent {
  const AllPrayersTImingsOfSingleDayEvent();
}

class FetchAllPrayerTimingOfSingleDayEvent
    extends AllPrayersTImingsOfSingleDayEvent {
  final Position currentUserPosition;

  const FetchAllPrayerTimingOfSingleDayEvent(
      {required this.currentUserPosition});
}
