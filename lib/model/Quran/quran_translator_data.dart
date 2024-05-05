import 'package:flutter_quran_api_practice/model/Quran/quran_translator.dart';

import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Albanian/feti_mehdiu_quran_albanian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Albanian/hasan_efendi_nahi_quran_albanian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Albanian/sherif_ahmeti_quran_albanian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Amharic/sadiq_and_sani_habib_quran_amharic_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Azerbaijani/ali_khan_mosayev_quran_azarbaijani_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Azerbaijani/vasim_mammadaliyev_and_ziya_bunyadov_quran_azarbaijani_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Bengali/muhiuddin_khan_quran_bengali_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Bengali/zahurul_haque_quran_bengali_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Berber/at_mensur_quran_berber_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Czech/alois_richard_nkyl_quran_czech_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Czech/ivan_hrbek_quran_czech_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Dhivehi/office_of_president_of_maldives_quran_dhivehi_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Dutch/fred_leemhuis_quran_dutch_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Dutch/sofian_salam_siregar_quran_dutch_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Dutch/solomon_keyzer_quran_dutch_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/abdul_majid_daryabadi_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/abdullah_yusuf_ali_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/abul_ala_maududi_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/ahmad_ali_quran_englsh_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/ahmad_raza_khan_quran_englsh_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/ali_quli_qarai_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/arthur_john_arberry_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/clear_quran_by_talal_itani_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/hasan_al_fatih_qaribullah_and_ahmad_darwish_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/mohammad_habib_shakir_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/mohammed_marmaduke_william_pickthall_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/muhammad_asad_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/muhammad_sarwar_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/muhammad_taqi_ud_din_al_hilali_and_muhammad_muhsin_khan_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/noble_quran_by_saif_ur_rahman_al_mubarakpuri_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/roman_english_transliteration_quran_english_transaltion.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/saheeh_international_quran_english_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/English/wahiduddin_khan_quran_English_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/French/muhammad_hamidullah_quran_french_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/German/abu_rida_muhammad_ibn_ahmed_ibn_rasoul_quran_german_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/German/adel_theodor_khoury_quran_german_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/German/ahmad_von_denffer_bubenheim_and_dr_muhammad_rasooulullah_elyas_quran_german_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/German/amir_zaidan_quran_german_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Hausa/abubakar_mahmoud_gumi_quran_hausa_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Hindi/muhammad_farooq_khan_and_muhammad_ahmed_quran_hindi_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Hindi/suhel_farooq_khan_and_saifur_rahman_nadwi_quran_hindi_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Indonesian/bahasa_indonesia_quran_indonesian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Indonesian/jalal_ad_din_al_mahalli_and_jalal_ad_din_as_suyuti_quran_indonesian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Indonesian/prof_dr_quraish_shihab_quran_indonesian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Italian/hamza_roberto_piccardo_quran_italian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Japanese/dr_toshihiko_izutsu_quran_japanese_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Korean/dr_ahn_jae_hyung_quran_korean_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Kurdish/burhan_muhammad_amin_quran_kurdish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Malayalam/cheriyamund_abdul_hameed_and_kunhi_mohammed_parappoor_quran_malayalam_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Malayalam/karakunn_and_elayavur_quran_malayalam_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Norwegian/einar_berg_quran_norwegian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Pashto/abdul_wali_quran_pashto_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/abdol_mohammad_ayati_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/abol_fazl_bahrampour_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/bahaoddin_khorramshahi_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/hujjat_al_islam_by_mohsen_gharaati_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/hussain_ansarian_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/mahdi_elahi_ghomshei_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/mohammad_ali_sadeghi_tehrani_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/mohammad_kazem_moezzi_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/mohammad_mahdi_fooladvand_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/mostafa_khorramdel_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/naser_makarem_shirazi_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/sayyed_jalaloddin_mojtabavi_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Persian/sayyed_mohammad_reza_safavi_quran_persian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Polish/jozef_bielawski_quran_polish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Portuguese/samir_el_hayek_quran_portuguese_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Romanian/george_grigore_quran_romanian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Russian/abu_adel_quran_russian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Russian/elmir_kuliev_quran_russian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Russian/elmir_nabiullinich_kuliyev_al_saadi_quran_russian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Russian/gordy_semyonovich_sablukov_quran_russian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Russian/ignaty_yulianovich_krachkovsky_quran_russian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Russian/magomed_nuri_osmanovich_osmanov_quran_russian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Russian/ministry_of_awqaf_egypt_quran_russian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Russian/valeria_porokhova_quran_russian_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Sindhi/taj_mehmood_amroti_quran_sindhi_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Somali/mahmud_muhammad_abduh_quran_somali_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Spanish/julio_cortes_quran_spanish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Spanish/muhammad_asad_abdurrasak_perez_quran_spanish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Spanish/raul_gonzalez_bornez_quran_spanish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Spanish/shaykh_isa_garcia_quran_spanish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Swahili/ali_muhsin_al_barwani_quran_Swahili_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Swedish/knut_bernstr%C3%B6m_quran_swedish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Tajik/abdol_mohammad_ayati_quran_tajik_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Tamil/jan_turst_foundation_quran_tamil_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Tatar/yakub_ibn_nugman_quran_tatar_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Thai/king_fahad_quran_complex_quran_thai_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Turkish/abdulbaki_golpinarli_quran_turkish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Turkish/ali_bulac_quran_turkish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Turkish/diyanet_isleri_quran_turkish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Turkish/diyanet_vakfi_quran_turkish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Turkish/edip_yuksel_quran_turkish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Turkish/elmalili_hamdi_yazir_quran_turkish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Turkish/suat_yildirim_quran_turkish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Turkish/suleyman_ates_quran_turkish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Turkish/yasar_nuri_ozturk_quran_turkish_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Urdu/ahmed_ali_quran_urdu_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Urdu/ahmed_raza_khan_quran_urdu_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Urdu/fateh_muhammad_jalandhry_quran_urdu_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Urdu/molana_abul_aala_maududi_quran_urdu_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Urdu/muhammad_hussain_najafi_quan_urdu_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Urdu/muhammad_junagarhi_quran_urdu_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Urdu/syed_zeeshan_haider_jwadi_quran_urdu_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Urdu/tahir_ul_qadri_quran_urdu_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Uyghur/muhammad_saleh_quran_uyghur_translation.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Translations/Uzbek/muhammad_sodik_muhammad_yusuf_quran_urdu_translation.dart';

