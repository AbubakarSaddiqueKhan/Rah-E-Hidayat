part of 'audio_quran_bloc.dart';

@immutable
sealed class AudioQuranState {}

final class AudioQuranInitialState extends AudioQuranState {}

final class AudioQuranLoadingState extends AudioQuranState {}

final class AudioQuranLoadedState extends AudioQuranState {}

final class AudioQuranErrorState extends AudioQuranState {}
