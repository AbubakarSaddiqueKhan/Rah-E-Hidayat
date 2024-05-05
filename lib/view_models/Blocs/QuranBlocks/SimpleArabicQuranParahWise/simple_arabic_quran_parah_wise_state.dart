part of 'simple_arabic_quran_parah_wise_bloc.dart';

@immutable
sealed class SimpleArabicQuranParahWiseState {
  const SimpleArabicQuranParahWiseState();
}

@immutable
final class SimpleArabicQuranParahWiseInitialState
    extends SimpleArabicQuranParahWiseState {}

@immutable
final class SimpleArabicQuranParahWiseLoadingState
    extends SimpleArabicQuranParahWiseState {}

@immutable
final class SimpleArabicQuranParahWiseLoadedState
    extends SimpleArabicQuranParahWiseState {
  final SimpleArabicQuranParahWise simpleArabicQuranParahWiseData;

  const SimpleArabicQuranParahWiseLoadedState(
      {required this.simpleArabicQuranParahWiseData});
}

@immutable
final class SimpleArabicQuranParahWiseErrorState
    extends SimpleArabicQuranParahWiseState {}
