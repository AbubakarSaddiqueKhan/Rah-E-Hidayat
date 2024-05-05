part of 'update_current_time_bloc.dart';

@immutable
sealed class UpdateCurrentTimeEvent {}

@immutable
class FetchCurrentUpdatedTime extends UpdateCurrentTimeEvent {}
