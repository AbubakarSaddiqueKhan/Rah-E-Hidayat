import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/IslamicDateConversionBloc/date_conversion_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/CompleteQuranTranslationBloc/complete_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UpdateCurrentTimeBloc/update_current_time_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories_Widgets/bottom_home_page_categories.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/home_page_top_data_container_widget.dart';

class HomePageDesign extends StatefulWidget {
  const HomePageDesign({super.key});
  static const pageName = "homePage/";

  @override
  State<HomePageDesign> createState() => _HomePageDesignState();
}

class _HomePageDesignState extends State<HomePageDesign> {
  @override
  void didChangeDependencies() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        context
            .read<DateConversionBloc>()
            .add(FetchTodayIslamicConvertedDate());

        context.read<UpdateCurrentTimeBloc>().add(FetchCurrentUpdatedTime());

        context
            .read<CompleteQuranTranslationBloc>()
            .add(const FetchCompleteQuranTranslationEvent(translatorId: 19));

        context
            .read<UserCurrentLocationBloc>()
            .add(FetchUserCurrentLocationEvent(context: context));
      },
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        child: const SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageTopDataContainerWidget(),
                HomePageCategoriesWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