class QuranTranslator {
  static List<CompleteQuranTranslatorModel>
      allLanguagesCompleteQuranTranslatorsDataList =
      <CompleteQuranTranslatorModel>[
    // Albanian Languages .
    CompleteQuranTranslatorModel(
        quranTranslatorId: 1,
        quranTranslatorName: "Feti Mehdiu",
        quranTranslationLanguageName: albanianLanguage,
        quranTranslationFontStyleName: "Halvetica",
        quranCompleteTranslation: FetiMehdiuQuranAlbanianTranslation
            .fetiMehdiuQuranAlbanianTranslationJsonData,
        quranTranslationDirection: albanianLanguageTextDirection),
    CompleteQuranTranslatorModel(
        quranTranslatorId: 2,
        quranTranslatorName: "Hassan Efendi",
        quranTranslationLanguageName: albanianLanguage,
        quranTranslationFontStyleName: "Halvetica",
        quranCompleteTranslation: HasanEfendiNahiQuranAlbanianTranslation
            .hasanEfendiNahiQuranAlbanianTranslationJsonData,
        quranTranslationDirection: albanianLanguageTextDirection),
    CompleteQuranTranslatorModel(
        quranTranslatorId: 3,
        quranTranslatorName: "Sherif Ahmeti",
        quranTranslationFontStyleName: "Halvetica",
        quranTranslationLanguageName: albanianLanguage,
        quranCompleteTranslation: SherifAhmetiQuranAlbanianTranslation
            .sherifAhmetiQuranAlbanianTranslationJsonData,
        quranTranslationDirection: albanianLanguage),
    // Amharic

    CompleteQuranTranslatorModel(
        quranTranslatorId: 4,
        quranTranslatorName: "Sadiq & Sani Habib",
        quranTranslationLanguageName: amharicLanguage,
        quranTranslationFontStyleName: "Nyala",
        quranCompleteTranslation: SadiqAndHabibQuranAmharicTranslation
            .sadiqAndHabibQuranAmharicTranslationJsonData,
        quranTranslationDirection: amharicLanguageTextDirection),
    // Azerbaijani .
    CompleteQuranTranslatorModel(
        quranTranslatorId: 5,
        quranTranslatorName: "Ali Khan Mosayev",
        quranTranslationLanguageName: azerbaijaniLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AliKhanMosayevQuranAzarbaijaniTranslation
            .aliKhanMosayevQuranAzarbaijaniTranslationJsonData,
        quranTranslationDirection: azerbaijaniLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 6,
        quranTranslatorName: "Vasim Mammadaliyev & Ziya Bunyadov",
        quranTranslationLanguageName: azerbaijaniLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation:
            VasimMammadaliyevAndZiyaBunyadovQuranAzarbaijaniTranslation
                .vasimMammadaliyevAndZiyaBunyadovQuranAzarbaijaniTranslationJsonData,
        quranTranslationDirection: azerbaijaniLanguageTextDirection),

    // Bengali .
    CompleteQuranTranslatorModel(
        quranTranslatorId: 7,
        quranTranslatorName: "Muhiuddin Khan",
        quranTranslationLanguageName: bengaliLanguage,
        quranTranslationFontStyleName: "Siyam",
        quranCompleteTranslation: MuhiuddinKhanQuranBengaliTranslation
            .muhiuddinKhanQuranBengaliTranslationJsonData,
        quranTranslationDirection: bengaliLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 8,
        quranTranslatorName: "Zahurul Haque",
        quranTranslationLanguageName: bengaliLanguage,
        quranTranslationFontStyleName: "Siyam",
        quranCompleteTranslation: ZahurulHaqueQuranBengaliTranslation
            .zahurulHaqueQuranBengaliTranslationJsonData,
        quranTranslationDirection: bengaliLanguageTextDirection),

    // Berber .
    CompleteQuranTranslatorModel(
        quranTranslatorId: 9,
        quranTranslatorName: "At . Mensur",
        quranTranslationLanguageName: berberLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AtMenusrQuranBerberTranslation
            .atMensurQuranBerberTranslationJsonData,
        quranTranslationDirection: berberLanguageTextDirection),

    // Czech .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 10,
        quranTranslatorName: "Alois Richard Nykl",
        quranTranslationLanguageName: czechLanguage,
        quranTranslationFontStyleName: "Times",
        quranCompleteTranslation: AloisRichardNkylQuranCzechTranslation
            .aloisRichardNkylQuranCzechTranslationJsonData,
        quranTranslationDirection: czechLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 11,
        quranTranslatorName: "Ivan Hrberk",
        quranTranslationLanguageName: czechLanguage,
        quranTranslationFontStyleName: "Times",
        quranCompleteTranslation: IvanHrbekQuranCzechTranslation
            .ivanHrbekQuranCzechTranslationJsonData,
        quranTranslationDirection: czechLanguageTextDirection),

