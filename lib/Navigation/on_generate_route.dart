import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AddressConversionBloc/address_conversion_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AllPrayersTimingsOfSingleDay/all_prayers_timings_of_single_day_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Arabic_Quran_Stylings_Blocs/CustomArabicQuranTextStylingDropDownMenuBloc/custom_arabic_quran_text_styling_drop_down_menu_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Arabic_Quran_Stylings_Blocs/Select_Custom_Arabic_Quran_Text_Style_Dialog_Bloc/show_custom_arabic_quran_dialog_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Change_Arabic_Quran_Text_Size_Bloc/change_arabic_quran_text_size_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Change_Arabic_Quran_Text_Color_Bloc/change_arabic_quran_text_color_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Change_Quran_Translation_Text_Color_Bloc/change_quran_translation_text_color_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Change_Quran_Translation_Text_Size_Bloc/change_quran_translation_text_size_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Reciters_Audio_Blocs/Custom_Quran_Reciter_Drop_Down_Bloc/custom_quran_reciter_drop_down_menu_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Translations_Text_Blocs/Custom_Quran_Translation_Drop_Down_Bloc/custom_quran_translation_drop_down_menu_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Reciters_Audio_Blocs/Show_Custom_Quran_Reciter_Dialog_Bloc/show_custom_quran_reciter_dialog_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/App_Settings_Blocs/Quran_Translations_Text_Blocs/Show_Custom_Quran_Translation_Dialog_Bloc/show_custom_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Asma_Ul_Husnaa_Bloc/asma_ul_husnaa_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Chapters_Of_Given_Hadith_Book_Bloc/all_chapters_of_hadith_book_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Hadith_Books_Data/all_hadith_books_data_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/All_Hadith_Of_Given_Chapter_And_Book_Bloc/all_hadith_data_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/IslamicDateConversionBloc/date_conversion_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QiblaDirectionBloc/qibla_direction_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/AudioQuranBloc/audio_quran_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/CompleteQuranTranslationBloc/complete_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Parah_Wise_Quran_Translation_Categorization_Bloc/parah_wise_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/QuranAllParahLocalDataBloc/quran_all_parah_local_data_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/QuranAllSurahsLocalDataBloc/quran_all_surahs_local_data_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/ShowOrHideQuranTranslationBloc/show_or_hide_quran_translation_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/SimpleArabicQuranParahWise/simple_arabic_quran_parah_wise_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlocks/Simple_Arabic_Quran_Surah_Wise/simple_arabic_quran_surah_wise_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Supplications/AllSupplicationsCategoriesData/all_supplications_categories_data_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Supplications/SupplicationDataOfGivenSupplicationId/supplications_data_of_given_supplication_id_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UpdateCurrentTimeBloc/update_current_time_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/App_Seetings/app_seetings_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/Asma_Al_Husna_Main_Page/asma_al_husnaa_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/Hadith_Screens/hadith_chapters_details_screen.dart';
import 'package:flutter_quran_api_practice/views/screens/Hadith_Screens/hadith_detailed_page.dart';
import 'package:flutter_quran_api_practice/views/screens/Hadith_Screens/hadith_main_books_list_page.dart';
import 'package:flutter_quran_api_practice/views/screens/Home_Page_Screens/home_page_deisgn.dart';
import 'package:flutter_quran_api_practice/views/screens/Quran_Screens/parah_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/Quran_Screens/quran_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/Quran_Screens/surah_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/Supplications/supplication_categories_main_page.dart';
import 'package:flutter_quran_api_practice/views/screens/Supplications/supplications_detailed_page.dart';
import 'package:flutter_quran_api_practice/views/screens/Qibla_Direction_Screens/qibla_direction_main_page_widget.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageDesign.pageName:
      return SlideFromCenterLeftTransitionPageRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AddressConversionBloc(),
                child: Container(),
              ),
              BlocProvider(
                create: (context) => UserCurrentLocationBloc(),
              ),
              BlocProvider(
                create: (context) => UpdateCurrentTimeBloc(),
              ),
              BlocProvider(
                create: (context) => AllPrayersTImingsOfSingleDayBloc(),
              ),
              BlocProvider(
                create: (context) => DateConversionBloc(),
              ),
              BlocProvider(
                create: (context) => ShowOrHideQuranTranslationBloc(),
              ),
              BlocProvider(
                create: (context) => CompleteQuranTranslationBloc(),
              ),
              BlocProvider(create: (context) => QiblaDirectionBloc())
            ],
            child: const HomePageDesign(),
          ),
          settings: settings);

    case AsmaUlHusnaMainPageDesign.pageName:
      return SlideFromCenterRightTransitionPageRoute(
          page: BlocProvider(
            create: (context) => AsmaUlHusnaaBloc(),
            child: const AsmaUlHusnaMainPageDesign(),
          ),
          settings: settings);

    case QuranMainPageDesign.pageName:
      return SlideFromCenterLeftTransitionPageRoute(
          page: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SimpleArabicQuranSurahWiseBloc(),
          ),
          BlocProvider(
            create: (context) => QuranAllSurahsLocalDataBloc(),
          ),
          BlocProvider(
            create: (context) => QuranAllParahLocalDataBloc(),
          ),
        ],
        child: const QuranMainPageDesign(),
      ));

    case SurahMainPageDesign.pageName:
      return SlideFromCenterRightTransitionPageRoute(
          settings: settings,
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => ShowOrHideQuranTranslationBloc(),
              ),
              BlocProvider(
                create: (context) => SimpleArabicQuranSurahWiseBloc(),
              ),
              BlocProvider(
                create: (context) => CompleteQuranTranslationBloc(),
              ),
              BlocProvider(
                create: (context) => AudioQuranBloc(),
              ),
            ],
            child: const SurahMainPageDesign(),
          ));

    case ParahMainPageDesign.pageName:
      return SlideFromCenterLeftTransitionPageRoute(
          settings: settings,
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => ShowOrHideQuranTranslationBloc(),
              ),
              BlocProvider(
                create: (context) => SimpleArabicQuranParahWiseBloc(),
              ),
              BlocProvider(
                create: (context) => CompleteQuranTranslationBloc(),
              ),
              BlocProvider(
                create: (context) =>
                    ParahWiseQuranTranslationCategorizationBloc(),
              ),
              BlocProvider(
                create: (context) => AudioQuranBloc(),
              )
            ],
            child: const ParahMainPageDesign(),
          ));

    case QiblaDirectionMainPageDesign.pageName:
      return SlideFromCenterRightTransitionPageRoute(
          settings: settings, page: const QiblaDirectionMainPageDesign());

    case AppSettingsMainPageDesign.pageName:
      return SlideFromCenterRightTransitionPageRoute(
        page: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CustomQuranReciterDropDownMenuBloc(),
            ),
            BlocProvider(
              create: (context) => ShowCustomQuranReciterDialogBloc(),
            ),
            BlocProvider(
              create: (context) => CustomQuranTranslationDropDownMenuBloc(),
            ),
            BlocProvider(
              create: (context) => ShowCustomQuranTranslationBloc(),
            ),
            BlocProvider(
              create: (context) =>
                  CustomArabicQuranTextStylingDropDownMenuBloc(),
            ),
            BlocProvider(
              create: (context) => ShowCustomArabicQuranFontStylingDialogBloc(),
            ),
            BlocProvider(
              create: (context) => ShowOrHideQuranTranslationBloc(),
            ),
            BlocProvider(
              create: (context) => ChangeArabicQuranTextColorBloc(),
            ),
            BlocProvider(
              create: (context) => ChangeArabicQuranTextSizeBloc(),
            ),
            BlocProvider(
              create: (context) => ChangeQuranTranslationTextColorBloc(),
            ),
            BlocProvider(
              create: (context) => ChangeQuranTranslationTextSizeBloc(),
            ),
          ],
          child: const AppSettingsMainPageDesign(),
        ),
      );

    case HadithMainPage.pageName:
      return SlideFromCenterLeftTransitionPageRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AllHadithBooksDataBloc(),
              ),
              BlocProvider(
                create: (context) => AllHadithDataBloc(),
              ),
              BlocProvider(
                create: (context) => AllChaptersOfHadithBookBloc(),
              ),
            ],
            child: const HadithMainPage(),
          ),
          settings: settings);

    case HadithChaptersDataPage.pageName:
      return SlideFromCenterLeftTransitionPageRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AllHadithDataBloc(),
              ),
              BlocProvider(
                create: (context) => AllChaptersOfHadithBookBloc(),
              ),
            ],
            child: const HadithChaptersDataPage(),
          ),
          settings: settings);

    case HadithDetailedDataPage.pageName:
      return SlideFromCenterRightTransitionPageRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AllHadithDataBloc(),
              ),
              BlocProvider(
                create: (context) => AllChaptersOfHadithBookBloc(),
              ),
            ],
            child: const HadithDetailedDataPage(),
          ),
          settings: settings);

    case SupplicationCategoriesMainPage.pageName:
      return SlideFromCenterLeftTransitionPageRoute(
        page: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AllSupplicationsCategoriesDataBloc(),
            ),
            BlocProvider(
              create: (context) => SupplicationsDataOfGivenSupplicationIdBloc(),
            ),
          ],
          child: const SupplicationCategoriesMainPage(),
        ),
      );

    case SupplicationsDetailedPage.pageName:
      return SlideFromCenterRightTransitionPageRoute(
          page: BlocProvider(
            create: (context) => SupplicationsDataOfGivenSupplicationIdBloc(),
            child: const SupplicationsDetailedPage(),
          ),
          settings: settings);

    default:
      return MaterialPageRoute(
        builder: (context) {
          return const Center(
            child: Text("Some Thing Went Wrong"),
          );
        },
      );
  }
}

class SlideFromCenterLeftTransitionPageRoute extends PageRouteBuilder {
  SlideFromCenterLeftTransitionPageRoute(
      {required this.page, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(1, 0), end: const Offset(0, 0))
                .animate(animation),
            child: page,
          ),
        );
  final Widget page;
}

class SlideFromCenterRightTransitionPageRoute extends PageRouteBuilder {
  SlideFromCenterRightTransitionPageRoute(
      {required this.page, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(-1, 0), end: const Offset(0, 0))
                .animate(animation),
            child: page,
          ),
        );
  final Widget page;
}

class SlideFromTopCenterTransitionPageRoute extends PageRouteBuilder {
  SlideFromTopCenterTransitionPageRoute(
      {required this.page, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(0, 1), end: const Offset(0, 0))
                .animate(animation),
            child: page,
          ),
        );
  final Widget page;
}

class SlideFromBottomCenterTransitionPageRoute extends PageRouteBuilder {
  SlideFromBottomCenterTransitionPageRoute(
      {required this.page, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(0, 1), end: const Offset(0, 0))
                .animate(animation),
            child: page,
          ),
        );
  final Widget page;
}





// All Provider