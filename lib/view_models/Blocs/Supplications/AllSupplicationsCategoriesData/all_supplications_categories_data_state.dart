part of 'all_supplications_categories_data_bloc.dart';

@immutable
sealed class AllSupplicationsCategoriesDataState {
  const AllSupplicationsCategoriesDataState();
}

final class AllSupplicationsCategoriesDataInitialState
    extends AllSupplicationsCategoriesDataState {}

final class AllSupplicationsCategoriesDataLoadingState
    extends AllSupplicationsCategoriesDataState {}

final class AllSupplicationsCategoriesDataLoadedState
    extends AllSupplicationsCategoriesDataState {
  final List<SupplicationCategoriesData> supplicationCategoriesData;

  const AllSupplicationsCategoriesDataLoadedState(
      {required this.supplicationCategoriesData});
}

final class AllSupplicationsCategoriesDataErrorState
    extends AllSupplicationsCategoriesDataState {}
