import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_reciter_model.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'audio_quran_event.dart';
part 'audio_quran_state.dart';

class AudioQuranBloc extends Bloc<AudioQuranEvent, AudioQuranState> {
  AudioPlayer audioPlayer = AudioPlayer();
  Future<void> playAudioFromUrl({required String url}) async {
    try {
      await audioPlayer.play(UrlSource(url));
    } catch (e) {
      print(e);
    }
  }

  AudioQuranBloc() : super(AudioQuranInitialState()) {
    developer.log("Initialllll.........");
    on<PlayAudioQuranOfGivenReciterWithAyahNumberEvent>(
        _mapPlayAudioQuranOfGivenReciterWithAyahNumberEventToState);
  }

  FutureOr<void> _mapPlayAudioQuranOfGivenReciterWithAyahNumberEventToState(
      PlayAudioQuranOfGivenReciterWithAyahNumberEvent event,
      Emitter<AudioQuranState> emit) async {
    try {
      emit(AudioQuranLoadingState());
      developer.log("loadingggggggggg.........");

      String currentUrl =
          "https://cdn.islamic.network/quran/audio/64/${event.quranReciterData.reciterIdentifier}/${event.quranRecitationAyahNumber}.mp3";

      developer.log("Crrent is ....  $currentUrl");

      playAudioFromUrl(url: currentUrl);

      developer.log("loadoeeeed doneee.........");

      emit(AudioQuranLoadedState());
    } catch (e) {
      developer.log("errrrrrrrrrrrr.........");

      emit(AudioQuranErrorState());
    }
  }
}
