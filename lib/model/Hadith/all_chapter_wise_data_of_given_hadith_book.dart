import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_chapters_data.dart';

class AllChapterWiseDataOfGivenHadithBookModel {
  List<String> allChapterNamesOfGivenHadithBook;
  AllChapterWiseDataOfGivenHadithBookModel(
      {required this.allChapterNamesOfGivenHadithBook,
      required this.allChapterWiseBoundariesOfGivenHadithBook});
  List<ChapterWiseHadithBoundriesDataModel>
      allChapterWiseBoundariesOfGivenHadithBook;

  AllChapterWiseDataOfGivenHadithBookModel copyWith({
    List<String>? allChapterNamesOfGivenHadithBook,
  }) {
    return AllChapterWiseDataOfGivenHadithBookModel(
        allChapterNamesOfGivenHadithBook: allChapterNamesOfGivenHadithBook ??
            this.allChapterNamesOfGivenHadithBook,
        allChapterWiseBoundariesOfGivenHadithBook:
            allChapterWiseBoundariesOfGivenHadithBook ??
                this.allChapterWiseBoundariesOfGivenHadithBook);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allChapterNamesOfGivenHadithBook': allChapterNamesOfGivenHadithBook,
      'allChapterWiseBoundariesOfGivenHadithBook':
          allChapterWiseBoundariesOfGivenHadithBook
    };
  }

  factory AllChapterWiseDataOfGivenHadithBookModel.fromMap(
      Map<String, dynamic> map) {
    return AllChapterWiseDataOfGivenHadithBookModel(
        allChapterNamesOfGivenHadithBook: List<String>.from(
            (map['allChapterNamesOfGivenHadithBook'] as List<String>)),
        allChapterWiseBoundariesOfGivenHadithBook:
            List<ChapterWiseHadithBoundriesDataModel>.from(
                ((map['allChapterWiseBoundariesOfGivenHadithBook']
                    as List<ChapterWiseHadithBoundriesDataModel>))));
  }

  String toJson() => json.encode(toMap());

  factory AllChapterWiseDataOfGivenHadithBookModel.fromJson(String source) =>
      AllChapterWiseDataOfGivenHadithBookModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AllChapterWiseDataOfGivenHadithBookModel(allChapterNamesOfGivenHadithBook: $allChapterNamesOfGivenHadithBook , allChapterWiseBoundariesOfGivenHadithBook : $allChapterWiseBoundariesOfGivenHadithBook)';

  @override
  bool operator ==(covariant AllChapterWiseDataOfGivenHadithBookModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.allChapterNamesOfGivenHadithBook,
        allChapterNamesOfGivenHadithBook);
  }

  @override
  int get hashCode => allChapterNamesOfGivenHadithBook.hashCode;
}
