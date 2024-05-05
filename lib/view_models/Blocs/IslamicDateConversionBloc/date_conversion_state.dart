part of 'date_conversion_bloc.dart';

@immutable
sealed class DateConversionState {
  const DateConversionState();
}

@immutable
final class DateConversionInitialState extends DateConversionState {}

@immutable
class DateConversionLoadingState extends DateConversionState {}

@immutable
class DateConversionErrorState extends DateConversionState {}

@immutable
class DateConversionLoadedState extends DateConversionState {
  final IslamicDateConversionModel convertedDate;

  const DateConversionLoadedState({required this.convertedDate});
}
