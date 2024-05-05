import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Qibla_Direction/qibla_direction_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QiblaDirectionBloc/qibla_direction_bloc.dart';
import 'dart:developer' as developer;
import 'package:flutter_quran_api_practice/view_models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories_Widgets/home_page_app_settings_custom_button.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories_Widgets/home_page_asma_ul_husna_custom_button.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories_Widgets/home_page_quran_and_hadith_custom_button.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories_Widgets/home_page_supplication_and_qibla_button.dart';
import 'package:geolocator/geolocator.dart';

class HomePageCategoriesWidget extends StatelessWidget {
  const HomePageCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const double kaabaLatitudeValue = 21.4224779;
    const double kaabaLongitudeValue = 39.8251832;
    double latValue = 0, lngValue = 0;
    double distanceBetweenUserCurrentLocationAndKaaba = 0;
    QiblaDirectionModel qiblaDirectionModel = QiblaDirectionModel(
        code: 0,
        status: "0",
        data: Data(latitude: 0, longitude: 0, direction: 0));

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
          developer.log(
              "User locations : ${state.currentPosition.latitude} , ${state.currentPosition.longitude}");

          latValue = state.currentPosition.latitude;
          lngValue = state.currentPosition.longitude;

          context.read<QiblaDirectionBloc>().add(
              FetchQiblaDirectionFromCurrentUserLocationEvent(
                  userCurrentPosition: state.currentPosition));
        }
      },
      child: BlocListener<QiblaDirectionBloc, QiblaDirectionState>(
        listener: (context, state) {
          if (state is QiblaDirectionInitialState) {
            developer.log("Qibla Initial State");
          } else if (state is QiblaDirectionLoadingState) {
            developer.log("Qibla Loading State");
          } else if (state is QiblaDirectionErrorState) {
            developer.log("Qibla Error State");
          } else if (state is QiblaDirectionLoadedState) {
            developer.log("Alhamdulillah Qibla Direction : ");
            developer.log(state.qiblaDirectionData.data!.direction.toString());
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    "Qibla Direction is : ${state.qiblaDirectionData.data.direction}")));

            distanceBetweenUserCurrentLocationAndKaaba =
                Geolocator.distanceBetween(latValue, lngValue,
                        kaabaLatitudeValue, kaabaLongitudeValue) *
                    0.001;

            qiblaDirectionModel = state.qiblaDirectionData;
          }
        },
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const HomePageQuranAndHadithCustomButton(),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              child: HomePageAsmaUlHusnaaCustomButton(),
            ),
            const SizedBox(
              height: 5,
            ),
            HomePageQiblaAndSupplicationCustomButtons(
              distanceBetweenUserCurrentLocationAndKaaba:
                  distanceBetweenUserCurrentLocationAndKaaba,
              qiblaDirectionModel: qiblaDirectionModel,
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              child: HomePageAppSettingsCustomButton(),
            ),
          ],
        ),
      ),
    );
  }
}
