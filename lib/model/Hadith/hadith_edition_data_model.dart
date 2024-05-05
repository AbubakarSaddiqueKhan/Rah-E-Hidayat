import 'dart:convert';

import 'package:flutter/foundation.dart';

class HadithEditionDataModel {
  Metadata metadata;
  List<Hadith> hadiths;
  HadithEditionDataModel({
    required this.metadata,
    required this.hadiths,
  });

  HadithEditionDataModel copyWith({
    Metadata? metadata,
    List<Hadith>? hadiths,
  }) {
    return HadithEditionDataModel(
      metadata: metadata ?? this.metadata,
      hadiths: hadiths ?? this.hadiths,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': metadata.toMap(),
      'hadiths': hadiths.map((x) => x.toMap()).toList(),
    };
  }

  factory HadithEditionDataModel.fromMap(Map<String, dynamic> map) {
    return HadithEditionDataModel(
      metadata: Metadata.fromMap(map['metadata'] as Map<String, dynamic>),
      hadiths: List<Hadith>.from(
        (map['hadiths'] as List<dynamic>).map<Hadith>(
          (x) => Hadith.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory HadithEditionDataModel.fromJson(String source) =>
      HadithEditionDataModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AbuDawoodUrduTranslatedHadithModel(metadata: $metadata, hadiths: $hadiths)';

  @override
  bool operator ==(covariant HadithEditionDataModel other) {
    if (identical(this, other)) return true;

    return other.metadata == metadata && listEquals(other.hadiths, hadiths);
  }

  @override
  int get hashCode => metadata.hashCode ^ hadiths.hashCode;
}

class Hadith {
  num hadithnumber;
  dynamic arabicnumber;
  String text;
  List<Grade> grades;
  Reference reference;
  Hadith({
    required this.hadithnumber,
    required this.arabicnumber,
    required this.text,
    required this.grades,
    required this.reference,
  });

  Hadith copyWith({
    num? hadithnumber,
    dynamic arabicnumber,
    String? text,
    List<Grade>? grades,
    Reference? reference,
  }) {
    return Hadith(
      hadithnumber: hadithnumber ?? this.hadithnumber,
      arabicnumber: arabicnumber ?? this.arabicnumber,
      text: text ?? this.text,
      grades: grades ?? this.grades,
      reference: reference ?? this.reference,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadithnumber': hadithnumber,
      'arabicnumber': arabicnumber,
      'text': text,
      'grades': grades.map((x) => x.toMap()).toList(),
      'reference': reference.toMap(),
    };
  }

  factory Hadith.fromMap(Map<String, dynamic> map) {
    return Hadith(
      hadithnumber: map['hadithnumber'] as num,
      arabicnumber: map['arabicnumber'] as dynamic,
      text: map['text'] as String,
      grades: List<Grade>.from(
        (map['grades'] as List<dynamic>).map<Grade>(
          (x) => Grade.fromMap(x as Map<String, dynamic>),
        ),
      ),
      reference: Reference.fromMap(map['reference'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Hadith.fromJson(String source) =>
      Hadith.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Hadith(hadithnumber: $hadithnumber, arabicnumber: $arabicnumber, text: $text, grades: $grades, reference: $reference)';
  }

  @override
  bool operator ==(covariant Hadith other) {
    if (identical(this, other)) return true;

    return other.hadithnumber == hadithnumber &&
        other.arabicnumber == arabicnumber &&
        other.text == text &&
        listEquals(other.grades, grades) &&
        other.reference == reference;
  }

  @override
  int get hashCode {
    return hadithnumber.hashCode ^
        arabicnumber.hashCode ^
        text.hashCode ^
        grades.hashCode ^
        reference.hashCode;
  }
}

class Grade {
  String name;
  String grade;
  Grade({
    required this.name,
    required this.grade,
  });

  Grade copyWith({
    String? name,
    String? grade,
  }) {
    return Grade(
      name: name ?? this.name,
      grade: grade ?? this.grade,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'grade': grade,
    };
  }

  factory Grade.fromMap(Map<String, dynamic> map) {
    return Grade(
      name: map['name'] as String,
      grade: map['grade'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Grade.fromJson(String source) =>
      Grade.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Grade(name: $name, grade: $grade)';

  @override
  bool operator ==(covariant Grade other) {
    if (identical(this, other)) return true;

    return other.name == name && other.grade == grade;
  }

  @override
  int get hashCode => name.hashCode ^ grade.hashCode;
}

class Reference {
  int? book;
  int? hadith;
  Reference({
    this.book,
    this.hadith,
  });

  Reference copyWith({
    int? book,
    int? hadith,
  }) {
    return Reference(
      book: book ?? this.book,
      hadith: hadith ?? this.hadith,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'book': book,
      'hadith': hadith,
    };
  }

  factory Reference.fromMap(Map<String, dynamic> map) {
    return Reference(
      book: map['book'] != null ? map['book'] as int : null,
      hadith: map['hadith'] != null ? map['hadith'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Reference.fromJson(String source) =>
      Reference.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Reference(book: $book, hadith: $hadith)';

  @override
  bool operator ==(covariant Reference other) {
    if (identical(this, other)) return true;

    return other.book == book && other.hadith == hadith;
  }

  @override
  int get hashCode => book.hashCode ^ hadith.hashCode;
}

class Metadata {
  String? name;
  Map<String, String> sections;
  dynamic sectionDetails;
  Metadata({
    this.name,
    required this.sections,
    required this.sectionDetails,
  });

  Metadata copyWith({
    String? name,
    Map<String, String>? sections,
    dynamic sectionDetails,
  }) {
    return Metadata(
      name: name ?? this.name,
      sections: sections ?? this.sections,
      sectionDetails: sectionDetails ?? this.sectionDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sections': sections,
      'sectionDetails': sectionDetails,
    };
  }

  factory Metadata.fromMap(Map<String, dynamic> map) {
    return Metadata(
        name: map['name'] != null ? map['name'] as String : null,
        sections:
            Map<String, String>.from((map['sections'] as Map<String, dynamic>)),
        sectionDetails: map['sectionDetails'] as dynamic);
  }

  String toJson() => json.encode(toMap());

  factory Metadata.fromJson(String source) =>
      Metadata.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Metadata(name: $name, sections: $sections, sectionDetails: $sectionDetails)';

  @override
  bool operator ==(covariant Metadata other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        mapEquals(other.sections, sections) &&
        mapEquals(other.sectionDetails, sectionDetails);
  }

  @override
  int get hashCode =>
      name.hashCode ^ sections.hashCode ^ sectionDetails.hashCode;
}

class SectionDetail {
  int hadithnumberFirst;
  int hadithnumberLast;
  int arabicnumberFirst;
  int arabicnumberLast;
  SectionDetail({
    required this.hadithnumberFirst,
    required this.hadithnumberLast,
    required this.arabicnumberFirst,
    required this.arabicnumberLast,
  });

  SectionDetail copyWith({
    int? hadithnumberFirst,
    int? hadithnumberLast,
    int? arabicnumberFirst,
    int? arabicnumberLast,
  }) {
    return SectionDetail(
      hadithnumberFirst: hadithnumberFirst ?? this.hadithnumberFirst,
      hadithnumberLast: hadithnumberLast ?? this.hadithnumberLast,
      arabicnumberFirst: arabicnumberFirst ?? this.arabicnumberFirst,
      arabicnumberLast: arabicnumberLast ?? this.arabicnumberLast,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadithnumberFirst': hadithnumberFirst,
      'hadithnumberLast': hadithnumberLast,
      'arabicnumberFirst': arabicnumberFirst,
      'arabicnumberLast': arabicnumberLast,
    };
  }

  factory SectionDetail.fromMap(Map<String, dynamic> map) {
    return SectionDetail(
      hadithnumberFirst: map['hadithnumberFirst'] as int,
      hadithnumberLast: map['hadithnumberLast'] as int,
      arabicnumberFirst: map['arabicnumberFirst'] as int,
      arabicnumberLast: map['arabicnumberLast'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SectionDetail.fromJson(String source) =>
      SectionDetail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SectionDetail(hadithnumberFirst: $hadithnumberFirst, hadithnumberLast: $hadithnumberLast, arabicnumberFirst: $arabicnumberFirst, arabicnumberLast: $arabicnumberLast)';
  }

  @override
  bool operator ==(covariant SectionDetail other) {
    if (identical(this, other)) return true;

    return other.hadithnumberFirst == hadithnumberFirst &&
        other.hadithnumberLast == hadithnumberLast &&
        other.arabicnumberFirst == arabicnumberFirst &&
        other.arabicnumberLast == arabicnumberLast;
  }

  @override
  int get hashCode {
    return hadithnumberFirst.hashCode ^
        hadithnumberLast.hashCode ^
        arabicnumberFirst.hashCode ^
        arabicnumberLast.hashCode;
  }
}
