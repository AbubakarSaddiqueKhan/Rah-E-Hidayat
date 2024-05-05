

import 'dart:convert';


import 'package:flutter_quran_api_practice/DataBase/Hadith/Forty_Hadith_Of_Imam_Al_Nawawi/arabic_forty_hadith_of_imam_al_nawawi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Forty_Hadith_Of_Imam_Al_Nawawi/bengali_dorty_hadith_of_imam_al_nawawi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Forty_Hadith_Of_Imam_Al_Nawawi/english_forty_hadith_of_imam_al_nawawi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Forty_Hadith_Of_Shah_Waliullah_Dehlawi/arabic_forty_hadith_of_shah_wali_ullah_dehlawi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Forty_Hadith_Of_Shah_Waliullah_Dehlawi/english_forty_hadith_of_shah_wali_ullah_dehlawi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Forty_Hadith_Qudsi/arabic_forty_hadith_qudsi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Forty_Hadith_Qudsi/english_forty_hadith_qudsi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Muwatta_Imam_Malik/arabic_muwatta_imam_malik.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Muwatta_Imam_Malik/bengali_muwatta_imam_malik.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Muwatta_Imam_Malik/english_muwatta_imam_malik.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Muwatta_Imam_Malik/french_muwatta_imam_malik.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Muwatta_Imam_Malik/indonesian_muwatta_imam_malik.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Muwatta_Imam_Malik/turkish_muwatta_imam_malik.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Muwatta_Imam_Malik/urdu_muwatta_imam_malik.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Al_Bukhari/arabic_sahih_al_bukhari.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Al_Bukhari/bengali_sahih_al_bukhari.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Al_Bukhari/english_sahih_al_bukhari.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Al_Bukhari/indonesian_sahih_al_bukhari.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Al_Bukhari/russian_sahih_al_bukhari.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Al_Bukhari/tamil_sahih_al_bukhari.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Al_Bukhari/turkish_sahih_al_bukhari.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Al_Bukhari/urdu_sahih_al_bukhari.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Muslim/arabic_sahih_muslim.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Muslim/bengali_sahih_muslim.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Muslim/english_sahih_muslim.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Muslim/french_sahih_muslim.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Muslim/indonesian_sahih_muslim.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Muslim/russian_sahih_muslim.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Muslim/tamil_sahih_muslim.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Muslim/turkish_sahih_muslim.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sahih_Muslim/urdu_sahih_muslim.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Abu_Dawud/arabic_sunan_abu_dawud.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Abu_Dawud/bengali_sunan_abu_dawud.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Abu_Dawud/english_sunan_abu_dawud.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Abu_Dawud/indonesian_sunan_abu_dawud.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Abu_Dawud/russian_sunan_abu_dawud.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Abu_Dawud/turkish_sunan_abu_dawud.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Abu_Dawud/urdu_sunan_abu_dawud.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Al_Tirmidhi/arabic_sunan_al_tirmidhi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Al_Tirmidhi/bengali_sunan_al_tirmidhi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Al_Tirmidhi/english_sunan_al_tirmidhi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Al_Tirmidhi/indonesian_sunan_al_tirmidhi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Al_Tirmidhi/turkish_sunan_al_tirmidhi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Al_Tirmidhi/urdu_sunan_al_tirmidhi.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_An_Nasai/arabic_sunan_an_nasai.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_An_Nasai/bengali_sunan_an_nasai.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_An_Nasai/english_sunan_an_nasai.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_An_Nasai/indonesian_sunan_an_nasai.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_An_Nasai/turkish_sunan_an_nasai.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_An_Nasai/urdu_sunan_an_nasai.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Ibn_Majah/arabic_sunan_ibn_majah.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Ibn_Majah/bengali_sunan_ibn_majah.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Ibn_Majah/english_sunan_ibn_majah.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Ibn_Majah/indonesian_sunan_ibn_majah.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Ibn_Majah/turkish_sunan_ibn_majah.dart';
import 'package:flutter_quran_api_practice/DataBase/Hadith/Sunan_Ibn_Majah/urdu_sunan_ibn_majah.dart';

class HadithBooksDataModel {
  int hadithBookId;
  String hadithBookEnglishName;
  String hadithBookNameInTheirTranslatedLanguage;
  String hadithBookNameInTheirTranslatedLanguageTextDirection;
  int totalNumberOfHadithInThatBook;
  String hadithBookTranslationLanguageName;
  String completeHadithBookTranslatedJson;
  String completeHadithBookArabicJson;
  String translatedLanguageFontStyleName;
  HadithBooksDataModel({
    required this.hadithBookId,
    required this.hadithBookEnglishName,
    required this.hadithBookNameInTheirTranslatedLanguage,
    required this.hadithBookNameInTheirTranslatedLanguageTextDirection,
    required this.totalNumberOfHadithInThatBook,
    required this.hadithBookTranslationLanguageName,
    required this.completeHadithBookTranslatedJson,
    required this.completeHadithBookArabicJson,
    required this.translatedLanguageFontStyleName,
  });

