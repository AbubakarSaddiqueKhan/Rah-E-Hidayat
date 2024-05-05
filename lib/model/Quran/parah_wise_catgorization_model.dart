import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/model/Quran/complete_quran_translation.dart';

class SurahBoundriesInParahModel {
  int surahNumber;
  int startingAyahNumber;
  int endingAyahNumber;
  SurahBoundriesInParahModel({
    required this.surahNumber,
    required this.startingAyahNumber,
    required this.endingAyahNumber,
  });

  SurahBoundriesInParahModel copyWith({
    int? surahNumber,
    int? startingAyahNumber,
    int? endingAyahNumber,
  }) {
    return SurahBoundriesInParahModel(
      surahNumber: surahNumber ?? this.surahNumber,
      startingAyahNumber: startingAyahNumber ?? this.startingAyahNumber,
      endingAyahNumber: endingAyahNumber ?? this.endingAyahNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'surahNumber': surahNumber,
      'startingAyahNumber': startingAyahNumber,
      'endingAyahNumber': endingAyahNumber,
    };
  }

  factory SurahBoundriesInParahModel.fromMap(Map<String, dynamic> map) {
    return SurahBoundriesInParahModel(
      surahNumber: map['surahNumber'] as int,
      startingAyahNumber: map['startingAyahNumber'] as int,
      endingAyahNumber: map['endingAyahNumber'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SurahBoundriesInParahModel.fromJson(String source) =>
      SurahBoundriesInParahModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'SurahBoundriesInParahModel(surahNumber: $surahNumber, startingAyahNumber: $startingAyahNumber, endingAyahNumber: $endingAyahNumber)';

  @override
  bool operator ==(covariant SurahBoundriesInParahModel other) {
    if (identical(this, other)) return true;

    return other.surahNumber == surahNumber &&
        other.startingAyahNumber == startingAyahNumber &&
        other.endingAyahNumber == endingAyahNumber;
  }

  @override
  int get hashCode =>
      surahNumber.hashCode ^
      startingAyahNumber.hashCode ^
      endingAyahNumber.hashCode;
}

List<SurahBoundriesInParahModel> firstParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 1, startingAyahNumber: 1, endingAyahNumber: 7),
  SurahBoundriesInParahModel(
      surahNumber: 2, startingAyahNumber: 1, endingAyahNumber: 141)
];

List<SurahBoundriesInParahModel> secondParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 2, startingAyahNumber: 142, endingAyahNumber: 252),
];

List<SurahBoundriesInParahModel> thirdParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 2, startingAyahNumber: 253, endingAyahNumber: 286),
  SurahBoundriesInParahModel(
      surahNumber: 3, startingAyahNumber: 1, endingAyahNumber: 91)
];

List<SurahBoundriesInParahModel> forthParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 3, startingAyahNumber: 92, endingAyahNumber: 200),
  SurahBoundriesInParahModel(
      surahNumber: 4, startingAyahNumber: 1, endingAyahNumber: 23)
];

List<SurahBoundriesInParahModel> fifthParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 4, startingAyahNumber: 24, endingAyahNumber: 147)
];

List<SurahBoundriesInParahModel> sixthParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 4, startingAyahNumber: 148, endingAyahNumber: 176),
  SurahBoundriesInParahModel(
      surahNumber: 5, startingAyahNumber: 1, endingAyahNumber: 82)
];

List<SurahBoundriesInParahModel> seventhParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 5, startingAyahNumber: 83, endingAyahNumber: 120),
  SurahBoundriesInParahModel(
      surahNumber: 6, startingAyahNumber: 1, endingAyahNumber: 110)
];

List<SurahBoundriesInParahModel> eighthParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 6, startingAyahNumber: 111, endingAyahNumber: 165),
  SurahBoundriesInParahModel(
      surahNumber: 7, startingAyahNumber: 1, endingAyahNumber: 87)
];

List<SurahBoundriesInParahModel> ninthParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 7, startingAyahNumber: 88, endingAyahNumber: 206),
  SurahBoundriesInParahModel(
      surahNumber: 8, startingAyahNumber: 1, endingAyahNumber: 40)
];

List<SurahBoundriesInParahModel> tenthParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 8, startingAyahNumber: 41, endingAyahNumber: 75),
  SurahBoundriesInParahModel(
      surahNumber: 9, startingAyahNumber: 1, endingAyahNumber: 93)
];

List<SurahBoundriesInParahModel> eleventhParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 9, startingAyahNumber: 94, endingAyahNumber: 129),
  SurahBoundriesInParahModel(
      surahNumber: 10, startingAyahNumber: 1, endingAyahNumber: 109),
  SurahBoundriesInParahModel(
      surahNumber: 11, startingAyahNumber: 1, endingAyahNumber: 5)
];

