part of 'qibla_direction_bloc.dart';

@immutable
sealed class QiblaDirectionState {
  const QiblaDirectionState();
}

@immutable
final class QiblaDirectionInitialState extends QiblaDirectionState {}

@immutable
final class QiblaDirectionLoadingState extends QiblaDirectionState {}

@immutable
final class QiblaDirectionLoadedState extends QiblaDirectionState {
  final QiblaDirectionModel qiblaDirectionData;
  const QiblaDirectionLoadedState({required this.qiblaDirectionData});
}

@immutable
final class QiblaDirectionErrorState extends QiblaDirectionState {}