  HadithBooksDataModel copyWith({
    int? hadithBookId,
    String? hadithBookEnglishName,
    String? hadithBookNameInTheirTranslatedLanguage,
    String? hadithBookNameInTheirTranslatedLanguageTextDirection,
    int? totalNumberOfHadithInThatBook,
    String? hadithBookTranslationLanguageName,
    String? completeHadithBookTranslatedJson,
    String? completeHadithBookArabicJson,
    String? tranlatedLanguageFontStyleName,
  }) {
    return HadithBooksDataModel(
      hadithBookId: hadithBookId ?? this.hadithBookId,
      hadithBookEnglishName:
          hadithBookEnglishName ?? this.hadithBookEnglishName,
      hadithBookNameInTheirTranslatedLanguage:
          hadithBookNameInTheirTranslatedLanguage ??
              this.hadithBookNameInTheirTranslatedLanguage,
      hadithBookNameInTheirTranslatedLanguageTextDirection:
          hadithBookNameInTheirTranslatedLanguageTextDirection ??
              this.hadithBookNameInTheirTranslatedLanguageTextDirection,
      totalNumberOfHadithInThatBook:
          totalNumberOfHadithInThatBook ?? this.totalNumberOfHadithInThatBook,
      hadithBookTranslationLanguageName: hadithBookTranslationLanguageName ??
          this.hadithBookTranslationLanguageName,
      completeHadithBookTranslatedJson: completeHadithBookTranslatedJson ??
          this.completeHadithBookTranslatedJson,
      completeHadithBookArabicJson:
          completeHadithBookArabicJson ?? this.completeHadithBookArabicJson,
      translatedLanguageFontStyleName: tranlatedLanguageFontStyleName ??
          this.translatedLanguageFontStyleName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadithBookId': hadithBookId,
      'hadithBookEnglishName': hadithBookEnglishName,
      'hadithBookNameInTheirTranslatedLanguage':
          hadithBookNameInTheirTranslatedLanguage,
      'hadithBookNameInTheirTranslatedLanguageTextDirection':
          hadithBookNameInTheirTranslatedLanguageTextDirection,
      'totalNumberOfHadithInThatBook': totalNumberOfHadithInThatBook,
      'hadithBookTranslationLanguageName': hadithBookTranslationLanguageName,
      'completeHadithBookTranslatedJson': completeHadithBookTranslatedJson,
      'completeHadithBookArabicJson': completeHadithBookArabicJson,
      'tranlatedLanguageFontStyleName': translatedLanguageFontStyleName,
    };
  }