    // Dhivehi .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 12,
        quranTranslatorName: "Office of president of maldives ",
        quranTranslationLanguageName: dhivehiLanguage,
        quranTranslationFontStyleName: "Faseha",
        quranCompleteTranslation:
            OfficeOfPresidentOfMaldivesQuranDhivehiTranslation
                .officeOfPresidentOfMaldivesQuranDhivehiTranslationJsonData,
        quranTranslationDirection: dhivehiLanguageTextDirection),

    // Dutch .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 13,
        quranTranslatorName: "Fred Leemhuis",
        quranTranslationLanguageName: dutchLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: FredLeemhuisQuranDutchTranslation
            .fredLeemhuisQuranDutchTranslationJsonData,
        quranTranslationDirection: dutchLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 14,
        quranTranslatorName: "Sofian Salam Siregar",
        quranTranslationLanguageName: dutchLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: SofianSalamSiregarQuranDutchTranslation
            .sofianSalamSiregarQuranDutchTranslationJsonData,
        quranTranslationDirection: dutchLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 15,
        quranTranslatorName: "Solomon Keyzer",
        quranTranslationLanguageName: dutchLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: SolomonKeyzerQuranDutchTranslation
            .solomonKeyzerQuranDutchTranslationJsonData,
        quranTranslationDirection: dutchLanguageTextDirection),

    // English .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 16,
        quranTranslatorName: "Abdul Majid Daryabadi",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: AbdulMajidDaryabadiQuranEnglishTranslation
            .abdulMajidDaryabadiQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 17,
        quranTranslatorName: "Abdullah Yusuf Ali",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: AbdullahYusufAliQuranEnglishTranslation
            .abdullahYusufAliQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 18,
        quranTranslatorName: "Abul Al'a Maududi",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: AbulAlaMaududiQuranEnglishTranslation
            .abulAlaMaududiQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 19,
        quranTranslatorName: "Ahmad Ali",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: AhmadAliQuranEnglishTranslation
            .ahmadAliQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 20,
        quranTranslatorName: "Ahmad Raza Khan",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: AhmadRazaKhanQuranEnglishTranslation
            .ahmadRazaKhanQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 21,
        quranTranslatorName: "Ali Quli Qarai",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: AliQuliQaraiQuranEnglishTranslation
            .aliQuliQaraiQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 22,
        quranTranslatorName: "Arthur John Arberry",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: ArthurJohnArberryQuranEnglishTranslation
            .arthurJohnArberryQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 23,
        quranTranslatorName: "Talal Itani",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: ClearQuranByTalalItaniQuranEnglishTrasnlation
            .clearQuranByTalalItaniQuranEnglishTrasnlationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 24,
        quranTranslatorName: "Hassan Al Fatih Qaribullah & Ahmad Darwaish",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation:
            HasanAlFatihQaribullahAndAhmadDarwishQuranEnglishTranslation
                .hasanAlFatihQaribullahAndAhmadDarwishQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 25,
        quranTranslatorName: "Muhammad Habib Shakir",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: MohammadHabibShakirQuranEnglishTranslation
            .mohammadHabibShakirQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 26,
        quranTranslatorName: "Mohammad Marmaduke William Pickthall",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation:
            MohammedMarmadukeWilliamPickthallQuranEnglishTranslation
                .mohammedMarmadukeWilliamPickthallQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 27,
        quranTranslatorName: "Muhammad Asad",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: MuhammadAsadQuranEnglishTranslation
            .muhammadAsadQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 28,
        quranTranslatorName: "Muhammad Sarwar",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: MuhammadSarwarQuranEnglishTranslation
            .muhammadSarwarQuranEnglishTranslationJsonTranslation,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 29,
        quranTranslatorName: "Muhammad Taqi Ud Din Al Halali & Muhsin Khan",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation:
            MuhammadTaqiUdDinAlHilaliAndMuhammadMuhsinKhanQuranEnglishTranslation
                .muhammadTaqiUdDinAlHilaliAndMuhammadMuhsinKhanQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 30,
        quranTranslatorName: "Saif Ur Rehman(Noble Quran)",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation:
            NobleQuranBySaifUrRahmanAlMubarakpuriQuranEnglishTranslation
                .nobleQuranBySaifUrRahmanAlMubarakpuriQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 31,
        quranTranslatorName: "Quran in Roman English",
        quranTranslationLanguageName: romanEnglishUrduLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation:
            RomanEnglishTransliterationQuranEnglishTranslation
                .romanEnglishTransliterationQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 32,
        quranTranslatorName: "Saheeh International",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: SaheehInternationalQuranEnglishTranslation
            .saheehInternationalQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 33,
        quranTranslatorName: "Wahiduddin Khan",
        quranTranslationLanguageName: englishLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation: WahiduddinKhanQuranEnglishTranslation
            .wahiduddinKhanQuranEnglishTranslationJsonData,
        quranTranslationDirection: englishLanguageTextDirection),

    // French .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 34,
        quranTranslatorName: "Muhammad Hamid Ullah",
        quranTranslationLanguageName: frenchLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: MuhammadHamidullahQuranFrenchTranslation
            .muhammadHamidullahQuranFrenchTranslationJsonData,
        quranTranslationDirection: frenchLanguageTextDirection),

    // Greman .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 35,
        quranTranslatorName: "Abu Rida Muhammad Ibn Ahmad Rasoul",
        quranTranslationLanguageName: germanLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AbuRidaIbnAhmedIbnRasoulQuranGermanTranslation
            .abuRidaIbnAhmedIbnRasoulQuranGermanTranslationJsonData,
        quranTranslationDirection: germanLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 36,
        quranTranslatorName: "Adel Theodor Khory",
        quranTranslationLanguageName: germanLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AdelTheodorKhouryQuranGermanTranslation
            .adelTheodorKhouryQuranGermanTranslationJsonData,
        quranTranslationDirection: germanLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 37,
        quranTranslatorName:
            "Ahmad Von Denffer Bubenheim and Dr Ahmad Rasooulullah Elyas",
        quranTranslationLanguageName: germanLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation:
            AhmadVonDenfferBubenheimAndDrMuhammadRasooulullahElyasQuranGermanTranslation
                .ahmadVonDenfferBubenheimAndDrMuhammadRasooulullahElyasQuranGermanTranslationJsonData,
        quranTranslationDirection: germanLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 38,
        quranTranslatorName: "Amir Zaidan",
        quranTranslationLanguageName: germanLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AmirZaidanQuranGermanTranslation
            .amirZaidanQuranGermanTranslationJsonData,
        quranTranslationDirection: germanLanguageTextDirection),

    // Hausa .
    CompleteQuranTranslatorModel(
        quranTranslatorId: 39,
        quranTranslatorName: "Abubakar Mahmood Gumi",
        quranTranslationLanguageName: hausaLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AbubakarMahmoudGumiQuranHausaTranslation
            .abubakarMahmoudGumiQuranHausaTranslationJsonData,
        quranTranslationDirection: hausaLanguageTextDirection),

    // Hindi .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 40,
        quranTranslatorName: "Muhammad Farooq Khan & Muhammad Ahmed",
        quranTranslationLanguageName: hindiLanguage,
        quranTranslationFontStyleName: "Kurti",
        quranCompleteTranslation:
            MuhammadFarooqKhanAndMuhammadAhmedQuranHindiTranslation
                .muhammadFarooqKhanAndMuhammadAhmedQuranHindiTranslationJsonData,
        quranTranslationDirection: hindiLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 41,
        quranTranslatorName: "Suhel Farooq Khan & Saif Ur Rehman Nadwi",
        quranTranslationLanguageName: hindiLanguage,
        quranTranslationFontStyleName: "Kurti",
        quranCompleteTranslation:
            SuhelFarooqKhanAndSaifUrRahmanNadwiQuranHindiTranslation
                .suhelFarooqKhanAndSaifUrRahmanNadwiQuranHindiTranslationJsonData,
        quranTranslationDirection: hindiLanguageTextDirection),

