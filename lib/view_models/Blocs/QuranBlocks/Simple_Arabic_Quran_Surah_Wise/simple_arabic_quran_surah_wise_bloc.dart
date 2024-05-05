import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_aa_sajda_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_abasa_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ad_dhuha_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ad_dukhaan_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_adh_dhaariyat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_aadiyaat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_ahqaf_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_ahzaab_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_alaa_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_alaq_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_anbiyaa_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_anfal_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_ankaboot_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_araf_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_asr_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_balad_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_burooj_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_fajr_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_falaq_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_fil_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_furqan_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_ghaashiya_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_haaqqa_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_hadid_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_hajj_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_hashr_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_hujuraat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_humaza_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_ikhlaas_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_inaam_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_infitaar_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_insaan_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_inshiqaaq_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_israa_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_jathiya_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_jinn_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_juma_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_kaafiroon_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_kahf_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_kawthar_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_lail_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_maaarij_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_maaun_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_maida_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_muddaththir_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_mujaadila_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_mulk_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_muminoon_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_mumtahana_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_munaafiqoon_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_mursalaat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_mutaffifin_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_muzzammil_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_qaaria_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_qadr_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_qalam_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_qamar_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_qasas_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_fath_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_qiyaama_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_waaqiya_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_naas_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_naaziaat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_naba_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_nahl_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_najm_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_naml_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_nasr_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_noor_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ar_raad_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ar_rahmaan_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ar_room_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_as_masad_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_as_saaffaat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_as_saff_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ash_shams_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ash_sharh_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ash_shu_araa_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ash_shura_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_at_taariq_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_at_taghaabun_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_at_tahrim_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_at_takaathur_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_at_takwir_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_at_talaaq_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_at_tawba_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_at_tin_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_at_tur_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_az_zalzala_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_az_zukhruf_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_az_zumar_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_bayyina_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_faatir_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_fussilat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ghadir_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_hijr_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_hud_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ibrahim_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_luqman_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_maryam_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_muhammad_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_nisaa_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_aal_e_imran_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_bakarah_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_faatiha_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_nooh_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_qaaf_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_quraish_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_saad_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_saba_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_taa_haa_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_yaseen_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_yunus_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_yusuf_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/model/Quran/simple_quran_surah_wise.dart';
import 'package:meta/meta.dart';

part 'simple_arabic_quran_surah_wise_event.dart';
part 'simple_arabic_quran_surah_wise_state.dart';

