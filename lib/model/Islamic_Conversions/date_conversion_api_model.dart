import 'dart:convert';

import 'package:flutter/foundation.dart';

class IslamicDateConversionModel {
  int code;
  String status;
  Data data;
  IslamicDateConversionModel({
    required this.code,
    required this.status,
    required this.data,
  });

  IslamicDateConversionModel copyWith({
    int? code,
    String? status,
    Data? data,
  }) {
    return IslamicDateConversionModel(
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

  factory IslamicDateConversionModel.fromMap(Map<String, dynamic> map) {
    return IslamicDateConversionModel(
      code: map['code'] as int,
      status: map['status'] as String,
      data: Data.fromMap(map['data'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory IslamicDateConversionModel.fromJson(String source) =>
      IslamicDateConversionModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DateConversionApiService(code: $code, status: $status, data: $data)';

  @override
  bool operator ==(covariant IslamicDateConversionModel other) {
    if (identical(this, other)) return true;

    return other.code == code && other.status == status && other.data == data;
  }

  @override
  int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
}

class Data {
  Hijri hijri;
  Gregorian gregorian;
  Data({
    required this.hijri,
    required this.gregorian,
  });

  Data copyWith({
    Hijri? hijri,
    Gregorian? gregorian,
  }) {
    return Data(
      hijri: hijri ?? this.hijri,
      gregorian: gregorian ?? this.gregorian,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hijri': hijri.toMap(),
      'gregorian': gregorian.toMap(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      hijri: Hijri.fromMap(map['hijri'] as Map<String, dynamic>),
      gregorian: Gregorian.fromMap(map['gregorian'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Data(hijri: $hijri, gregorian: $gregorian)';

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;

    return other.hijri == hijri && other.gregorian == gregorian;
  }

  @override
  int get hashCode => hijri.hashCode ^ gregorian.hashCode;
}

class Hijri {
  String date;
  String format;
  String day;
  Weekday weekday;
  Month month;
  String year;
  Designation designation;
  List<dynamic> holidays;
  Hijri({
    required this.date,
    required this.format,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
    required this.designation,
    required this.holidays,
  });

  Hijri copyWith({
    String? date,
    String? format,
    String? day,
    Weekday? weekday,
    Month? month,
    String? year,
    Designation? designation,
    List<dynamic>? holidays,
  }) {
    return Hijri(
      date: date ?? this.date,
      format: format ?? this.format,
      day: day ?? this.day,
      weekday: weekday ?? this.weekday,
      month: month ?? this.month,
      year: year ?? this.year,
      designation: designation ?? this.designation,
      holidays: holidays ?? this.holidays,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'format': format,
      'day': day,
      'weekday': weekday.toMap(),
      'month': month.toMap(),
      'year': year,
      'designation': designation.toMap(),
      'holidays': holidays,
    };
  }

  factory Hijri.fromMap(Map<String, dynamic> map) {
    return Hijri(
        date: map['date'] as String,
        format: map['format'] as String,
        day: map['day'] as String,
        weekday: Weekday.fromMap(map['weekday'] as Map<String, dynamic>),
        month: Month.fromMap(map['month'] as Map<String, dynamic>),
        year: map['year'] as String,
        designation:
            Designation.fromMap(map['designation'] as Map<String, dynamic>),
        holidays: List<dynamic>.from(
          (map['holidays'] as List<dynamic>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Hijri.fromJson(String source) =>
      Hijri.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Hijri(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation, holidays: $holidays)';
  }

  @override
  bool operator ==(covariant Hijri other) {
    if (identical(this, other)) return true;

    return other.date == date &&
        other.format == format &&
        other.day == day &&
        other.weekday == weekday &&
        other.month == month &&
        other.year == year &&
        other.designation == designation &&
        listEquals(other.holidays, holidays);
  }

  @override
  int get hashCode {
    return date.hashCode ^
        format.hashCode ^
        day.hashCode ^
        weekday.hashCode ^
        month.hashCode ^
        year.hashCode ^
        designation.hashCode ^
        holidays.hashCode;
  }
}

class Weekday {
  String en;
  String? ar;
  Weekday({
    required this.en,
    required this.ar,
  });

  Weekday copyWith({
    String? en,
    String? ar,
  }) {
    return Weekday(
      en: en ?? this.en,
      ar: ar ?? this.ar,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'en': en,
      'ar': ar,
    };
  }

  factory Weekday.fromMap(Map<String, dynamic> map) {
    return Weekday(
      en: map['en'] as String,
      ar: map['ar'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory Weekday.fromJson(String source) =>
      Weekday.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Weekday(en: $en, ar: $ar)';

  @override
  bool operator ==(covariant Weekday other) {
    if (identical(this, other)) return true;

    return other.en == en && other.ar == ar;
  }

  @override
  int get hashCode => en.hashCode ^ ar.hashCode;
}

class Month {
  int number;
  String en;
  String? ar;
  Month({
    required this.number,
    required this.en,
    required this.ar,
  });

  Month copyWith({
    int? number,
    String? en,
    String? ar,
  }) {
    return Month(
      number: number ?? this.number,
      en: en ?? this.en,
      ar: ar ?? this.ar,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'en': en,
      'ar': ar,
    };
  }

  factory Month.fromMap(Map<String, dynamic> map) {
    return Month(
      number: map['number'] as int,
      en: map['en'] as String,
      ar: map['ar'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory Month.fromJson(String source) =>
      Month.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Month(number: $number, en: $en, ar: $ar)';

  @override
  bool operator ==(covariant Month other) {
    if (identical(this, other)) return true;

    return other.number == number && other.en == en && other.ar == ar;
  }

  @override
  int get hashCode => number.hashCode ^ en.hashCode ^ ar.hashCode;
}

class Designation {
  String abbreviated;
  String expanded;
  Designation({
    required this.abbreviated,
    required this.expanded,
  });

  Designation copyWith({
    String? abbreviated,
    String? expanded,
  }) {
    return Designation(
      abbreviated: abbreviated ?? this.abbreviated,
      expanded: expanded ?? this.expanded,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abbreviated': abbreviated,
      'expanded': expanded,
    };
  }

  factory Designation.fromMap(Map<String, dynamic> map) {
    return Designation(
      abbreviated: map['abbreviated'] as String,
      expanded: map['expanded'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Designation.fromJson(String source) =>
      Designation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Designation(abbreviated: $abbreviated, expanded: $expanded)';

  @override
  bool operator ==(covariant Designation other) {
    if (identical(this, other)) return true;

    return other.abbreviated == abbreviated && other.expanded == expanded;
  }

  @override
  int get hashCode => abbreviated.hashCode ^ expanded.hashCode;
}

class Gregorian {
  String date;
  String format;
  String day;
  Weekday weekday;
  Month month;
  String year;
  Designation designation;
  Gregorian({
    required this.date,
    required this.format,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
    required this.designation,
  });

  Gregorian copyWith({
    String? date,
    String? format,
    String? day,
    Weekday? weekday,
    Month? month,
    String? year,
    Designation? designation,
  }) {
    return Gregorian(
      date: date ?? this.date,
      format: format ?? this.format,
      day: day ?? this.day,
      weekday: weekday ?? this.weekday,
      month: month ?? this.month,
      year: year ?? this.year,
      designation: designation ?? this.designation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'format': format,
      'day': day,
      'weekday': weekday.toMap(),
      'month': month.toMap(),
      'year': year,
      'designation': designation.toMap(),
    };
  }

  factory Gregorian.fromMap(Map<String, dynamic> map) {
    return Gregorian(
      date: map['date'] as String,
      format: map['format'] as String,
      day: map['day'] as String,
      weekday: Weekday.fromMap(map['weekday'] as Map<String, dynamic>),
      month: Month.fromMap(map['month'] as Map<String, dynamic>),
      year: map['year'] as String,
      designation:
          Designation.fromMap(map['designation'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Gregorian.fromJson(String source) =>
      Gregorian.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Gregorian(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation)';
  }

  @override
  bool operator ==(covariant Gregorian other) {
    if (identical(this, other)) return true;

    return other.date == date &&
        other.format == format &&
        other.day == day &&
        other.weekday == weekday &&
        other.month == month &&
        other.year == year &&
        other.designation == designation;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        format.hashCode ^
        day.hashCode ^
        weekday.hashCode ^
        month.hashCode ^
        year.hashCode ^
        designation.hashCode;
  }
}
