part of 'simple_arabic_quran_parah_wise_bloc.dart';

@immutable
sealed class SimpleArabicQuranParahWiseEvent {
  const SimpleArabicQuranParahWiseEvent();
}

class FetchSimpleArabicQuranDataOfGivenParah
    extends SimpleArabicQuranParahWiseEvent {
  final int parahNumber;

  const FetchSimpleArabicQuranDataOfGivenParah({required this.parahNumber});
}
