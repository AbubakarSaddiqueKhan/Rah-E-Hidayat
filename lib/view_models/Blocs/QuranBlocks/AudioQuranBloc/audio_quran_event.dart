part of 'audio_quran_bloc.dart';

@immutable
sealed class AudioQuranEvent {
  const AudioQuranEvent();
}

class PlayAudioQuranOfGivenReciterWithAyahNumberEvent extends AudioQuranEvent {
  final QuranReciterModel quranReciterData;
  final int quranRecitationAyahNumber;

  const PlayAudioQuranOfGivenReciterWithAyahNumberEvent(
      {required this.quranReciterData,
      required this.quranRecitationAyahNumber});
}
