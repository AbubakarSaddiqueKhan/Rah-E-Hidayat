import 'dart:async';
import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quran_api_practice/model/Asma_Ul_Husna_Model/importance_of_asma_ul_husna_model.dart';
import 'package:flutter_quran_api_practice/model/Asma_Ul_Husna_Model/local_asma_ul_husna.dart';
import 'package:meta/meta.dart';

part 'asma_ul_husnaa_event.dart';
part 'asma_ul_husnaa_state.dart';

class AsmaUlHusnaaBloc extends Bloc<AsmaUlHusnaaEvent, AsmaUlHusnaaState> {
  AudioPlayer _audioPlayer = AudioPlayer();

  AsmaUlHusnaaBloc() : super(AsmaUlHusnaaInitialState()) {
    on<FetchAsmaUlHusnaaEvent>(_mapAsmaUlHusnaaEventToStates);
    on<PlayAllAsmaUlHusnaaEvent>(_mapPlayAllAsmaUlHusnaaEventToState);
  }

  FutureOr<void> _mapAsmaUlHusnaaEventToStates(
      FetchAsmaUlHusnaaEvent event, Emitter<AsmaUlHusnaaState> emit) {
    try {
      emit(AsmaUlHusnaaLoadingState());

      emit(AsmaUlHusnaaLoadedState(
          asmaUlHusnaImportanceInLightOfQuranAndHadithDataList:
              quranicVersesAndHadithListOnAllahNames,
          allAsmaUlHusnaasDataList: allAsmaUlHusnaasDataList));
    } catch (e) {
      emit(AsmaUlHusnaaErrorState());
    }
  }

  FutureOr<void> _mapPlayAllAsmaUlHusnaaEventToState(
      PlayAllAsmaUlHusnaaEvent event, Emitter<AsmaUlHusnaaState> emit) {
    try {
      _playAudioFromAsset(audioPath: "assets/allah_names.mp3");
    } catch (e) {
      emit(AsmaUlHusnaaErrorState());
    }
  }

  Future<void> _playAudioFromAsset({required String audioPath}) async {
    try {
      // Load the audio file from the asset
      ByteData data = await rootBundle.load(audioPath);
      // Play the audio file
      await _audioPlayer.play(BytesSource(data.buffer.asUint8List()));
    } catch (e) {
      if (kDebugMode) {
        print("Error playing audio: $e");
      }
    }
  }
}