List<SurahBoundriesInParahModel> twelvethParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 11, startingAyahNumber: 6, endingAyahNumber: 123),
  SurahBoundriesInParahModel(
      surahNumber: 12, startingAyahNumber: 1, endingAyahNumber: 52),
];

List<SurahBoundriesInParahModel> thirteenthParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 12, startingAyahNumber: 53, endingAyahNumber: 111),
  SurahBoundriesInParahModel(
      surahNumber: 13, startingAyahNumber: 1, endingAyahNumber: 43),
  SurahBoundriesInParahModel(
      surahNumber: 14, startingAyahNumber: 1, endingAyahNumber: 52),
  SurahBoundriesInParahModel(
      surahNumber: 15, startingAyahNumber: 1, endingAyahNumber: 1),
];

List<SurahBoundriesInParahModel> forteenParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 15, startingAyahNumber: 2, endingAyahNumber: 99),
  SurahBoundriesInParahModel(
      surahNumber: 16, startingAyahNumber: 1, endingAyahNumber: 128),
];

List<SurahBoundriesInParahModel> fifteenParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 17, startingAyahNumber: 1, endingAyahNumber: 111),
  SurahBoundriesInParahModel(
      surahNumber: 18, startingAyahNumber: 1, endingAyahNumber: 74),
];

List<SurahBoundriesInParahModel> sixteenParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 18, startingAyahNumber: 75, endingAyahNumber: 110),
  SurahBoundriesInParahModel(
      surahNumber: 19, startingAyahNumber: 1, endingAyahNumber: 98),
  SurahBoundriesInParahModel(
      surahNumber: 20, startingAyahNumber: 1, endingAyahNumber: 135),
];

List<SurahBoundriesInParahModel> seventeenParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 21, startingAyahNumber: 1, endingAyahNumber: 112),
  SurahBoundriesInParahModel(
      surahNumber: 22, startingAyahNumber: 1, endingAyahNumber: 78),
];

List<SurahBoundriesInParahModel> eighteenParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 23, startingAyahNumber: 1, endingAyahNumber: 118),
  SurahBoundriesInParahModel(
      surahNumber: 24, startingAyahNumber: 1, endingAyahNumber: 64),
  SurahBoundriesInParahModel(
      surahNumber: 25, startingAyahNumber: 1, endingAyahNumber: 20),
];

List<SurahBoundriesInParahModel> nineteenParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 25, startingAyahNumber: 21, endingAyahNumber: 77),
  SurahBoundriesInParahModel(
      surahNumber: 26, startingAyahNumber: 1, endingAyahNumber: 227),
  SurahBoundriesInParahModel(
      surahNumber: 27, startingAyahNumber: 1, endingAyahNumber: 59),
];

List<SurahBoundriesInParahModel> twentyParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 27, startingAyahNumber: 60, endingAyahNumber: 93),
  SurahBoundriesInParahModel(
      surahNumber: 28, startingAyahNumber: 1, endingAyahNumber: 88),
  SurahBoundriesInParahModel(
      surahNumber: 29, startingAyahNumber: 1, endingAyahNumber: 44),
];

List<SurahBoundriesInParahModel> twentyOneParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 29, startingAyahNumber: 45, endingAyahNumber: 69),
  SurahBoundriesInParahModel(
      surahNumber: 30, startingAyahNumber: 1, endingAyahNumber: 60),
  SurahBoundriesInParahModel(
      surahNumber: 31, startingAyahNumber: 1, endingAyahNumber: 34),
  SurahBoundriesInParahModel(
      surahNumber: 32, startingAyahNumber: 1, endingAyahNumber: 30),
  SurahBoundriesInParahModel(
      surahNumber: 33, startingAyahNumber: 1, endingAyahNumber: 30),
];

List<SurahBoundriesInParahModel> twentyTwoParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 33, startingAyahNumber: 31, endingAyahNumber: 73),
  SurahBoundriesInParahModel(
      surahNumber: 34, startingAyahNumber: 1, endingAyahNumber: 54),
  SurahBoundriesInParahModel(
      surahNumber: 35, startingAyahNumber: 1, endingAyahNumber: 45),
  SurahBoundriesInParahModel(
      surahNumber: 36, startingAyahNumber: 1, endingAyahNumber: 21),
];

