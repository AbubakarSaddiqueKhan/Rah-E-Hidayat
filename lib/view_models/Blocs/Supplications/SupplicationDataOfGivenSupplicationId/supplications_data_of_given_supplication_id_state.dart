part of 'supplications_data_of_given_supplication_id_bloc.dart';

@immutable
sealed class SupplicationsDataOfGivenSupplicationIdState {
  const SupplicationsDataOfGivenSupplicationIdState();
}

final class SupplicationsDataOfGivenSupplicationIdInitialState
    extends SupplicationsDataOfGivenSupplicationIdState {}

final class SupplicationsDataOfGivenSupplicationIdLoadingState
    extends SupplicationsDataOfGivenSupplicationIdState {}

final class SupplicationsDataOfGivenSupplicationIdLoadedState
    extends SupplicationsDataOfGivenSupplicationIdState {
  final List<Empty> supplicationsData;

  const SupplicationsDataOfGivenSupplicationIdLoadedState(
      {required this.supplicationsData});
}

final class SupplicationsDataOfGivenSupplicationIdErrorState
    extends SupplicationsDataOfGivenSupplicationIdState {}
