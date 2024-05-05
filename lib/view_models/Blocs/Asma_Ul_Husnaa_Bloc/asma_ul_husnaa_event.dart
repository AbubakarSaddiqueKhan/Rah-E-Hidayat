part of 'asma_ul_husnaa_bloc.dart';

@immutable
sealed class AsmaUlHusnaaEvent {}

@immutable
class FetchAsmaUlHusnaaEvent extends AsmaUlHusnaaEvent {}

class PlayAllAsmaUlHusnaaEvent extends AsmaUlHusnaaEvent {}
