import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AddressConversionBloc/address_conversion_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AllPrayersTimingsOfSingleDay/all_prayers_timings_of_single_day_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';

class HomePageUserAddressWidget extends StatelessWidget {
  const HomePageUserAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCurrentLocationBloc, UserCurrentLocationState>(
      listener: (context, state) {
        if (state is UserCurrentLocationInitialState) {
          if (kDebugMode) {
            print("Initial ...");
          }
        } else if (state is UserCurrentLocationLoadingState) {
          if (kDebugMode) {
            print("Loading ...");
          }
        } else if (state is UserCurrentLocationErrorState) {
          if (kDebugMode) {
            print("Network Error ...");
          }
        } else if (state is UserCurrentLocationLoadedState) {
          if (kDebugMode) {
            print(
                "User locations : ${state.currentPosition.latitude} , ${state.currentPosition.longitude}");
          }

          context
              .read<AddressConversionBloc>()
              .add(FetchConvertedAddress(position: state.currentPosition));

          context.read<AllPrayersTImingsOfSingleDayBloc>().add(
              FetchAllPrayerTimingOfSingleDayEvent(
                  currentUserPosition: state.currentPosition));
        }
      },
      child: Center(
        child: BlocBuilder<AddressConversionBloc, AddressConversionState>(
          builder: (context, state) {
            if (state is AddressConversionInitialState) {
              return const Text(
                "Waiting ...",
                maxLines: 1,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.brown,
                    overflow: TextOverflow.ellipsis,
                    fontFamily: "Merienda"),
              );
            } else if (state is AddressConversionLoadingState) {
              return const Text(
                "Fetching ...",
                maxLines: 1,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.lime,
                    overflow: TextOverflow.ellipsis,
                    fontFamily: "Merienda"),
              );
            } else if (state is AddressConversionErrorState) {
              return const Text(
                "Network Error ...",
                maxLines: 1,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.lime,
                    overflow: TextOverflow.ellipsis,
                    fontFamily: "Merienda"),
              );
            } else {
              (state as AddressConversionLoadedState);
              return Text(
                "${state.placemarks[0].subAdministrativeArea} , ${state.placemarks[0].administrativeArea} , ${state.placemarks[0].country}",
                maxLines: 1,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.cyan,
                    overflow: TextOverflow.ellipsis,
                    fontFamily: "Merienda"),
              );
            }
          },
        ),
      ),
    );
  }
}