// Indonasian .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 42,
        quranTranslatorName: "Bahasa Indonasian",
        quranTranslationFontStyleName: "Arial",
        quranTranslationLanguageName: indonasianLanguage,
        quranCompleteTranslation: BahasaIndonesiaQuranIndonesianTranslation
            .bahasaIndonesiaQuranIndonesianTranslationJsonData,
        quranTranslationDirection: indonasianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 43,
        quranTranslatorName:
            "Jalal Ad Din Al Mahalli & Jalal Ad Din As - Suyuti",
        quranTranslationLanguageName: indonasianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation:
            JalalAdDinAlMahalliAndJalalAdDinAsSuyutiQuranIndonesianTranslation
                .jalalAdDinAlMahalliAndJalalAdDinAsSuyutiQuranIndonesianTranslationJsonData,
        quranTranslationDirection: indonasianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 44,
        quranTranslatorName: "Prof Dr. Quraish Shihab",
        quranTranslationLanguageName: indonasianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: ProfDrQuraishShihabQuranIndonesianTranslation
            .profDrQuraishShihabQuranIndonesianTranslationJsonData,
        quranTranslationDirection: indonasianLanguageTextDirection),

    // Italian .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 45,
        quranTranslatorName: "Hamza Roberto Piccardo",
        quranTranslationLanguageName: italianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: HamzaRobertoPiccardoQuranItalianTranslation
            .hamzaRobertoPiccardoQuranItalianTranslationJsonData,
        quranTranslationDirection: italianLanguageTextDirection),

    // Japanese .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 46,
        quranTranslatorName: " Dr. Toshihiko Izutsu",
        quranTranslationLanguageName: japaneseLanguage,
        quranTranslationFontStyleName: "Meiryo",
        quranCompleteTranslation: DrToshihikoIzutsuQuranJapaneseTranslation
            .drToshihikoIzutsuQuranJapaneseTranslationJsonData,
        quranTranslationDirection: japaneseLanguageTextDirection),

    // Korean .
    CompleteQuranTranslatorModel(
        quranTranslatorId: 47,
        quranTranslatorName: "Dr. Ahn Jae Hyung",
        quranTranslationLanguageName: koreanLanguage,
        quranTranslationFontStyleName: "Malgun",
        quranCompleteTranslation: DrAhnJaeHyungQuranKoreanTranslation
            .drAhnJaeHyungQuranKoreanTranslationJsonData,
        quranTranslationDirection: koreanLanguage),

    // Kurdish .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 48,
        quranTranslatorName: "Burhan Muhammad Amin",
        quranTranslationLanguageName: kurdishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: BurhanMuhammadAminQuranKurdishTranslation
            .burhanMuhammadAminQuranKurdishTranslationJsonData,
        quranTranslationDirection: kurdishLanguageTextDirection),

    // Malayalam .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 49,
        quranTranslatorName:
            "Cheriyamund Abdul Hameed & Kunhi Mohammed Parappoor",
        quranTranslationLanguageName: malayalamLanguage,
        quranTranslationFontStyleName: "Rachana",
        quranCompleteTranslation:
            CheriyamundAbdulHameedAndKunhiMohammedParappoorQuranMalayalamTranslation
                .cheriyamundAbdulHameedAndKunhiMohammedParappoorQuranMalayalamTranslationJsonData,
        quranTranslationDirection: malayalamLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 50,
        quranTranslatorName: "Karakunn & Elayavur",
        quranTranslationLanguageName: malayalamLanguage,
        quranTranslationFontStyleName: "Rachana",
        quranCompleteTranslation: KarakunnAndElayavurQuranMalayalamTranslation
            .karakunnAndElayavurQuranMalayalamTranslationJsonData,
        quranTranslationDirection: malayalamLanguageTextDirection),

    // Norwegian .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 51,
        quranTranslatorName: "Einar Berg",
        quranTranslationLanguageName: norwegianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: EinarBergQuranNorwegianTranslation
            .einarBergQuranNorwegianTranslationJsonData,
        quranTranslationDirection: norwegianLanguageTextDirection),

    // Pastho .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 52,
        quranTranslatorName: "Abdul Wali",
        quranTranslationLanguageName: pashtoLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: AbdulWaliQuranPashtoTranslation
            .abdulWaliQuranPashtoTranslationJsonData,
        quranTranslationDirection: pasthoLanguageTextDirection),

    // Persian .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 53,
        quranTranslatorName: "Abdol Mohammad Ayati",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: AbdolMohammadAyatiQuranPersianTranslation
            .abdolMohammadAyatiQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 54,
        quranTranslatorName: persianLanguage,
        quranTranslationLanguageName: "Abol Fazl Bahrampour",
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: AbolFazlBahrampourQuranPersianTranslation
            .abolFazlBahrampourQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 55,
        quranTranslatorName: "Baha Od'din Khorramshahi",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: BahaOddinKhorramshahiQuranPersianTranslation
            .bahaOddinKhorramshahiQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 56,
        quranTranslatorName: "Hujjat Al' Islam Mohsen Gharaati",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation:
            HujjatAlIslamMohsenGharaatiQuranPersianTranslation
                .hujjatAlIslamMohsenGharaatiQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 57,
        quranTranslatorName: "Hussain Ansarian",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: HussainAnsarianQuranPersianTranslation
            .hussainAnsarianQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 58,
        quranTranslatorName: "Mahdi Elahi Ghomshei",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: MahdiElahiGhomsheiQuranPersianTranslation
            .mahdiElahiGhomsheiQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 59,
        quranTranslatorName: "Mohammad Ali Sadeghi Tehrani",
        quranTranslationLanguageName: persianLanguageTextDirection,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation:
            MohammadAliSadeghiTehraniQuranPersianTranslation
                .mohammadAliSadeghiTehraniQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 60,
        quranTranslatorName: "Mohammad Kazem Moezzi",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: MohammadKazemMoezziQuranPersianTranslation
            .mohammadKazemMoezziQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 61,
        quranTranslatorName: "Mohammad Mahdi Fooladvand",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: MohammadMahdiFooladvandQuranPersianTranslation
            .mohammadMahdiFooladvandQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 62,
        quranTranslatorName: "Mostafa Khorramdel",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: MostafaKhorramdelQuranPersianTranslation
            .mostafaKhorramdelQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 63,
        quranTranslatorName: "Naser Makarem Shirazi",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation: NaserMakaremShiraziQuranPersianTranslation
            .naserMakaremShiraziQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 64,
        quranTranslatorName: "Sayyed Jalaloddin Mojtabavi",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation:
            SayyedJalaloddinMojtabaviQuranPersianTranslation
                .sayyedJalaloddinMojtabaviQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 65,
        quranTranslatorName: "Sayyed Mohammad Reza Safavi",
        quranTranslationLanguageName: persianLanguage,
        quranTranslationFontStyleName: "Tahoma",
        quranCompleteTranslation:
            SayyedMohammadRezaSafaviQuranPersianTranslation
                .sayyedMohammadRezaSafaviQuranPersianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),
    // Polish .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 66,
        quranTranslatorName: "Jozef Bielawski",
        quranTranslationLanguageName: polishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: JozefBielawskiQuranPolishTranslation
            .jozefBielawskiQuranPolishTranslationJsonData,
        quranTranslationDirection: polishLanguageTextDirection),

    // Portuguese .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 67,
        quranTranslatorName: "Samir El - Hayek",
        quranTranslationLanguageName: portugueseLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: SamirElHayekQuranPortugueseTranslation
            .samirElHayekQuranPortugueseTranslationJsonData,
        quranTranslationDirection: portugueseLanguageTextDirection),

    // Romanian .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 68,
        quranTranslatorName: "George Grigore",
        quranTranslationLanguageName: romanianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: GeorgeGrigoreQuranRomanianTranslation
            .georgeGrigoreQuranRomanianTranslationJsonData,
        quranTranslationDirection: romanianLanguageTextDirection),

    //  Russian .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 69,
        quranTranslatorName: "Abu Adel",
        quranTranslationLanguageName: russianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AbuAdelQuranRussianTranslation
            .abuAdelQuranRussianTranslationJsonData,
        quranTranslationDirection: russianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 70,
        quranTranslatorName: "Elmir Kuliev",
        quranTranslationLanguageName: russianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: ElmirKulievQuranRussianTranslation
            .elmirKulievQuranRussianTranslationJsonData,
        quranTranslationDirection: russianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 71,
        quranTranslatorName: "Elmir Nabiullinich Kuliyev Al - Saadi",
        quranTranslationLanguageName: russianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation:
            ElmirNabiullinichKuliyevAlSaadiQuranRussianTranslation
                .elmirNabiullinichKuliyevAlSaadiQuranRussianTranslationJsonData,
        quranTranslationDirection: russianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 72,
        quranTranslatorName: "Gordy Semyonovich Sablukov",
        quranTranslationLanguageName: russianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation:
            GordySemyonovichSablukovQuranRussianTranslation
                .gordySemyonovichSablukovQuranRussianTranslationJsonData,
        quranTranslationDirection: russianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 73,
        quranTranslatorName: "Ignaty Yulianovich Krachkovsky",
        quranTranslationLanguageName: russianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation:
            IgnatyYulianovichKrachkovskyQuranRussianTranslation
                .ignatyYulianovichKrachkovskyQuranRussianTranslationJsonData,
        quranTranslationDirection: russianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 74,
        quranTranslatorName: "Magomed Nuri Osmanovich Osmanov",
        quranTranslationLanguageName: russianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation:
            MagomedNuriOsmanovichOsmanovQuranRussianTranslation
                .magomedNuriOsmanovichOsmanovQuranRussianTranslationJsonData,
        quranTranslationDirection: persianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 75,
        quranTranslatorName: "Ministry Of Awqaf Egypt",
        quranTranslationLanguageName: russianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: MinistryOfAwqafEgyptQuranRussianTranslation
            .ministryOfAwqafEgyptQuranRussianTranslationJsonData,
        quranTranslationDirection: russianLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 76,
        quranTranslatorName: "Valeria Porokhova",
        quranTranslationLanguageName: russianLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: ValeriaPorokhovaQuranRussianTranslation
            .valeriaPorokhovaQuranRussianTranslationJsonData,
        quranTranslationDirection: russianLanguageTextDirection),

    // Sindhi .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 77,
        quranTranslatorName: "Taj Mehmood Amroti",
        quranTranslationLanguageName: sindhiLanguage,
        quranTranslationFontStyleName: "Nastaleeq",
        quranCompleteTranslation: TajMehmoodAmrotiQuranSindhiTranslation
            .tajMehmoodAmrotiQuranSindhiTranslationJsonData,
        quranTranslationDirection: sindhiLanguageTextDirection),

    // Somali .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 78,
        quranTranslatorName: "Mahmud Muhammad Abduh",
        quranTranslationLanguageName: somaliLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: MahmudMuhammadAbduhQuranSomaliTranslation
            .mahmudMuhammadAbduhQuranSomaliTranslationJsonData,
        quranTranslationDirection: somaliLanguageTextDirection),

    // Spanish .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 79,
        quranTranslatorName: "Julio Cortes",
        quranTranslationLanguageName: spanishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: JulioCortesQuranSpanishTranslation
            .julioCortesQuranSpanishTranslationJsonData,
        quranTranslationDirection: spanishLanguageTextDirection),
    CompleteQuranTranslatorModel(
        quranTranslatorId: 80,
        quranTranslatorName: "Muhammad Asad Abdurrasak Perez",
        quranTranslationLanguageName: spanishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation:
            MuhammadAsadAbdurrasakPerezQuranSpanishTranslation
                .muhammadAsadAbdurrasakPerezQuranSpanishTranslationJsonData,
        quranTranslationDirection: spanishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 81,
        quranTranslatorName: "Raul Gonzalez Bornez",
        quranTranslationLanguageName: spanishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: RaulGonzalezBornezQuranSpanishTranslation
            .raulGonzalezBornezQuranSpanishTranslationJsonData,
        quranTranslationDirection: spanishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 82,
        quranTranslatorName: "Shaykh Isa Garcia",
        quranTranslationFontStyleName: "Arial",
        quranTranslationLanguageName: spanishLanguage,
        quranCompleteTranslation: ShaykhIsaGarciaQuranSpanishTranslation
            .shaykhIsaGarciaQuranSpanishTranslationJsonData,
        quranTranslationDirection: spanishLanguageTextDirection),

    // Swahili .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 83,
        quranTranslatorName: "Ali Muhsin Al Barwani",
        quranTranslationLanguageName: swahiliLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AliMuhsinAlBarwaniQuranSwahiliTranslation
            .aliMuhsinAlBarwaniQuranSwahiliTranslationJsonData,
        quranTranslationDirection: swahiliLanguageTextDirection),

    //  Swedish .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 84,
        quranTranslatorName: "Knut Bernstrom",
        quranTranslationLanguageName: swedishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: KnutBernstromQuranSwedishTranslation
            .knutBernstromQuranSwedishTranslationJsonData,
        quranTranslationDirection: swedishLanguageTextDirection),

    // Tajik .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 85,
        quranTranslatorName: "Abdol Mohammad Ayati",
        quranTranslationLanguageName: tajikLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AbdolMohammadAyatiQuranTajikTranslation
            .abdolMohammadAyatiQuranTajikTranslationJsonData,
        quranTranslationDirection: tajikLanguageTextDirection),

    //  Tamil .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 86,
        quranTranslatorName: "Jan Turst Foundation",
        quranTranslationLanguageName: tamilLanguage,
        quranTranslationFontStyleName: "Latha",
        quranCompleteTranslation: JanTurstFoundationQuranTamilTranslation
            .janTurstFoundationQuranTamilTranslationJsonData,
        quranTranslationDirection: tamilLanguageTextDirection),

    // Tatar .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 87,
        quranTranslatorName: "Yakub Ibn Nugman",
        quranTranslationLanguageName: tatarLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: YakubIbnNugmanQuranTatarTranslation
            .yakubIbnNugmanQuranTatarTranslationJsonData,
        quranTranslationDirection: tatarLanguageTextDirection),

    // Thai .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 88,
        quranTranslatorName: "King Fahad Quran Complex",
        quranTranslationLanguageName: thaiLanguage,
        quranTranslationFontStyleName: "Angsa",
        quranCompleteTranslation: KingFahadQuranComplexQuranThaiTranslation
            .kingFahadQuranComplexQuranThaiTranslationJsonData,
        quranTranslationDirection: thaiLanguageTextDirection),

    // Turkish .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 89,
        quranTranslatorName: "Abdulbaki Golpinarli",
        quranTranslationLanguageName: turkishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AbdulbakiGolpinarliQuranTurkishTranslation
            .abdulbakiGolpinarliQuranTurkishTranslationJsonData,
        quranTranslationDirection: turkishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 90,
        quranTranslatorName: "Ali Bulac",
        quranTranslationLanguageName: turkishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: AliBulacQuranTurkishTranslation
            .aliBulacQuranTurkishTranslationJsonData,
        quranTranslationDirection: turkishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 91,
        quranTranslatorName: "Diyanet Isleri",
        quranTranslationLanguageName: turkishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: DiyanetIsleriQuranTurkishTranslation
            .diyanetIsleriQuranTurkishTranslationJsonData,
        quranTranslationDirection: turkishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 92,
        quranTranslatorName: "Diyanet Vakfi",
        quranTranslationLanguageName: turkishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: DiyanetVakfiQuranTurkishTranslation
            .diyanetVakfiQuranTurkishTranslationJsonData,
        quranTranslationDirection: turkishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 93,
        quranTranslatorName: "Edip Yuksel",
        quranTranslationLanguageName: turkishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: EdipYukselQuranTurkishTranslation
            .edipYukselQuranTurkishTranslationJsonData,
        quranTranslationDirection: turkishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 94,
        quranTranslatorName: "Elmalili Hamdi Yazir",
        quranTranslationLanguageName: turkishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: ElmaliliHamdiYazirQuranTurkishTranslation
            .elmaliliHamdiYazirQuranTurkishTranslationJsonData,
        quranTranslationDirection: turkishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 95,
        quranTranslatorName: "Suat Yildirim",
        quranTranslationLanguageName: turkishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: SuatYildirimQuranTurkishTranslation
            .suatYildirimQuranTurkishTranslationJsonData,
        quranTranslationDirection: turkishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 96,
        quranTranslatorName: "Suleyman Ates Quran",
        quranTranslationLanguageName: turkishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: SuleymanAtesQuranTurkishTranslation
            .suleymanAtesQuranTurkishTranslationJsonData,
        quranTranslationDirection: turkishLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 97,
        quranTranslatorName: "Yasar Nuri Ozturk",
        quranTranslationLanguageName: turkishLanguage,
        quranTranslationFontStyleName: "Arial",
        quranCompleteTranslation: YasarNuriOzturkQuranTurkishTranslation
            .yasarNuriOzturkQuranTurkishTranslationJsonData,
        quranTranslationDirection: turkishLanguageTextDirection),

    // Urdu .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 98,
        quranTranslatorName: "Ahmed Ali",
        quranTranslationLanguageName: urduLanguage,
        quranTranslationFontStyleName: "Jameel",
        quranCompleteTranslation:
            AhmedAliQuranUrduTranslation.ahmedAliQuranUrduTranslationJsonData,
        quranTranslationDirection: urduLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 99,
        quranTranslatorName: "Ahmed Raza Khan",
        quranTranslationLanguageName: urduLanguage,
        quranTranslationFontStyleName: "Jameel",
        quranCompleteTranslation: AhmedRazaKhanQuranUrduTranslation
            .ahmedRazaKhanQuranUrduTranslationJsonData,
        quranTranslationDirection: urduLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 100,
        quranTranslatorName: "Fateh Muhammad Jalandhry",
        quranTranslationLanguageName: urduLanguage,
        quranTranslationFontStyleName: "Jameel",
        quranCompleteTranslation: FatehMuhammadJalandhryQuranUrduTranslation
            .fatehMuhammadJalandhryQuranUrduTranslationJsonData,
        quranTranslationDirection: urduLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 101,
        quranTranslatorName: "Abul A'ala Maududi",
        quranTranslationLanguageName: urduLanguage,
        quranTranslationFontStyleName: "Jameel",
        quranCompleteTranslation: MolanaAbulAalaMaududiQuranUrduTranslation
            .molanaAbulAalaMaududiQuranUrduTranslationJsonData,
        quranTranslationDirection: urduLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 102,
        quranTranslatorName: "Muhammad Hussain Najafi",
        quranTranslationFontStyleName: "Jameel",
        quranTranslationLanguageName: urduLanguage,
        quranCompleteTranslation: MuhammadHussainNajafiQuranUrduTranslation
            .muhammadHussainNajafiQuranUrduTranslationJsonData,
        quranTranslationDirection: urduLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 103,
        quranTranslatorName: "Muhammad Junagarhi",
        quranTranslationLanguageName: urduLanguage,
        quranTranslationFontStyleName: "Jameel",
        quranCompleteTranslation: MuhammadJunagarhiQuranUrduTranslation
            .muhammadJunagarhiQuranUrduTranslationJsonData,
        quranTranslationDirection: urduLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 104,
        quranTranslatorName: "Syed Zeeshan Haider Jawadi",
        quranTranslationLanguageName: urduLanguage,
        quranTranslationFontStyleName: "Jameel",
        quranCompleteTranslation: SyedZeeshanHaiderJawadiQuranUrduTranslation
            .syedZeeshanHaiderJawadiQuranUrduTranslationJsonData,
        quranTranslationDirection: urduLanguageTextDirection),

    CompleteQuranTranslatorModel(
        quranTranslatorId: 105,
        quranTranslatorName: "Tahir Ul Qadri",
        quranTranslationLanguageName: urduLanguage,
        quranTranslationFontStyleName: "Jameel",
        quranCompleteTranslation: TahirUlQadriQuranUrduTranslation
            .tahirUlQadriQuranUrduTranslationJsonData,
        quranTranslationDirection: urduLanguageTextDirection),

    // Uyghur .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 106,
        quranTranslatorName: "Muhammad Saleh",
        quranTranslationLanguageName: uyghurLanguage,
        quranTranslationFontStyleName: "UKIJTUZ",
        quranCompleteTranslation: MuhammadSalehQuranUyghurTranslation
            .muhammadSalehQuranUyghurTranslationJsonData,
        quranTranslationDirection: uyghurLanguageTextDirection),

    // Uzbek .

    CompleteQuranTranslatorModel(
        quranTranslatorId: 107,
        quranTranslatorName: "Muhammad Sodik Muhammad Yusuf",
        quranTranslationLanguageName: uzbekLanguage,
        quranTranslationFontStyleName: "Archivo",
        quranCompleteTranslation:
            MuhammadSodikMuhammadYusufQuranUzbekTranslation
                .muhammadSodikMuhammadYusufQuranUzbekTranslationJsonData,
        quranTranslationDirection: uzbekLanguageTextDirection)
  ];

