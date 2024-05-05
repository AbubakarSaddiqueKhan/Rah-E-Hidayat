import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_A_man_khalaq_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_alif_laam_meem_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_amma_yatasaaloon_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_aq_tarabo_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_elahi_yuruddo_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_fa_man_azlam_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_haa_meem_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_la_yahubbullah_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_lan_tana_loo_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_qadd_aflaha_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_qadd_sami_allah_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_qal_alam_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_qala_fama_khatbukum_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_qalal_malao_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_rubama_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_sayaqulu_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_subhan_allahzi_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_tabarak_allazi_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_tilka_r_rusulu_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_utlu_ma_oohi_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_wa_iza_samiu_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_wa_lau_annana_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_wa_ma_ubiroo_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_wa_mali_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_wa_mamin_daabat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_wa_manyaqnut_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_wa_qalallazina_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_waa_lamo_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_wal_muhsanat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Parah_Wise/parah_yatazeroon_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/model/Quran/simple_arabic_quran_parah_wise.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'simple_arabic_quran_parah_wise_event.dart';
part 'simple_arabic_quran_parah_wise_state.dart';

class SimpleArabicQuranParahWiseBloc extends Bloc<
    SimpleArabicQuranParahWiseEvent, SimpleArabicQuranParahWiseState> {
  SimpleArabicQuranParahWiseBloc()
      : super(SimpleArabicQuranParahWiseInitialState()) {
    on<FetchSimpleArabicQuranDataOfGivenParah>(
        _mapSimpleArabicQuranDataOfGivenParahNumberToStates);
  }

  FutureOr<void> _mapSimpleArabicQuranDataOfGivenParahNumberToStates(
      FetchSimpleArabicQuranDataOfGivenParah event,
      Emitter<SimpleArabicQuranParahWiseState> emit) {
    try {
      emit(SimpleArabicQuranParahWiseLoadingState());

      SimpleArabicQuranParahWise simpleArabicQuranParahWiseData =
          SimpleArabicQuranParahWise.fromJson(
              getJsonDataOfGivenParahNumber(parahNumber: event.parahNumber));

      emit(SimpleArabicQuranParahWiseLoadedState(
          simpleArabicQuranParahWiseData: simpleArabicQuranParahWiseData));
    } catch (e) {
      developer.log("Error is : $e");
      emit(SimpleArabicQuranParahWiseErrorState());
    }
  }

  String getJsonDataOfGivenParahNumber({required int parahNumber}) {
    switch (parahNumber) {
      case 1:
        return ParahAlifLaamMeem.parahAlifLaamMeemJsonData;

      case 2:
        return ParahSayaqulu.parahSayaquluJsonData;

      case 3:
        return ParahTilkaRRusulu.parahTilkaRRusuluJsonData;

      case 4:
        return ParahLanTanaLoo.parahLanTanaLooJsonData;

      case 5:
        return ParahWalMuhsanat.parahWalMuhsanatJsonData;

      case 6:
        return ParahLaYahubbulah.parahLaYahubbulahJsonData;

      case 7:
        return ParahWaIzaSamiu.parahWaIzaSamiuJsonData;

      case 8:
        return ParahWaLauAnnana.parahWaLauAnnanaJsonData;

      case 9:
        return ParahQalalMalao.parahQalalMalaoJsonData;

      case 10:
        return ParahWaaLamo.parahWaalamoJsonData;

      case 11:
        return ParahYatazeroon.parahYatazeroonJsonData;

      case 12:
        return ParahWaMaminDaabat.parahWaMaminDaabatJsonData;

      case 13:
        return ParahWaMaUbiroo.parahWaMaUbirooJsonData;

      case 14:
        return ParahRubama.parahRubamaJsonData;

      case 15:
        return ParahSubhanAllahZi.parahSubhanAllahZiJsonData;

      case 16:
        return ParahQalAlam.parahQalAlamJsonData;

      case 17:
        return ParahAqTarabo.parahAqTaraboJsonData;

      case 18:
        return ParahQaddAflaha.parahQaddAflahJsonData;

      case 19:
        return ParahWaQalallazina.parahWaqalallazinaJsonData;

      case 20:
        return ParahAManKhalaq.parahAManKhalaqJsonData;

      case 21:
        return ParahUtluMaOohi.parahUtluMaOohiJsonData;

      case 22:
        return ParahWaManyaqnut.parahWaManyaqnutJsonData;

      case 23:
        return ParahWamali.parahWamaliJsonData;

      case 24:
        return ParahFaManAzlam.parahFaManAzlamJsonData;

      case 25:
        return ParahElahiYuruddo.parahElahiYaruddoJsonData;

      case 26:
        return ParahHaaMeem.parahHaaMeemJsonData;

      case 27:
        return ParahQalaFamaKhatbukum.parahQalaFamaKhatbukumJsonData;

      case 28:
        return ParahQaddSamiAllah.parahQaddSamiAllahJsonData;

      case 29:
        return ParahTabarakAllazi.parahTabarakAllaziJsonData;

      case 30:
        return ParahAmmaYatasaaloon.parahAmmaYatasaaloonJsonData;

      default:
        return "";
    }
  }
}