  factory HadithBooksDataModel.fromMap(Map<String, dynamic> map) {
    return HadithBooksDataModel(
      hadithBookId: map['hadithBookId'] as int,
      hadithBookEnglishName: map['hadithBookEnglishName'] as String,
      hadithBookNameInTheirTranslatedLanguage:
          map['hadithBookNameInTheirTranslatedLanguage'] as String,
      hadithBookNameInTheirTranslatedLanguageTextDirection:
          map['hadithBookNameInTheirTranslatedLanguageTextDirection'] as String,
      totalNumberOfHadithInThatBook:
          map['totalNumberOfHadithInThatBook'] as int,
      hadithBookTranslationLanguageName:
          map['hadithBookTranslationLanguageName'] as String,
      completeHadithBookTranslatedJson:
          map['completeHadithBookTranslatedJson'] as String,
      completeHadithBookArabicJson:
          map['completeHadithBookArabicJson'] as String,
      translatedLanguageFontStyleName:
          map['tranlatedLanguageFontStyleName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HadithBooksDataModel.fromJson(String source) =>
      HadithBooksDataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HadithBooksDataModel(hadithBookId: $hadithBookId, hadithBookEnglishName: $hadithBookEnglishName, hadithBookNameInTheirTranslatedLanguage: $hadithBookNameInTheirTranslatedLanguage, hadithBookNameInTheirTranslatedLanguageTextDirection: $hadithBookNameInTheirTranslatedLanguageTextDirection, totalNumberOfHadithInThatBook: $totalNumberOfHadithInThatBook, hadithBookTranslationLanguageName: $hadithBookTranslationLanguageName, completeHadithBookTranslatedJson: $completeHadithBookTranslatedJson, completeHadithBookArabicJson: $completeHadithBookArabicJson, tranlatedLanguageFontStyleName: $translatedLanguageFontStyleName)';
  }

  @override
  bool operator ==(covariant HadithBooksDataModel other) {
    if (identical(this, other)) return true;

    return other.hadithBookId == hadithBookId &&
        other.hadithBookEnglishName == hadithBookEnglishName &&
        other.hadithBookNameInTheirTranslatedLanguage ==
            hadithBookNameInTheirTranslatedLanguage &&
        other.hadithBookNameInTheirTranslatedLanguageTextDirection ==
            hadithBookNameInTheirTranslatedLanguageTextDirection &&
        other.totalNumberOfHadithInThatBook == totalNumberOfHadithInThatBook &&
        other.hadithBookTranslationLanguageName ==
            hadithBookTranslationLanguageName &&
        other.completeHadithBookTranslatedJson ==
            completeHadithBookTranslatedJson &&
        other.completeHadithBookArabicJson == completeHadithBookArabicJson &&
        other.translatedLanguageFontStyleName ==
            translatedLanguageFontStyleName;
  }

  @override
  int get hashCode {
    return hadithBookId.hashCode ^
        hadithBookEnglishName.hashCode ^
        hadithBookNameInTheirTranslatedLanguage.hashCode ^
        hadithBookNameInTheirTranslatedLanguageTextDirection.hashCode ^
        totalNumberOfHadithInThatBook.hashCode ^
        hadithBookTranslationLanguageName.hashCode ^
        completeHadithBookTranslatedJson.hashCode ^
        completeHadithBookArabicJson.hashCode ^
        translatedLanguageFontStyleName.hashCode;
  }


  static const String leftToRightTextDirection = "LeftToRight";
  static const String rightToLeftTextDirection = "RightToLeft";










  static List<HadithBooksDataModel> hadithBooksDetails = <HadithBooksDataModel>[
    

    HadithBooksDataModel(
        hadithBookId: 1,
        hadithBookEnglishName: "Sahih Al Bukhari",
        hadithBookNameInTheirTranslatedLanguage: "Sahih Al Bukhari",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSahihAlBukhari.arabicSahihAlBukhariJsonData,
        completeHadithBookTranslatedJson:
            EnglishSahihAlBukhari.englishSahihAlBukhariJsonData,
        translatedLanguageFontStyleName: "Archivo",
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "English"),
    HadithBooksDataModel(
        hadithBookId: 2,
        hadithBookEnglishName: "Sahih Al Bukhari",
        hadithBookNameInTheirTranslatedLanguage: "صحیح البخاری",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.rightToLeftTextDirection,
        translatedLanguageFontStyleName: "Jameel",
        completeHadithBookArabicJson:
            ArabicSahihAlBukhari.arabicSahihAlBukhariJsonData,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Urdu",
        completeHadithBookTranslatedJson:
            UrduSahihAlBukhari.urduSahihAlBukhariJsonData),
    HadithBooksDataModel(
        hadithBookId: 3,
        hadithBookEnglishName: "Sahih Al Bukhari",
        hadithBookNameInTheirTranslatedLanguage: "সহীহ আল বুখারী",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Siyam",
        completeHadithBookArabicJson:
            ArabicSahihAlBukhari.arabicSahihAlBukhariJsonData,
        totalNumberOfHadithInThatBook: 7563,
        completeHadithBookTranslatedJson:
            BengaliSahihAlBukhari.bengaliSahihAlBukhariJsonData,
        hadithBookTranslationLanguageName: "Bengali"),
    HadithBooksDataModel(
        hadithBookId: 4,
        hadithBookEnglishName: "Sahih Al Bukhari",
        hadithBookNameInTheirTranslatedLanguage: "Сахих Аль Бухари",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSahihAlBukhari.arabicSahihAlBukhariJsonData,
        completeHadithBookTranslatedJson:
            RussianSahihAlBukhari.russianSahihAlBukhariJsonData,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Russian"),
    HadithBooksDataModel(
        hadithBookId: 5,
        hadithBookEnglishName: "Sahih Al Bukhari",
        hadithBookNameInTheirTranslatedLanguage: "Sahih Al Buhari",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSahihAlBukhari.arabicSahihAlBukhariJsonData,
        completeHadithBookTranslatedJson:
            TurkishSahihAlBukhari.turkishSahihAlBukhariJsonData,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Turkish"),
    HadithBooksDataModel(
        hadithBookId: 6,
        hadithBookEnglishName: "Sahih Al Bukhari",
        hadithBookNameInTheirTranslatedLanguage: "ஸஹீஹ் அல் புகாரி",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSahihAlBukhari.arabicSahihAlBukhariJsonData,
        completeHadithBookTranslatedJson:
            TamilSahihALBukhari.tamilSahihALBukhariJsonData,
        translatedLanguageFontStyleName: "Latha",
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Tamil"),
    HadithBooksDataModel(
        hadithBookId: 7,
        hadithBookEnglishName: "Sahih Al Bukhari",
        hadithBookNameInTheirTranslatedLanguage: "Shahih Al Bukhari",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSahihAlBukhari.arabicSahihAlBukhariJsonData,
        completeHadithBookTranslatedJson:
            IndonesianSahihAlBukhari.indonesianSahihAlBukhariJsonData,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Indonesian"),

    

    HadithBooksDataModel(
        hadithBookId: 8,
        hadithBookEnglishName: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguage: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "English",
        translatedLanguageFontStyleName: "Archivo",
        completeHadithBookTranslatedJson:
            EnglishSahihMuslim.englishSahihMuslimJsonData,
        completeHadithBookArabicJson:
            ArabicSahihMuslim.arabicSahihMuslimJsonData),

    HadithBooksDataModel(
        hadithBookId: 9,
        hadithBookEnglishName: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguage: "صحیح مسلم",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.rightToLeftTextDirection,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Urdu",
        translatedLanguageFontStyleName: "Jameel",
        completeHadithBookTranslatedJson:
            UrduSahihMuslim.urduSahihMuslimJsonData,
        completeHadithBookArabicJson:
            ArabicSahihMuslim.arabicSahihMuslimJsonData),

    HadithBooksDataModel(
        hadithBookId: 10,
        hadithBookEnglishName: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguage: "সহীহ মুসলিম",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSahihMuslim.arabicSahihMuslimJsonData,
        totalNumberOfHadithInThatBook: 7563,
        translatedLanguageFontStyleName: "Siyam",
        completeHadithBookTranslatedJson:
            BengaliSahihMuslim.bengaliSahihMuslimJsonData,
        hadithBookTranslationLanguageName: "Bengali"),
    HadithBooksDataModel(
        hadithBookId: 11,
        hadithBookEnglishName: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguage: "Сахих Муслим",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSahihMuslim.arabicSahihMuslimJsonData,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookTranslatedJson:
            RussianSahihMuslim.russianSahihMuslimJsonData,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Russian"),

    HadithBooksDataModel(
        hadithBookId: 12,
        hadithBookEnglishName: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguage: "Sahih Musulman",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSahihMuslim.arabicSahihMuslimJsonData,
        completeHadithBookTranslatedJson:
            FrenchSahihMuslim.frenchSahihMuslimJsonData,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "French"),
    HadithBooksDataModel(
        hadithBookId: 13,
        hadithBookEnglishName: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguage: "Sahih Müslim",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSahihMuslim.arabicSahihMuslimJsonData,
        completeHadithBookTranslatedJson:
            TurkishSahihMuslim.turkishSahihMuslimJsonData,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Turkish"),
    HadithBooksDataModel(
        hadithBookId: 14,
        hadithBookEnglishName: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguage: "சாஹிஹ் முஸ்லிம்",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSahihMuslim.arabicSahihMuslimJsonData,
        translatedLanguageFontStyleName: "Latha",
        completeHadithBookTranslatedJson:
            TamilSahihMuslim.tamilSahihMuslimJsonData,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Tamil"),
    HadithBooksDataModel(
        hadithBookId: 15,
        hadithBookEnglishName: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguage: "Shahih Muslim",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSahihMuslim.arabicSahihMuslimJsonData,
        completeHadithBookTranslatedJson:
            IndonesianSahihMuslim.indonesianSahihMuslimJsonData,
        totalNumberOfHadithInThatBook: 7563,
        hadithBookTranslationLanguageName: "Indonesian"),

    

    HadithBooksDataModel(
        hadithBookId: 8,
        hadithBookEnglishName: "Sunan Al Tirmidhi",
        hadithBookNameInTheirTranslatedLanguage: "Sunan Al Tirmidhi",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        totalNumberOfHadithInThatBook: 3956,
        hadithBookTranslationLanguageName: "English",
        translatedLanguageFontStyleName: "Archivo",
        completeHadithBookTranslatedJson:
            EnglishSunanAlTirmidhi.englishSunanAlTirmidhiJsonData,
        completeHadithBookArabicJson:
            ArabicSunanAlTirmidhi.arabicSunanAlTirmidhiJsonData),

    HadithBooksDataModel(
        hadithBookId: 9,
        hadithBookEnglishName: "Sunan Al Tirmidhi",
        hadithBookNameInTheirTranslatedLanguage: "سنن الترمذی",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.rightToLeftTextDirection,
        totalNumberOfHadithInThatBook: 3956,
        hadithBookTranslationLanguageName: "Urdu",
        translatedLanguageFontStyleName: "Jameel",
        completeHadithBookTranslatedJson:
            UrduSunanAlTirmidhi.urduSunanAlTirmidhiJsonData,
        completeHadithBookArabicJson:
            ArabicSunanAlTirmidhi.arabicSunanAlTirmidhiJsonData),

    HadithBooksDataModel(
        hadithBookId: 10,
        hadithBookEnglishName: "Sunan Al Tirmidhi",
        hadithBookNameInTheirTranslatedLanguage: "সুনানে তিরমিযী",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSunanAlTirmidhi.arabicSunanAlTirmidhiJsonData,
        totalNumberOfHadithInThatBook: 3956,
        translatedLanguageFontStyleName: "Siyam",
        completeHadithBookTranslatedJson:
            BengaliSunanAlTirmidhi.bengaliSunanAlTirmidhiJsonData,
        hadithBookTranslationLanguageName: "Bengali"),

    HadithBooksDataModel(
        hadithBookId: 13,
        hadithBookEnglishName: "Sunan Al Tirmidhi",
        hadithBookNameInTheirTranslatedLanguage: "Sünen El Tirmizi",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSunanAlTirmidhi.arabicSunanAlTirmidhiJsonData,
        completeHadithBookTranslatedJson:
            TurkishSunanAlTirmidhi.turkishSunanAlTirmidhiJsonData,
        totalNumberOfHadithInThatBook: 3956,
        hadithBookTranslationLanguageName: "Turkish"),

    HadithBooksDataModel(
        hadithBookId: 15,
        hadithBookEnglishName: "Sunan Al Tirmidhi",
        hadithBookNameInTheirTranslatedLanguage: "Sunan Al Tirmidzi",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSunanAlTirmidhi.arabicSunanAlTirmidhiJsonData,
        completeHadithBookTranslatedJson:
            IndonesianSunanAlTirmidhi.indonesianSunanAlTirmidhiJsonData,
        totalNumberOfHadithInThatBook: 3956,
        hadithBookTranslationLanguageName: "Indonesian"),

    

    HadithBooksDataModel(
        hadithBookId: 16,
        hadithBookEnglishName: "Sunan Abu Dawud",
        hadithBookNameInTheirTranslatedLanguage: "Sunan Abu Dawud",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        totalNumberOfHadithInThatBook: 5274,
        hadithBookTranslationLanguageName: "English",
        translatedLanguageFontStyleName: "Archivo",
        completeHadithBookTranslatedJson:
            EnglishSunanAbuDawud.englishSunanAbuDawudJsonData,
        completeHadithBookArabicJson:
            ArabicSunanAbuDawud.arabicSunanAbuDawudJsonData),

    HadithBooksDataModel(
        hadithBookId: 17,
        hadithBookEnglishName: "Sunan Abu Dawud",
        hadithBookNameInTheirTranslatedLanguage: "سنن ابوداؤد",
        translatedLanguageFontStyleName: "Jameel",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.rightToLeftTextDirection,
        totalNumberOfHadithInThatBook: 5274,
        hadithBookTranslationLanguageName: "Urdu",
        completeHadithBookTranslatedJson:
            UrduSunanAbuDawud.urduSunanAbuDawudJsonData,
        completeHadithBookArabicJson:
            ArabicSunanAbuDawud.arabicSunanAbuDawudJsonData),

    HadithBooksDataModel(
        hadithBookId: 18,
        hadithBookEnglishName: "Sunan Abu Dawud",
        hadithBookNameInTheirTranslatedLanguage: "সুনানে আবু দাউদ",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSunanAbuDawud.arabicSunanAbuDawudJsonData,
        translatedLanguageFontStyleName: "Siyam",
        totalNumberOfHadithInThatBook: 5274,
        completeHadithBookTranslatedJson:
            BengaliSunanAbuDawud.bengaliSunanAbuDawudJsonData,
        hadithBookTranslationLanguageName: "Bengali"),

    HadithBooksDataModel(
        hadithBookId: 19,
        hadithBookEnglishName: "Sunan Abu Dawud",
        hadithBookNameInTheirTranslatedLanguage: "Сунан Абу Дауд",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSunanAbuDawud.arabicSunanAbuDawudJsonData,
        completeHadithBookTranslatedJson:
            RussianSunanAbuDawud.russianSunanAbuDawudJsonData,
        totalNumberOfHadithInThatBook: 5274,
        hadithBookTranslationLanguageName: "Russian"),

    HadithBooksDataModel(
        hadithBookId: 20,
        hadithBookEnglishName: "Sunan Abu Dawud",
        hadithBookNameInTheirTranslatedLanguage: "Sünen Ebu Davud",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSunanAbuDawud.arabicSunanAbuDawudJsonData,
        completeHadithBookTranslatedJson:
            TurkishSunanAbuDawud.turkishSunanAbuDawudJsonData,
        totalNumberOfHadithInThatBook: 5274,
        hadithBookTranslationLanguageName: "Turkish"),

    HadithBooksDataModel(
        hadithBookId: 21,
        hadithBookEnglishName: "Sunan Abu Dawud",
        hadithBookNameInTheirTranslatedLanguage: "Sunan Abu Dawud",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSunanAbuDawud.arabicSunanAbuDawudJsonData,
        completeHadithBookTranslatedJson:
            IndonesianSunanAbuDawud.indonesianSunanAbuDawudJsonData,
        totalNumberOfHadithInThatBook: 5274,
        hadithBookTranslationLanguageName: "Indonesian"),

    

    HadithBooksDataModel(
        hadithBookId: 22,
        hadithBookEnglishName: "Sunan An Nasai",
        hadithBookNameInTheirTranslatedLanguage: "Sahih Muslim",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        totalNumberOfHadithInThatBook: 5758,
        hadithBookTranslationLanguageName: "English",
        completeHadithBookTranslatedJson:
            EnglishSunanAnNasai.englishSunanAnNasaiJsonData,
        translatedLanguageFontStyleName: "Archivo",
        completeHadithBookArabicJson:
            ArabicSunanAnNasai.arabicSunanAnNasaiJsonData),

    HadithBooksDataModel(
        hadithBookId: 23,
        hadithBookEnglishName: "Sunan An Nasai",
        hadithBookNameInTheirTranslatedLanguage: "سنن نسائی",
        translatedLanguageFontStyleName: "Jameel",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.rightToLeftTextDirection,
        totalNumberOfHadithInThatBook: 5758,
        hadithBookTranslationLanguageName: "Urdu",
        completeHadithBookTranslatedJson:
            UrduSunanAnNasai.urduSunanAnNasaiJsonData,
        completeHadithBookArabicJson:
            ArabicSunanAnNasai.arabicSunanAnNasaiJsonData),

    HadithBooksDataModel(
        hadithBookId: 24,
        hadithBookEnglishName: "Sunan An Nasai",
        hadithBookNameInTheirTranslatedLanguage: "সুনানে আন নাসায়ী",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSunanAnNasai.arabicSunanAnNasaiJsonData,
        translatedLanguageFontStyleName: "Siyam",
        totalNumberOfHadithInThatBook: 5758,
        completeHadithBookTranslatedJson:
            BengaliSunanAnNasai.bengaliSunanAnNasaiJsonData,
        hadithBookTranslationLanguageName: "Bengali"),

    HadithBooksDataModel(
        hadithBookId: 25,
        hadithBookEnglishName: "Sunan An Nasai",
        hadithBookNameInTheirTranslatedLanguage: "Sunan An Nesai",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSunanAnNasai.arabicSunanAnNasaiJsonData,
        completeHadithBookTranslatedJson:
            TurkishSunanAnNasai.turkishSunanAnNasaiJsonData,
        totalNumberOfHadithInThatBook: 5758,
        hadithBookTranslationLanguageName: "Turkish"),

    HadithBooksDataModel(
        hadithBookId: 26,
        hadithBookEnglishName: "Sunan An Nasai",
        hadithBookNameInTheirTranslatedLanguage: "Shahih Muslim",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSunanAnNasai.arabicSunanAnNasaiJsonData,
        completeHadithBookTranslatedJson:
            IndonesianSunanAnNasai.indonesianSunanAnNasaiJsonData,
        totalNumberOfHadithInThatBook: 5758,
        hadithBookTranslationLanguageName: "Indonesian"),

    

    HadithBooksDataModel(
        hadithBookId: 27,
        hadithBookEnglishName: "Sunan Ibn Majah",
        hadithBookNameInTheirTranslatedLanguage: "Sunan Ibn Majah",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        totalNumberOfHadithInThatBook: 4341,
        hadithBookTranslationLanguageName: "English",
        completeHadithBookTranslatedJson:
            EnglishSunanIbnMajah.englishSunanIbnMajahJsonData,
        translatedLanguageFontStyleName: "Archivo",
        completeHadithBookArabicJson:
            ArabicSunanIbnMajah.arabicSunanIbnMajahJsonData),

    HadithBooksDataModel(
        hadithBookId: 28,
        hadithBookEnglishName: "Sunan Ibn Majah",
        hadithBookNameInTheirTranslatedLanguage: "سنن ابن ماجہ",
        translatedLanguageFontStyleName: "Jameel",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.rightToLeftTextDirection,
        totalNumberOfHadithInThatBook: 4341,
        hadithBookTranslationLanguageName: "Urdu",
        completeHadithBookTranslatedJson:
            UrduSunanIbnMajah.urduSunanIbnMajahJsonData,
        completeHadithBookArabicJson:
            ArabicSunanIbnMajah.arabicSunanIbnMajahJsonData),

    HadithBooksDataModel(
        hadithBookId: 29,
        hadithBookEnglishName: "Sunan Ibn Majah",
        hadithBookNameInTheirTranslatedLanguage: "সুনানে ইবনে মাজাহ",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSunanIbnMajah.arabicSunanIbnMajahJsonData,
        totalNumberOfHadithInThatBook: 4341,
        translatedLanguageFontStyleName: "Siyam",
        completeHadithBookTranslatedJson:
            BengaliSunanIbnMajah.bengaliSunanIbnMajahJsonData,
        hadithBookTranslationLanguageName: "Bengali"),

    HadithBooksDataModel(
        hadithBookId: 30,
        hadithBookEnglishName: "Sunan Ibn Majah",
        hadithBookNameInTheirTranslatedLanguage: "Sünen İbn Mâce",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicSunanIbnMajah.arabicSunanIbnMajahJsonData,
        completeHadithBookTranslatedJson:
            TurkishSunanIbnMajah.turkishSunanIbnMajahJsonData,
        totalNumberOfHadithInThatBook: 4341,
        hadithBookTranslationLanguageName: "Turkish"),

    HadithBooksDataModel(
        hadithBookId: 31,
        hadithBookEnglishName: "Sunan Ibn Majah",
        hadithBookNameInTheirTranslatedLanguage: "Sunan Ibnu Majah",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicSunanIbnMajah.arabicSunanIbnMajahJsonData,
        completeHadithBookTranslatedJson:
            IndonesianSunanIbnMajah.indonesianSunanIbnMajahJsonData,
        translatedLanguageFontStyleName: "Arial",
        totalNumberOfHadithInThatBook: 4341,
        hadithBookTranslationLanguageName: "Indonesian"),

    

    HadithBooksDataModel(
        hadithBookId: 32,
        hadithBookEnglishName: "Muwatta Imam Malik",
        hadithBookNameInTheirTranslatedLanguage: "Muwatta Imam Malik",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        totalNumberOfHadithInThatBook: 1858,
        hadithBookTranslationLanguageName: "English",
        translatedLanguageFontStyleName: "Archivo",
        completeHadithBookTranslatedJson:
            EnglishMuwattaImamMalik.englishMuwattaImamMalikJsonData,
        completeHadithBookArabicJson:
            ArabicMuwattaImamMalik.arabicMuwattaImamMalikJsonData),

    HadithBooksDataModel(
        hadithBookId: 33,
        hadithBookEnglishName: "Muwatta Imam Malik",
        translatedLanguageFontStyleName: "Jameel",
        hadithBookNameInTheirTranslatedLanguage: "موطا امام مالک",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.rightToLeftTextDirection,
        totalNumberOfHadithInThatBook: 1858,
        hadithBookTranslationLanguageName: "Urdu",
        completeHadithBookTranslatedJson:
            UrduMuwattaImamMalik.urduMuwattaImamMalikJsonData,
        completeHadithBookArabicJson:
            ArabicMuwattaImamMalik.arabicMuwattaImamMalikJsonData),

    HadithBooksDataModel(
        hadithBookId: 34,
        hadithBookEnglishName: "Muwatta Imam Malik",
        hadithBookNameInTheirTranslatedLanguage: "মুওয়াত্তা ইমাম মালিক রহ",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson:
            ArabicMuwattaImamMalik.arabicMuwattaImamMalikJsonData,
        totalNumberOfHadithInThatBook: 1858,
        translatedLanguageFontStyleName: "Siyam",
        completeHadithBookTranslatedJson:
            BengaliMuwattaImamMalik.bengaliMuwattaImamMalikJsonData,
        hadithBookTranslationLanguageName: "Bengali"),

    HadithBooksDataModel(
        hadithBookId: 35,
        hadithBookEnglishName: "Muwatta Imam Malik",
        hadithBookNameInTheirTranslatedLanguage: "Muwatta Imam Malik",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicMuwattaImamMalik.arabicMuwattaImamMalikJsonData,
        completeHadithBookTranslatedJson:
            FrenchMuwattaImamMalik.frenchMuwattaImamMalikJsonData,
        totalNumberOfHadithInThatBook: 1858,
        hadithBookTranslationLanguageName: "French"),
    HadithBooksDataModel(
        hadithBookId: 36,
        hadithBookEnglishName: "Muwatta Imam Malik",
        hadithBookNameInTheirTranslatedLanguage: "Muvatta İmam Malik",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicMuwattaImamMalik.arabicMuwattaImamMalikJsonData,
        completeHadithBookTranslatedJson:
            TurkishMuwattaImamMalik.turkishMuwattaImamMalikJsonData,
        totalNumberOfHadithInThatBook: 1858,
        hadithBookTranslationLanguageName: "Turkish"),

    HadithBooksDataModel(
        hadithBookId: 37,
        hadithBookEnglishName: "Muwatta Imam Malik",
        hadithBookNameInTheirTranslatedLanguage: "Muwatta Imam Malik",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        translatedLanguageFontStyleName: "Arial",
        completeHadithBookArabicJson:
            ArabicMuwattaImamMalik.arabicMuwattaImamMalikJsonData,
        completeHadithBookTranslatedJson:
            IndonesianMuwattaImamMalik.indonesianMuwattaImamMalikJsonData,
        totalNumberOfHadithInThatBook: 1858,
        hadithBookTranslationLanguageName: "Indonesian"),

    

    HadithBooksDataModel(
        hadithBookId: 38,
        hadithBookEnglishName: "Forty Hadith of Imam An Nawawi",
        hadithBookNameInTheirTranslatedLanguage:
            "Forty Hadith of Imam An Nawawi",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        totalNumberOfHadithInThatBook: 42,
        hadithBookTranslationLanguageName: "English",
        translatedLanguageFontStyleName: "Archivo",
        completeHadithBookTranslatedJson: EnglishFortyHaidthOfImamAnNawawi
            .englishFortyHaidthOfImamAnNawawiJsonData,
        completeHadithBookArabicJson: ArabicFortyHadithOfImamAlNawawi
            .arabicFortyHadithOfImamAlNawawiJsonData),

    HadithBooksDataModel(
        hadithBookId: 39,
        hadithBookEnglishName: "Forty Hadith of Imam An Nawawi",
        hadithBookNameInTheirTranslatedLanguage:
            "ইমাম আন নওয়াভীর চল্লিশটি হাদীস",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        completeHadithBookArabicJson: ArabicFortyHadithOfImamAlNawawi
            .arabicFortyHadithOfImamAlNawawiJsonData,
        translatedLanguageFontStyleName: "Siyam",
        totalNumberOfHadithInThatBook: 42,
        completeHadithBookTranslatedJson: BengaliFortyHadithOfImamAlNawawi
            .bengaliFortyHadithOfImamAlNawawiJsonData,
        hadithBookTranslationLanguageName: "Bengali"),

    

    HadithBooksDataModel(
        hadithBookId: 40,
        hadithBookEnglishName: "Forty Hadith Qudsi",
        hadithBookNameInTheirTranslatedLanguage: "Forty Hadith Qudsi",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        totalNumberOfHadithInThatBook: 40,
        hadithBookTranslationLanguageName: "English",
        translatedLanguageFontStyleName: "Archivo",
        completeHadithBookTranslatedJson:
            EnglishFortyHadithQudsi.englishFortyHadithQudsiJsonData,
        completeHadithBookArabicJson:
            ArabicFortyHadithQudsi.arabicFortyHadithQudsiJsonData),

    

    HadithBooksDataModel(
        hadithBookId: 40,
        hadithBookEnglishName: "Forty Hadith of Shah Waliullah Dehlawi",
        hadithBookNameInTheirTranslatedLanguage:
            "Forty Hadith of Shah Waliullah Dehlawi",
        hadithBookNameInTheirTranslatedLanguageTextDirection:
            HadithBooksDataModel.leftToRightTextDirection,
        totalNumberOfHadithInThatBook: 40,
        hadithBookTranslationLanguageName: "English",
        translatedLanguageFontStyleName: "Archivo",
        completeHadithBookTranslatedJson:
            EnglishFortyHadithOfShahWaliUllahDehlawi
                .englishFortyHadithOfShahWaliUllahDehlawiJsonData,
        completeHadithBookArabicJson: ArabicFortyHadithOfShahWaliUllahDehlawi
            .arabicFortyHadithOfShahWaliUllahDehlawiJsonData),
  ];
}