List<SurahBoundriesInParahModel> twentyThreeParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 36, startingAyahNumber: 22, endingAyahNumber: 83),
  SurahBoundriesInParahModel(
      surahNumber: 37, startingAyahNumber: 1, endingAyahNumber: 182),
  SurahBoundriesInParahModel(
      surahNumber: 38, startingAyahNumber: 1, endingAyahNumber: 88),
  SurahBoundriesInParahModel(
      surahNumber: 39, startingAyahNumber: 1, endingAyahNumber: 31),
];

List<SurahBoundriesInParahModel> twentyFourParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 39, startingAyahNumber: 32, endingAyahNumber: 75),
  SurahBoundriesInParahModel(
      surahNumber: 40, startingAyahNumber: 1, endingAyahNumber: 85),
  SurahBoundriesInParahModel(
      surahNumber: 41, startingAyahNumber: 1, endingAyahNumber: 46),
];

List<SurahBoundriesInParahModel> twentyFiveParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 41, startingAyahNumber: 47, endingAyahNumber: 54),
  SurahBoundriesInParahModel(
      surahNumber: 42, startingAyahNumber: 1, endingAyahNumber: 53),
  SurahBoundriesInParahModel(
      surahNumber: 43, startingAyahNumber: 1, endingAyahNumber: 89),
  SurahBoundriesInParahModel(
      surahNumber: 44, startingAyahNumber: 1, endingAyahNumber: 59),
  SurahBoundriesInParahModel(
      surahNumber: 45, startingAyahNumber: 1, endingAyahNumber: 37),
];

List<SurahBoundriesInParahModel> twentySixParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 46, startingAyahNumber: 1, endingAyahNumber: 35),
  SurahBoundriesInParahModel(
      surahNumber: 47, startingAyahNumber: 1, endingAyahNumber: 38),
  SurahBoundriesInParahModel(
      surahNumber: 48, startingAyahNumber: 1, endingAyahNumber: 29),
  SurahBoundriesInParahModel(
      surahNumber: 49, startingAyahNumber: 1, endingAyahNumber: 18),
  SurahBoundriesInParahModel(
      surahNumber: 50, startingAyahNumber: 1, endingAyahNumber: 45),
  SurahBoundriesInParahModel(
      surahNumber: 51, startingAyahNumber: 1, endingAyahNumber: 30),
];

List<SurahBoundriesInParahModel> twentySevenParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 51, startingAyahNumber: 31, endingAyahNumber: 60),
  SurahBoundriesInParahModel(
      surahNumber: 52, startingAyahNumber: 1, endingAyahNumber: 49),
  SurahBoundriesInParahModel(
      surahNumber: 53, startingAyahNumber: 1, endingAyahNumber: 62),
  SurahBoundriesInParahModel(
      surahNumber: 54, startingAyahNumber: 1, endingAyahNumber: 55),
  SurahBoundriesInParahModel(
      surahNumber: 55, startingAyahNumber: 1, endingAyahNumber: 78),
  SurahBoundriesInParahModel(
      surahNumber: 56, startingAyahNumber: 1, endingAyahNumber: 96),
  SurahBoundriesInParahModel(
      surahNumber: 57, startingAyahNumber: 1, endingAyahNumber: 29),
];

List<SurahBoundriesInParahModel> twentyEightParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 58, startingAyahNumber: 1, endingAyahNumber: 22),
  SurahBoundriesInParahModel(
      surahNumber: 59, startingAyahNumber: 1, endingAyahNumber: 24),
  SurahBoundriesInParahModel(
      surahNumber: 60, startingAyahNumber: 1, endingAyahNumber: 13),
  SurahBoundriesInParahModel(
      surahNumber: 61, startingAyahNumber: 1, endingAyahNumber: 14),
  SurahBoundriesInParahModel(
      surahNumber: 62, startingAyahNumber: 1, endingAyahNumber: 11),
  SurahBoundriesInParahModel(
      surahNumber: 63, startingAyahNumber: 1, endingAyahNumber: 11),
  SurahBoundriesInParahModel(
      surahNumber: 64, startingAyahNumber: 1, endingAyahNumber: 18),
  SurahBoundriesInParahModel(
      surahNumber: 65, startingAyahNumber: 1, endingAyahNumber: 12),
  SurahBoundriesInParahModel(
      surahNumber: 66, startingAyahNumber: 1, endingAyahNumber: 12),
];