class SimpleArabicQuranSurahWiseBloc extends Bloc<
    SimpleArabicQuranSurahWiseEvent, SimpleArabicQuranSurahWiseState> {
  SimpleArabicQuranSurahWiseBloc()
      : super(SimpleArabicQuranSurahWiseInitialState()) {
    on<FetchSimpleArabicQuranEvent>(_mapFetchSimpleArabicQuranEventToStates);
  }

  FutureOr<void> _mapFetchSimpleArabicQuranEventToStates(
      FetchSimpleArabicQuranEvent event,
      Emitter<SimpleArabicQuranSurahWiseState> emit) {
    try {
      emit(SimpleArabicQuranSurahWiseLoadingState());

      SimpleArabicQuranSurahWiseModel simpleArabicQuranModel =
          SimpleArabicQuranSurahWiseModel.fromJson(
              getJsonDataOfGivenSurah(surahNumber: event.surahNumber));

      emit(SimpleArabicQuranSurahWiseLoadedState(
          simpleArabicCompleteSurahData: simpleArabicQuranModel));
    } catch (e) {
      emit(SimpleArabicQuranSurahWiseErrorState());
    }
  }

  String getJsonDataOfGivenSurah({required int surahNumber}) {
    switch (surahNumber) {
      case 1:
        return SurahFatiha.surahFatihaJsonData;

      case 2:
        return SurahBaqarah.surahBaarahJson;

      case 3:
        return SurahAalEImran.surahAalEImranJsonData;

      case 4:
        return SurahNisaa.surahNisaJsonData;

      case 5:
        return SurahMaida.surahMaidaJsonData;

      case 6:
        return SurahAlInaam.surahAlInaamJsonData;

      case 7:
        return SurahAlAraf.surahAlArafJsonData;

      case 8:
        return SurahAnfaal.surahAnfalJsonData;

      case 9:
        return SurahAtTawba.surahAtTawbaJsonData;

      case 10:
        return SurahYunus.suratYunusJsonData;

      case 11:
        return SurahHud.surahHudJsonData;

      case 12:
        return SurahYusuf.surahYusufJsonData;

      case 13:
        return SurahArRaad.suratArRaadJsonData;

      case 14:
        return SurahIbrahim.suraIbrahimJsonData;

      case 15:
        return SurahHijr.surahHijrJsonData;

      case 16:
        return SurahAnNahl.surahAnNahlJsonData;

      case 17:
        return SurahAlIsraa.surahAlIsraaJsonData;

      case 18:
        return SurahAlKahf.surahAlKahfJsonData;

      case 19:
        return SurahMaryam.surahMaryamJsonData;

      case 20:
        return SurahTaaHaa.surahTaaHaaJsonData;

      case 21:
        return SurahAlAnbiyaa.surahAlAnbiyaaJsonData;

      case 22:
        return SurahAlHajj.surahAlHajjJsonData;

      case 23:
        return SurahAlMuminoon.surahAlMuminoonJsonData;

      case 24:
        return SurahAnNoor.surahAnNoorJsonData;

      case 25:
        return SurahAlFurqan.surahAlFurqanJsonData;

      case 26:
        return SurahAshShuaraa.surahAshShuaraaJsonData;

      case 27:
        return SurahAnNaml.surahAnNamlJsonData;

      case 28:
        return SurahAlQasas.StringsurahAlQasasJsonData;

      case 29:
        return SurahAlAnkaboot.surahAlAnkabookJsonData;

      case 30:
        return SurahArRoom.surahArRoomJsonData;

      case 31:
        return SurahLuqman.surahLuqmanJsonData;

      case 32:
        return SurahAsSajda.surahAsSajdaJsonData;

      case 33:
        return SurahAlAhzaab.surahAlAhzaabJsonData;

      case 34:
        return SurahSaba.surahSabaJsonData;

      case 35:
        return SurahFaatir.surahFaatirJsonData;

      case 36:
        return SurahYaseen.surahYaseenJsonData;

      case 37:
        return SurahAsSaaffaat.surahAsSaaffaatJsonData;

      case 38:
        return SurahSaad.surahSaadJsonData;

      case 39:
        return SurahAzZumar.surahAzZumarJsonData;

      case 40:
        return SurahGhafir.StringsurahGhadirJsonData;

      case 41:
        return SurahFussilat.surahFussilatJsonData;

      case 42:
        return SurahAshShura.surahAshShuraJsonData;

      case 43:
        return SurahAzZukhruf.surahAzZukhrufJsonData;

      case 44:
        return SurahAdDukhaan.surahAdDukhanJsonData;

      case 45:
        return SurahAlJathiya.surahAlJathiyaJsonData;

      case 46:
        return SurahAlAhqaf.surahAlAhqafJsonData;

      case 47:
        return SurahMuhammad.surahMuhammadJsonData;

      case 48:
        return SurahAlFath.surahAlFathJsonData;

      case 49:
        return SurahAlHujuraat.surahAlHujuraatJsonData;

      case 50:
        return SurahQaaf.surahQaafJsonData;

      case 51:
        return SurahAdhDhaariyat.surahAdhDhaariyatJsonData;

      case 52:
        return SurahAtTur.surahAtTurJsonData;

      case 53:
        return SurahAnNajm.surahAnNajmJsonData;

      case 54:
        return SurahAlQamar.surahAlQamarJsonData;

      case 55:
        return SurahArRahmaan.surahArRahmanJsonData;

      case 56:
        return SurahAlWaaqiya.surahAlWaaqiyaJsonData;

      case 57:
        return SurahAlHadid.surahAlHadid;

      case 58:
        return SurahAlMujaadila.surahAlMujaadilaJsonData;

      case 59:
        return SurahAlHashr.surahAlHashrJsonData;

      case 60:
        return SurahAlMumtahana.surahAlMumtahanaJsonData;

      case 61:
        return SurahAsSaff.surahAsSaffJsonData;

      case 62:
        return SurahAJuma.surahAlJumaJsonData;

      case 63:
        return SurahAlMunaafiqoon.surahAlMunaafiqoonJsonData;

      case 64:
        return SurahAtTaghaabun.surahAtTaghaabunJsonData;

      case 65:
        return SurahAtTalaaq.surahAtTalaaqJsonData;

      case 66:
        return SurahAtTahrim.surahAtTahrimJsonData;

      case 67:
        return SurahAlMulk.surahAlMulkJsonData;

      case 68:
        return SurahAlQalam.surahAlQalamJsonData;

      case 69:
        return SurahAlHaaqqa.surahAlHaaqqa;

      case 70:
        return SurahAlMaaarij.surahAlMaarijJsonData;

      case 71:
        return SurahNooh.surahNoohJsonData;

      case 72:
        return SurahAlJinn.surahAlJinnJsonData;

      case 73:
        return SurahAlMuzzammil.surahAlMuzzammilJsonData;

      case 74:
        return SurahAlMuddaththir.surahAlMuddaththirJsonData;

      case 75:
        return SurahAlQiyaama.surahAlQiyaamaJsonData;

      case 76:
        return SurahAlInsaan.surahAlInsaanJsonData;

      case 77:
        return SurahAlMursalaat.surahAlMursalaatJsonData;

      case 78:
        return SurahAnNaba.surahAnNabaJsonData;

      case 79:
        return SurahAnNaaziaat.surahAnNaaziaatJsonData;

      case 80:
        return SurahAbasa.surahAbasaJsonData;

      case 81:
        return SurahAtTakwir.surahAtTaqwirJsonData;

      case 82:
        return SurahAlInfitaar.surahAlInfitaarJsonData;

      case 83:
        return SurahAlMutaffifin.surahAlMutaffifinJsonData;

      case 84:
        return SurahAlInshiqaaq.surahAlInshiqaaqJsonData;

      case 85:
        return SurahAlBurooj.surahAlburoojJsonData;

      case 86:
        return SurahAtTaariq.surahAtTaariqJsonData;

      case 87:
        return SurahAlAlaa.surahAlAlaaJsonData;

      case 88:
        return SurahAlGhaashiya.surahAlGhaashiyaJsonData;

      case 89:
        return SurahAlfajr.surahAlFajrJsonData;

      case 90:
        return SurahAlBalad.surahBaladJsonData;

      case 91:
        return SurahAshShams.surahAshShamsJsonData;

      case 92:
        return SurahAlLail.surahAlLailJsonData;

      case 93:
        return SurahAdhDhuha.surahAdDhuhaJsonData;

      case 94:
        return SurahAshSharh.surahAshSharhJsonData;

      case 95:
        return SurahAtTin.surahAtTinJsonData;

      case 96:
        return SurahAlAlaq.surahAlAlaqJsonData;

      case 97:
        return SurahAlQadr.surahAlQadrJsonData;

      case 98:
        return SurahAlBayyina.surahABayyinaJsonData;

      case 99:
        return SurahAlZalzala.surahAzZalzalaJsonData;

      case 100:
        return SurahAlAadiyaatJsonData.surahAlAadiyaatJsonData;

      case 101:
        return SurahAlQaaria.surahAlQaariaJsonData;

      case 102:
        return SurahAtTakaathur.surahAtTakathurJsonData;

      case 103:
        return SurahAlAsr.surahAlAsrJsonData;

      case 104:
        return SurahAlHumaza.surahAlHumazaJsonData;

      case 105:
        return SurahAlFil.surahAlFilJsonData;

      case 106:
        return SurahQuraish.surahQuraishJsonData;

      case 107:
        return SurahAlMaaun.surahAlMaaunJsonData;

      case 108:
        return SurahAlKawthar.surahAlKawtharJsonData;

      case 109:
        return SurahAlKaafiroon.surahAlKaafiroonJsonData;

      case 110:
        return SurahAnNasr.surahAnNasrJsonData;

      case 111:
        return SurahAlMasad.surahALMasadJsonData;

      case 112:
        return SurahAlIkhlaas.surahAlikhlaasJsonData;

      case 113:
        return SurahAlFalaq.surahAlFalaqJsonData;

      case 114:
        return SurahAnNaas.surahAnNaasJsonData;

      default:
        return "";
    }
  }
}
