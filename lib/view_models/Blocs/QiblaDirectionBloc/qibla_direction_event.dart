part of 'qibla_direction_bloc.dart';

@immutable
sealed class QiblaDirectionEvent {
  const QiblaDirectionEvent();
}

@immutable
class FetchQiblaDirectionFromCurrentUserLocationEvent
    extends QiblaDirectionEvent {
  final Position userCurrentPosition;
  const FetchQiblaDirectionFromCurrentUserLocationEvent(
      {required this.userCurrentPosition});
}