List<SurahBoundriesInParahModel> twentyNineParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 67, startingAyahNumber: 1, endingAyahNumber: 30),
  SurahBoundriesInParahModel(
      surahNumber: 68, startingAyahNumber: 1, endingAyahNumber: 52),
  SurahBoundriesInParahModel(
      surahNumber: 69, startingAyahNumber: 1, endingAyahNumber: 52),
  SurahBoundriesInParahModel(
      surahNumber: 70, startingAyahNumber: 1, endingAyahNumber: 44),
  SurahBoundriesInParahModel(
      surahNumber: 71, startingAyahNumber: 1, endingAyahNumber: 28),
  SurahBoundriesInParahModel(
      surahNumber: 72, startingAyahNumber: 1, endingAyahNumber: 28),
  SurahBoundriesInParahModel(
      surahNumber: 73, startingAyahNumber: 1, endingAyahNumber: 20),
  SurahBoundriesInParahModel(
      surahNumber: 74, startingAyahNumber: 1, endingAyahNumber: 56),
  SurahBoundriesInParahModel(
      surahNumber: 75, startingAyahNumber: 1, endingAyahNumber: 40),
  SurahBoundriesInParahModel(
      surahNumber: 76, startingAyahNumber: 1, endingAyahNumber: 31),
  SurahBoundriesInParahModel(
      surahNumber: 77, startingAyahNumber: 1, endingAyahNumber: 50),
];

List<SurahBoundriesInParahModel> thirtyParahWiseQuranTranslationBoundries =
    <SurahBoundriesInParahModel>[
  SurahBoundriesInParahModel(
      surahNumber: 78, startingAyahNumber: 1, endingAyahNumber: 40),
  SurahBoundriesInParahModel(
      surahNumber: 79, startingAyahNumber: 1, endingAyahNumber: 46),
  SurahBoundriesInParahModel(
      surahNumber: 80, startingAyahNumber: 1, endingAyahNumber: 42),
  SurahBoundriesInParahModel(
      surahNumber: 81, startingAyahNumber: 1, endingAyahNumber: 29),
  SurahBoundriesInParahModel(
      surahNumber: 82, startingAyahNumber: 1, endingAyahNumber: 19),
  SurahBoundriesInParahModel(
      surahNumber: 83, startingAyahNumber: 1, endingAyahNumber: 36),
  SurahBoundriesInParahModel(
      surahNumber: 84, startingAyahNumber: 1, endingAyahNumber: 25),
  SurahBoundriesInParahModel(
      surahNumber: 85, startingAyahNumber: 1, endingAyahNumber: 22),
  SurahBoundriesInParahModel(
      surahNumber: 86, startingAyahNumber: 1, endingAyahNumber: 17),
  SurahBoundriesInParahModel(
      surahNumber: 87, startingAyahNumber: 1, endingAyahNumber: 19),
  SurahBoundriesInParahModel(
      surahNumber: 88, startingAyahNumber: 1, endingAyahNumber: 26),
  SurahBoundriesInParahModel(
      surahNumber: 89, startingAyahNumber: 1, endingAyahNumber: 30),
  SurahBoundriesInParahModel(
      surahNumber: 90, startingAyahNumber: 1, endingAyahNumber: 20),
  SurahBoundriesInParahModel(
      surahNumber: 91, startingAyahNumber: 1, endingAyahNumber: 15),
  SurahBoundriesInParahModel(
      surahNumber: 92, startingAyahNumber: 1, endingAyahNumber: 20),
  SurahBoundriesInParahModel(
      surahNumber: 93, startingAyahNumber: 1, endingAyahNumber: 11),
  SurahBoundriesInParahModel(
      surahNumber: 94, startingAyahNumber: 1, endingAyahNumber: 8),
  SurahBoundriesInParahModel(
      surahNumber: 95, startingAyahNumber: 1, endingAyahNumber: 8),
  SurahBoundriesInParahModel(
      surahNumber: 96, startingAyahNumber: 1, endingAyahNumber: 19),
  SurahBoundriesInParahModel(
      surahNumber: 97, startingAyahNumber: 1, endingAyahNumber: 5),
  SurahBoundriesInParahModel(
      surahNumber: 98, startingAyahNumber: 1, endingAyahNumber: 8),
  SurahBoundriesInParahModel(
      surahNumber: 99, startingAyahNumber: 1, endingAyahNumber: 8),
  SurahBoundriesInParahModel(
      surahNumber: 100, startingAyahNumber: 1, endingAyahNumber: 11),
  SurahBoundriesInParahModel(
      surahNumber: 101, startingAyahNumber: 1, endingAyahNumber: 11),
  SurahBoundriesInParahModel(
      surahNumber: 102, startingAyahNumber: 1, endingAyahNumber: 8),
  SurahBoundriesInParahModel(
      surahNumber: 103, startingAyahNumber: 1, endingAyahNumber: 3),
  SurahBoundriesInParahModel(
      surahNumber: 104, startingAyahNumber: 1, endingAyahNumber: 9),
  SurahBoundriesInParahModel(
      surahNumber: 105, startingAyahNumber: 1, endingAyahNumber: 5),
  SurahBoundriesInParahModel(
      surahNumber: 106, startingAyahNumber: 1, endingAyahNumber: 4),
  SurahBoundriesInParahModel(
      surahNumber: 107, startingAyahNumber: 1, endingAyahNumber: 7),
  SurahBoundriesInParahModel(
      surahNumber: 108, startingAyahNumber: 1, endingAyahNumber: 3),
  SurahBoundriesInParahModel(
      surahNumber: 109, startingAyahNumber: 1, endingAyahNumber: 6),
  SurahBoundriesInParahModel(
      surahNumber: 110, startingAyahNumber: 1, endingAyahNumber: 3),
  SurahBoundriesInParahModel(
      surahNumber: 111, startingAyahNumber: 1, endingAyahNumber: 5),
  SurahBoundriesInParahModel(
      surahNumber: 112, startingAyahNumber: 1, endingAyahNumber: 4),
  SurahBoundriesInParahModel(
      surahNumber: 113, startingAyahNumber: 1, endingAyahNumber: 5),
  SurahBoundriesInParahModel(
      surahNumber: 114, startingAyahNumber: 1, endingAyahNumber: 6),
];

