part of 'all_supplications_categories_data_bloc.dart';

@immutable
sealed class AllSupplicationsCategoriesDataEvent {}

class FetchAllSupplicationsCategoriesEvent
    extends AllSupplicationsCategoriesDataEvent {}
