part of 'date_conversion_bloc.dart';

@immutable
sealed class DateConversionEvent {}

class FetchTodayIslamicConvertedDate extends DateConversionEvent {}
