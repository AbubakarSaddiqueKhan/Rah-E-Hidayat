part of 'supplications_data_of_given_supplication_id_bloc.dart';

@immutable
sealed class SupplicationsDataOfGivenSupplicationIdEvent {
  const SupplicationsDataOfGivenSupplicationIdEvent();
}

class FetchAllSupplicationsOfGivenSupplicationIdEvent
    extends SupplicationsDataOfGivenSupplicationIdEvent {
  final SupplicationCategoriesData supplicationCategoryData;

  const FetchAllSupplicationsOfGivenSupplicationIdEvent(
      {required this.supplicationCategoryData});
}
