part of 'asma_ul_husnaa_bloc.dart';

@immutable
sealed class AsmaUlHusnaaState {
  const AsmaUlHusnaaState();
}

@immutable
final class AsmaUlHusnaaInitialState extends AsmaUlHusnaaState {}

@immutable
final class AsmaUlHusnaaLoadingState extends AsmaUlHusnaaState {}

@immutable
final class AsmaUlHusnaaLoadedState extends AsmaUlHusnaaState {
  final List<AsmaUlHusnaaImportanceModel>
      asmaUlHusnaImportanceInLightOfQuranAndHadithDataList;
  final List<AsmaUlHusnaModel> allAsmaUlHusnaasDataList;

  const AsmaUlHusnaaLoadedState(
      {required this.asmaUlHusnaImportanceInLightOfQuranAndHadithDataList,
      required this.allAsmaUlHusnaasDataList});
}

class AsmaUlHusnaaPlayingState extends AsmaUlHusnaaState {}

@immutable
final class AsmaUlHusnaaErrorState extends AsmaUlHusnaaState {}