// Text direction's .
  static const String leftToRightTextDirection = "LeftToRight";
  static const String rightToLeftTextDirection = "RightToLeft";

// All languages names .

  static const String albanianLanguage = "Albanian";
  static const String amharicLanguage = "Amharic";
  static const String azerbaijaniLanguage = "Azerbaijani";
  static const String bengaliLanguage = "Bengali";
  static const String berberLanguage = "Berber";
  static const String czechLanguage = "Czech";
  static const String dhivehiLanguage = "Dhivehi";
  static const String dutchLanguage = "Dutch";
  static const String englishLanguage = "English";
  static const String romanEnglishUrduLanguage = "Roman English";
  static const String frenchLanguage = "French";
  static const String germanLanguage = "German";
  static const String hausaLanguage = "Hausa";
  static const String hindiLanguage = "Hindi";
  static const String indonasianLanguage = "Indonasian";
  static const String italianLanguage = "Italian";
  static const String japaneseLanguage = "Japanese";
  static const String koreanLanguage = "Korean";
  static const String kurdishLanguage = "Kurdish";
  static const String malayalamLanguage = "Malayalam";
  static const String norwegianLanguage = "Norwegian";
  static const String pashtoLanguage = "Pashto";
  static const String persianLanguage = "Persian";
  static const String polishLanguage = "Polish";
  static const String portugueseLanguage = "Portuguese";
  static const String romanianLanguage = "Romanian";
  static const String russianLanguage = "Russian";
  static const String sindhiLanguage = "Sindhi";
  static const String somaliLanguage = "Somali";
  static const String spanishLanguage = "Spanish";
  static const String swahiliLanguage = "Swahili";
  static const String swedishLanguage = "Swedish";
  static const String tajikLanguage = "Tajik";
  static const String tamilLanguage = "Tamil";
  static const String tatarLanguage = "Tatar";
  static const String thaiLanguage = "Thai";
  static const String turkishLanguage = "Turkish";
  static const String urduLanguage = "Urdu";
  static const String uyghurLanguage = "Uyghur";
  static const String uzbekLanguage = "Uzbek";

