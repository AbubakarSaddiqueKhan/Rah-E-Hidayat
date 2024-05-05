import 'dart:convert';

import 'package:flutter/foundation.dart';

class SimpleArabicQuranParahWise {
  int code;
  String status;
  Data data;
  SimpleArabicQuranParahWise({
    required this.code,
    required this.status,
    required this.data,
  });

  SimpleArabicQuranParahWise copyWith({
    int? code,
    String? status,
    Data? data,
  }) {
    return SimpleArabicQuranParahWise(
      code: code ?? this.code,
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'status': status,
      'data': data.toMap(),
    };
  }

  factory SimpleArabicQuranParahWise.fromMap(Map<String, dynamic> map) {
    return SimpleArabicQuranParahWise(
      code: map['code'] as int,
      status: map['status'] as String,
      data: Data.fromMap(map['data'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory SimpleArabicQuranParahWise.fromJson(String source) =>
      SimpleArabicQuranParahWise.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'SimpleArabicQuranParahWise(code: $code, status: $status, data: $data)';

  @override
  bool operator ==(covariant SimpleArabicQuranParahWise other) {
    if (identical(this, other)) return true;

    return other.code == code && other.status == status && other.data == data;
  }

  @override
  int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
}

class Data {
  int number;
  List<Ayahs> ayahs;

  Edition edition;
  Data({
    required this.number,
    required this.ayahs,
    required this.edition,
  });

  Data copyWith({
    int? number,
    List<Ayahs>? ayahs,
    Edition? edition,
  }) {
    return Data(
      number: number ?? this.number,
      ayahs: ayahs ?? this.ayahs,
      edition: edition ?? this.edition,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'ayahs': ayahs.map((x) => x.toMap()).toList(),
      'edition': edition.toMap(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      number: map['number'] as int,
      ayahs: List<Ayahs>.from(
        (map['ayahs'] as List<dynamic>).map<Ayahs>(
          (x) => Ayahs.fromMap(x as Map<String, dynamic>),
        ),
      ),
      edition: Edition.fromMap(map['edition'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Data(number: $number, ayahs: $ayahs,  edition: $edition)';
  }

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;

    return other.number == number &&
        listEquals(other.ayahs, ayahs) &&
        other.edition == edition;
  }

  @override
  int get hashCode {
    return number.hashCode ^ ayahs.hashCode ^ edition.hashCode;
  }
}

class Ayahs {
  int number;
  String text;
  Surah surah;
  int numberInSurah;
  int juz;
  int manzil;
  int page;
  int ruku;
  int hizbQuarter;
  dynamic sajda;
  Ayahs({
    required this.number,
    required this.text,
    required this.surah,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });

  Ayahs copyWith({
    int? number,
    String? text,
    Surah? surah,
    int? numberInSurah,
    int? juz,
    int? manzil,
    int? page,
    int? ruku,
    int? hizbQuarter,
    bool? sajda,
  }) {
    return Ayahs(
      number: number ?? this.number,
      text: text ?? this.text,
      surah: surah ?? this.surah,
      numberInSurah: numberInSurah ?? this.numberInSurah,
      juz: juz ?? this.juz,
      manzil: manzil ?? this.manzil,
      page: page ?? this.page,
      ruku: ruku ?? this.ruku,
      hizbQuarter: hizbQuarter ?? this.hizbQuarter,
      sajda: sajda ?? this.sajda,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'text': text,
      'surah': surah.toMap(),
      'numberInSurah': numberInSurah,
      'juz': juz,
      'manzil': manzil,
      'page': page,
      'ruku': ruku,
      'hizbQuarter': hizbQuarter,
      'sajda': sajda,
    };
  }

  factory Ayahs.fromMap(Map<String, dynamic> map) {
    return Ayahs(
      number: map['number'] as int,
      text: map['text'] as String,
      surah: Surah.fromMap(map['surah'] as Map<String, dynamic>),
      numberInSurah: map['numberInSurah'] as int,
      juz: map['juz'] as int,
      manzil: map['manzil'] as int,
      page: map['page'] as int,
      ruku: map['ruku'] as int,
      hizbQuarter: map['hizbQuarter'] as int,
      sajda: map['sajda'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ayahs.fromJson(String source) =>
      Ayahs.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Ayahs(number: $number, text: $text, surah: $surah, numberInSurah: $numberInSurah, juz: $juz, manzil: $manzil, page: $page, ruku: $ruku, hizbQuarter: $hizbQuarter, sajda: $sajda)';
  }

  @override
  bool operator ==(covariant Ayahs other) {
    if (identical(this, other)) return true;

    return other.number == number &&
        other.text == text &&
        other.surah == surah &&
        other.numberInSurah == numberInSurah &&
        other.juz == juz &&
        other.manzil == manzil &&
        other.page == page &&
        other.ruku == ruku &&
        other.hizbQuarter == hizbQuarter &&
        other.sajda == sajda;
  }

  @override
  int get hashCode {
    return number.hashCode ^
        text.hashCode ^
        surah.hashCode ^
        numberInSurah.hashCode ^
        juz.hashCode ^
        manzil.hashCode ^
        page.hashCode ^
        ruku.hashCode ^
        hizbQuarter.hashCode ^
        sajda.hashCode;
  }
}

class Surah {
  int number;
  String name;
  String englishName;
  String englishNameTranslation;
  String revelationType;
  int numberOfAyahs;
  Surah({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    required this.numberOfAyahs,
  });

  Surah copyWith({
    int? number,
    String? name,
    String? englishName,
    String? englishNameTranslation,
    String? revelationType,
    int? numberOfAyahs,
  }) {
    return Surah(
      number: number ?? this.number,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      englishNameTranslation:
          englishNameTranslation ?? this.englishNameTranslation,
      revelationType: revelationType ?? this.revelationType,
      numberOfAyahs: numberOfAyahs ?? this.numberOfAyahs,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'name': name,
      'englishName': englishName,
      'englishNameTranslation': englishNameTranslation,
      'revelationType': revelationType,
      'numberOfAyahs': numberOfAyahs,
    };
  }

  factory Surah.fromMap(Map<String, dynamic> map) {
    return Surah(
      number: map['number'] as int,
      name: map['name'] as String,
      englishName: map['englishName'] as String,
      englishNameTranslation: map['englishNameTranslation'] as String,
      revelationType: map['revelationType'] as String,
      numberOfAyahs: map['numberOfAyahs'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Surah.fromJson(String source) =>
      Surah.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Surah(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, numberOfAyahs: $numberOfAyahs)';
  }

  @override
  bool operator ==(covariant Surah other) {
    if (identical(this, other)) return true;

    return other.number == number &&
        other.name == name &&
        other.englishName == englishName &&
        other.englishNameTranslation == englishNameTranslation &&
        other.revelationType == revelationType &&
        other.numberOfAyahs == numberOfAyahs;
  }

  @override
  int get hashCode {
    return number.hashCode ^
        name.hashCode ^
        englishName.hashCode ^
        englishNameTranslation.hashCode ^
        revelationType.hashCode ^
        numberOfAyahs.hashCode;
  }
}

class Edition {
  String identifier;
  String language;
  String name;
  String englishName;
  String format;
  String type;
  String direction;
  Edition({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
    required this.direction,
  });

  Edition copyWith({
    String? identifier,
    String? language,
    String? name,
    String? englishName,
    String? format,
    String? type,
    String? direction,
  }) {
    return Edition(
      identifier: identifier ?? this.identifier,
      language: language ?? this.language,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      format: format ?? this.format,
      type: type ?? this.type,
      direction: direction ?? this.direction,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'language': language,
      'name': name,
      'englishName': englishName,
      'format': format,
      'type': type,
      'direction': direction,
    };
  }

  factory Edition.fromMap(Map<String, dynamic> map) {
    return Edition(
      identifier: map['identifier'] as String,
      language: map['language'] as String,
      name: map['name'] as String,
      englishName: map['englishName'] as String,
      format: map['format'] as String,
      type: map['type'] as String,
      direction: map['direction'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Edition.fromJson(String source) =>
      Edition.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Edition(identifier: $identifier, language: $language, name: $name, englishName: $englishName, format: $format, type: $type, direction: $direction)';
  }

  @override
  bool operator ==(covariant Edition other) {
    if (identical(this, other)) return true;

    return other.identifier == identifier &&
        other.language == language &&
        other.name == name &&
        other.englishName == englishName &&
        other.format == format &&
        other.type == type &&
        other.direction == direction;
  }

  @override
  int get hashCode {
    return identifier.hashCode ^
        language.hashCode ^
        name.hashCode ^
        englishName.hashCode ^
        format.hashCode ^
        type.hashCode ^
        direction.hashCode;
  }
}
