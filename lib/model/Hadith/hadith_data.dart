import 'dart:convert';

import 'package:flutter/foundation.dart';

class HadithData {
  List<num> hadithNumbersList;
  List<String> arabicHadithTextList;
  List<String> translatedHadithTextList;
  String translatedHadithTextDirection;
  String translatedHadithFontStyleName;
  HadithData({
    required this.hadithNumbersList,
    required this.arabicHadithTextList,
    required this.translatedHadithTextList,
    required this.translatedHadithTextDirection,
    required this.translatedHadithFontStyleName,
  });

  HadithData copyWith({
    List<num>? hadithNumbersList,
    List<String>? arabicHadithTextList,
    List<String>? translatedHadithTextList,
    String? translatedHadithTextDirection,
    String? translatedHadithFontStyleName,
  }) {
    return HadithData(
      hadithNumbersList: hadithNumbersList ?? this.hadithNumbersList,
      arabicHadithTextList: arabicHadithTextList ?? this.arabicHadithTextList,
      translatedHadithTextList:
          translatedHadithTextList ?? this.translatedHadithTextList,
      translatedHadithTextDirection:
          translatedHadithTextDirection ?? this.translatedHadithTextDirection,
      translatedHadithFontStyleName:
          translatedHadithFontStyleName ?? this.translatedHadithFontStyleName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadithNumbersList': hadithNumbersList,
      'arabicHadithTextList': arabicHadithTextList,
      'translatedHadithTextList': translatedHadithTextList,
      'translatedHadithTextDirection': translatedHadithTextDirection,
      'translatedHadithFontStyleName': translatedHadithFontStyleName,
    };
  }

  factory HadithData.fromMap(Map<String, dynamic> map) {
    return HadithData(
      hadithNumbersList:
          List<num>.from((map['hadithNumbersList'] as List<num>)),
      arabicHadithTextList:
          List<String>.from((map['arabicHadithTextList'] as List<String>)),
      translatedHadithTextList:
          List<String>.from((map['translatedHadithTextList'] as List<String>)),
      translatedHadithTextDirection:
          map['translatedHadithTextDirection'] as String,
      translatedHadithFontStyleName:
          map['translatedHadithFontStyleName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HadithData.fromJson(String source) =>
      HadithData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'HadithData(hadithNumbersList: $hadithNumbersList, arabicHadithTextList: $arabicHadithTextList, translatedHadithTextList: $translatedHadithTextList, translatedHadithTextDirection: $translatedHadithTextDirection, translatedHadithFontStyleName: $translatedHadithFontStyleName)';
  }

  @override
  bool operator ==(covariant HadithData other) {
    if (identical(this, other)) return true;

    return listEquals(other.hadithNumbersList, hadithNumbersList) &&
        listEquals(other.arabicHadithTextList, arabicHadithTextList) &&
        listEquals(other.translatedHadithTextList, translatedHadithTextList) &&
        other.translatedHadithTextDirection == translatedHadithTextDirection &&
        other.translatedHadithFontStyleName == translatedHadithFontStyleName;
  }

  @override
  int get hashCode {
    return hadithNumbersList.hashCode ^
        arabicHadithTextList.hashCode ^
        translatedHadithTextList.hashCode ^
        translatedHadithTextDirection.hashCode ^
        translatedHadithFontStyleName.hashCode;
  }
}