// All languages text direction's .

  static const String albanianLanguageTextDirection = leftToRightTextDirection;
  static const String amharicLanguageTextDirection = leftToRightTextDirection;
  static const String azerbaijaniLanguageTextDirection =
      leftToRightTextDirection;
  static const String bengaliLanguageTextDirection = leftToRightTextDirection;
  static const String berberLanguageTextDirection = leftToRightTextDirection;
  static const String czechLanguageTextDirection = leftToRightTextDirection;
  static const String dhivehiLanguageTextDirection = rightToLeftTextDirection;
  static const String dutchLanguageTextDirection = leftToRightTextDirection;
  static const String englishLanguageTextDirection = leftToRightTextDirection;
  static const String frenchLanguageTextDirection = leftToRightTextDirection;
  static const String germanLanguageTextDirection = leftToRightTextDirection;
  static const String hausaLanguageTextDirection = leftToRightTextDirection;
  static const String hindiLanguageTextDirection = leftToRightTextDirection;
  static const String indonasianLanguageTextDirection =
      leftToRightTextDirection;
  static const String italianLanguageTextDirection = leftToRightTextDirection;
  static const String japaneseLanguageTextDirection = leftToRightTextDirection;
  static const String koreanLanguageTextDirection = leftToRightTextDirection;
  static const String kurdishLanguageTextDirection = leftToRightTextDirection;
  static const String malayalamLanguageTextDirection = leftToRightTextDirection;
  static const String norwegianLanguageTextDirection = leftToRightTextDirection;
  static const String pasthoLanguageTextDirection = rightToLeftTextDirection;
  static const String persianLanguageTextDirection = rightToLeftTextDirection;
  static const String polishLanguageTextDirection = leftToRightTextDirection;
  static const String portugueseLanguageTextDirection =
      leftToRightTextDirection;
  static const String romanianLanguageTextDirection = leftToRightTextDirection;
  static const String russianLanguageTextDirection = leftToRightTextDirection;
  static const String sindhiLanguageTextDirection = rightToLeftTextDirection;
  static const String somaliLanguageTextDirection = leftToRightTextDirection;
  static const String spanishLanguageTextDirection = leftToRightTextDirection;
  static const String swahiliLanguageTextDirection = leftToRightTextDirection;
  static const String swedishLanguageTextDirection = leftToRightTextDirection;
  static const String tajikLanguageTextDirection = leftToRightTextDirection;
  static const String tamilLanguageTextDirection = leftToRightTextDirection;
  static const String tatarLanguageTextDirection = leftToRightTextDirection;
  static const String thaiLanguageTextDirection = leftToRightTextDirection;
  static const String turkishLanguageTextDirection = leftToRightTextDirection;
  static const String urduLanguageTextDirection = rightToLeftTextDirection;
  static const String uyghurLanguageTextDirection = rightToLeftTextDirection;
  static const String uzbekLanguageTextDirection = leftToRightTextDirection;
}