List<List<SurahBoundriesInParahModel>> completeQuranTranslationDataBoundries = [
  firstParahWiseQuranTranslationBoundries,
  secondParahWiseQuranTranslationBoundries,
  thirdParahWiseQuranTranslationBoundries,
  forthParahWiseQuranTranslationBoundries,
  fifthParahWiseQuranTranslationBoundries,
  sixthParahWiseQuranTranslationBoundries,
  seventhParahWiseQuranTranslationBoundries,
  eighthParahWiseQuranTranslationBoundries,
  ninthParahWiseQuranTranslationBoundries,
  tenthParahWiseQuranTranslationBoundries,
  eleventhParahWiseQuranTranslationBoundries,
  twelvethParahWiseQuranTranslationBoundries,
  thirteenthParahWiseQuranTranslationBoundries,
  forteenParahWiseQuranTranslationBoundries,
  fifteenParahWiseQuranTranslationBoundries,
  sixteenParahWiseQuranTranslationBoundries,
  seventeenParahWiseQuranTranslationBoundries,
  eighteenParahWiseQuranTranslationBoundries,
  nineteenParahWiseQuranTranslationBoundries,
  twentyParahWiseQuranTranslationBoundries,
  twentyOneParahWiseQuranTranslationBoundries,
  twentyTwoParahWiseQuranTranslationBoundries,
  twentyThreeParahWiseQuranTranslationBoundries,
  twentyFourParahWiseQuranTranslationBoundries,
  twentyFiveParahWiseQuranTranslationBoundries,
  twentySixParahWiseQuranTranslationBoundries,
  twentySevenParahWiseQuranTranslationBoundries,
  twentyEightParahWiseQuranTranslationBoundries,
  twentyNineParahWiseQuranTranslationBoundries,
  thirtyParahWiseQuranTranslationBoundries
];

List<String> allParahQuranicVersesTranslationsList = [];

List<String> fetchParahWiseQuranTranslation(
    {required CompleteQuranTranslationModel completeQuranTranslationModel,
    required int parahNumber}) {
  List<SurahBoundriesInParahModel> currentParaBoundriesData =
      completeQuranTranslationDataBoundries[parahNumber - 1];

  for (var parahWiseQuranBoundriesIndex = 0;
      parahWiseQuranBoundriesIndex < currentParaBoundriesData.length;
      parahWiseQuranBoundriesIndex++) {
    SurahBoundriesInParahModel oneSurahDataModel =
        currentParaBoundriesData[parahWiseQuranBoundriesIndex];

    for (var currentAyahNumber = oneSurahDataModel.startingAyahNumber - 1;
        currentAyahNumber <= oneSurahDataModel.endingAyahNumber - 1;
        currentAyahNumber++) {
      String currentAyahText = completeQuranTranslationModel
          .data
          .surahs[oneSurahDataModel.surahNumber - 1]
          .ayahs[currentAyahNumber]
          .text;

      allParahQuranicVersesTranslationsList.add(currentAyahText);
    }
  }

  developer.log(
      "Total Verses in First Parah is : ${allParahQuranicVersesTranslationsList.length}");

  developer
      .log("First Verse Text is : ${allParahQuranicVersesTranslationsList[0]}");

  developer.log(
      "Last Verse Text is : ${allParahQuranicVersesTranslationsList.last}");

  return allParahQuranicVersesTranslationsList;
}
