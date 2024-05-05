part of 'custom_quran_reciter_drop_down_menu_bloc.dart';

@immutable
sealed class CustomQuranReciterDropDownMenuEvent {
  const CustomQuranReciterDropDownMenuEvent();
}

class FetchQuranReciterDropDownMenuValueFromIndexEvent
    extends CustomQuranReciterDropDownMenuEvent {
  final int index;

  const FetchQuranReciterDropDownMenuValueFromIndexEvent({required this.index});
}
