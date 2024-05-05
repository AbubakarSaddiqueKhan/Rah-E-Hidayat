import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Qibla_Direction/qibla_direction_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/QiblaDirectionApiService/qibla_direction_api_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';

part 'qibla_direction_event.dart';
part 'qibla_direction_state.dart';

class QiblaDirectionBloc
    extends Bloc<QiblaDirectionEvent, QiblaDirectionState> {
  QiblaDirectionBloc() : super(QiblaDirectionInitialState()) {
    on<FetchQiblaDirectionFromCurrentUserLocationEvent>(
        _mapFetchQiblaDirectionEventToStates);
  }

  FutureOr<void> _mapFetchQiblaDirectionEventToStates(
      FetchQiblaDirectionFromCurrentUserLocationEvent event,
      Emitter<QiblaDirectionState> emit) async {
    QiblaDirectionApiService qiblaDirectionApiService =
        QiblaDirectionApiService();
    try {
      emit(QiblaDirectionLoadingState());

      double latitudeValue = event.userCurrentPosition.latitude;
      double longitudeValue = event.userCurrentPosition.longitude;

      var userDataRecord = (latitudeValue, longitudeValue);

      QiblaDirectionModel qiblaDirectionModel = await qiblaDirectionApiService
          .fetchQiblaDirectionOfUser(userDataRecord);
      emit(QiblaDirectionLoadedState(qiblaDirectionData: qiblaDirectionModel));
    } catch (e) {
      emit(QiblaDirectionErrorState());
    }
  }
}
