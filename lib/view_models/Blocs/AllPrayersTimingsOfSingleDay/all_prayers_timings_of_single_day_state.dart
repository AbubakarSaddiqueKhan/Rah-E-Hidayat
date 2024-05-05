part of 'all_prayers_timings_of_single_day_bloc.dart';

@immutable
sealed class AllPrayersTimingsOfSingleDayState {
  const AllPrayersTimingsOfSingleDayState();
}

@immutable
final class AllPrayersTimingsOfSingleDayInitialState
    extends AllPrayersTimingsOfSingleDayState {}

@immutable
final class AllPrayersTimingsOfSingleDayLoadingState
    extends AllPrayersTimingsOfSingleDayState {}

@immutable
final class AllPrayersTimingsOfSingleDayLoadedState
    extends AllPrayersTimingsOfSingleDayState {
  final AllPrayersTimingOfDayModel allPrayersTimingOfDay;

  const AllPrayersTimingsOfSingleDayLoadedState(
      {required this.allPrayersTimingOfDay});
}

@immutable
final class AllPrayersTimingsOfSingleDayErrorState
    extends AllPrayersTimingsOfSingleDayState {}
