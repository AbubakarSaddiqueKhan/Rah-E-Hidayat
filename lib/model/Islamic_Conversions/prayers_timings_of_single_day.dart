import 'dart:convert';

import 'package:flutter/foundation.dart';

class AllPrayersTimingOfDayModel {
  int code;
  String status;
  Data data;
  AllPrayersTimingOfDayModel({
    required this.code,
    required this.status,
    required this.data,
  });

  AllPrayersTimingOfDayModel copyWith({
    int? code,
    String? status,
    Data? data,
  }) {
    return AllPrayersTimingOfDayModel(
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

  factory AllPrayersTimingOfDayModel.fromMap(Map<String, dynamic> map) {
    return AllPrayersTimingOfDayModel(
      code: map['code'] as int,
      status: map['status'] as String,
      data: Data.fromMap(map['data'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllPrayersTimingOfDayModel.fromJson(String source) =>
      AllPrayersTimingOfDayModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AllPrayersTimingOfDayModel(code: $code, status: $status, data: $data)';

  @override
  bool operator ==(covariant AllPrayersTimingOfDayModel other) {
    if (identical(this, other)) return true;

    return other.code == code && other.status == status && other.data == data;
  }

  @override
  int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
}

class Data {
  Timings timings;
  Date date;
  Meta meta;
  Data({
    required this.timings,
    required this.date,
    required this.meta,
  });

  Data copyWith({
    Timings? timings,
    Date? date,
    Meta? meta,
  }) {
    return Data(
      timings: timings ?? this.timings,
      date: date ?? this.date,
      meta: meta ?? this.meta,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timings': timings.toMap(),
      'date': date.toMap(),
      'meta': meta.toMap(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      timings: Timings.fromMap(map['timings'] as Map<String, dynamic>),
      date: Date.fromMap(map['date'] as Map<String, dynamic>),
      meta: Meta.fromMap(map['meta'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Data(timings: $timings, date: $date, meta: $meta)';

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;

    return other.timings == timings && other.date == date && other.meta == meta;
  }

  @override
  int get hashCode => timings.hashCode ^ date.hashCode ^ meta.hashCode;
}

class Timings {
  String Fajr;
  String Sunrise;
  String Dhuhr;
  String Asr;
  String Sunset;
  String Maghrib;
  String Isha;
  String Imsak;
  String Midnight;
  String Firstthird;
  String Lastthird;
  Timings({
    required this.Fajr,
    required this.Sunrise,
    required this.Dhuhr,
    required this.Asr,
    required this.Sunset,
    required this.Maghrib,
    required this.Isha,
    required this.Imsak,
    required this.Midnight,
    required this.Firstthird,
    required this.Lastthird,
  });

  Timings copyWith({
    String? Fajr,
    String? Sunrise,
    String? Dhuhr,
    String? Asr,
    String? Sunset,
    String? Maghrib,
    String? Isha,
    String? Imsak,
    String? Midnight,
    String? Firstthird,
    String? Lastthird,
  }) {
    return Timings(
      Fajr: Fajr ?? this.Fajr,
      Sunrise: Sunrise ?? this.Sunrise,
      Dhuhr: Dhuhr ?? this.Dhuhr,
      Asr: Asr ?? this.Asr,
      Sunset: Sunset ?? this.Sunset,
      Maghrib: Maghrib ?? this.Maghrib,
      Isha: Isha ?? this.Isha,
      Imsak: Imsak ?? this.Imsak,
      Midnight: Midnight ?? this.Midnight,
      Firstthird: Firstthird ?? this.Firstthird,
      Lastthird: Lastthird ?? this.Lastthird,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Fajr': Fajr,
      'Sunrise': Sunrise,
      'Dhuhr': Dhuhr,
      'Asr': Asr,
      'Sunset': Sunset,
      'Maghrib': Maghrib,
      'Isha': Isha,
      'Imsak': Imsak,
      'Midnight': Midnight,
      'Firstthird': Firstthird,
      'Lastthird': Lastthird,
    };
  }

  factory Timings.fromMap(Map<String, dynamic> map) {
    return Timings(
      Fajr: map['Fajr'] as String,
      Sunrise: map['Sunrise'] as String,
      Dhuhr: map['Dhuhr'] as String,
      Asr: map['Asr'] as String,
      Sunset: map['Sunset'] as String,
      Maghrib: map['Maghrib'] as String,
      Isha: map['Isha'] as String,
      Imsak: map['Imsak'] as String,
      Midnight: map['Midnight'] as String,
      Firstthird: map['Firstthird'] as String,
      Lastthird: map['Lastthird'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Timings.fromJson(String source) =>
      Timings.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Timings(Fajr: $Fajr, Sunrise: $Sunrise, Dhuhr: $Dhuhr, Asr: $Asr, Sunset: $Sunset, Maghrib: $Maghrib, Isha: $Isha, Imsak: $Imsak, Midnight: $Midnight, Firstthird: $Firstthird, Lastthird: $Lastthird)';
  }

  @override
  bool operator ==(covariant Timings other) {
    if (identical(this, other)) return true;

    return other.Fajr == Fajr &&
        other.Sunrise == Sunrise &&
        other.Dhuhr == Dhuhr &&
        other.Asr == Asr &&
        other.Sunset == Sunset &&
        other.Maghrib == Maghrib &&
        other.Isha == Isha &&
        other.Imsak == Imsak &&
        other.Midnight == Midnight &&
        other.Firstthird == Firstthird &&
        other.Lastthird == Lastthird;
  }

  @override
  int get hashCode {
    return Fajr.hashCode ^
        Sunrise.hashCode ^
        Dhuhr.hashCode ^
        Asr.hashCode ^
        Sunset.hashCode ^
        Maghrib.hashCode ^
        Isha.hashCode ^
        Imsak.hashCode ^
        Midnight.hashCode ^
        Firstthird.hashCode ^
        Lastthird.hashCode;
  }
}

class Date {
  String readable;
  String timestamp;
  Hijri hijri;
  Gregorian gregorian;
  Date({
    required this.readable,
    required this.timestamp,
    required this.hijri,
    required this.gregorian,
  });

  Date copyWith({
    String? readable,
    String? timestamp,
    Hijri? hijri,
    Gregorian? gregorian,
  }) {
    return Date(
      readable: readable ?? this.readable,
      timestamp: timestamp ?? this.timestamp,
      hijri: hijri ?? this.hijri,
      gregorian: gregorian ?? this.gregorian,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readable': readable,
      'timestamp': timestamp,
      'hijri': hijri.toMap(),
      'gregorian': gregorian.toMap(),
    };
  }

  factory Date.fromMap(Map<String, dynamic> map) {
    return Date(
      readable: map['readable'] as String,
      timestamp: map['timestamp'] as String,
      hijri: Hijri.fromMap(map['hijri'] as Map<String, dynamic>),
      gregorian: Gregorian.fromMap(map['gregorian'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Date.fromJson(String source) =>
      Date.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Date(readable: $readable, timestamp: $timestamp, hijri: $hijri, gregorian: $gregorian)';
  }

  @override
  bool operator ==(covariant Date other) {
    if (identical(this, other)) return true;

    return other.readable == readable &&
        other.timestamp == timestamp &&
        other.hijri == hijri &&
        other.gregorian == gregorian;
  }

  @override
  int get hashCode {
    return readable.hashCode ^
        timestamp.hashCode ^
        hijri.hashCode ^
        gregorian.hashCode;
  }
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
      holidays: List<dynamic>.from((map['holidays'] as List<dynamic>)),
    );
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

class Meta {
  double latitude;
  double longitude;
  String timezone;
  Method method;
  String latitudeAdjustmentMethod;
  String midnightMode;
  String school;
  Offset offset;
  Meta({
    required this.latitude,
    required this.longitude,
    required this.timezone,
    required this.method,
    required this.latitudeAdjustmentMethod,
    required this.midnightMode,
    required this.school,
    required this.offset,
  });

  Meta copyWith({
    double? latitude,
    double? longitude,
    String? timezone,
    Method? method,
    String? latitudeAdjustmentMethod,
    String? midnightMode,
    String? school,
    Offset? offset,
  }) {
    return Meta(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      timezone: timezone ?? this.timezone,
      method: method ?? this.method,
      latitudeAdjustmentMethod:
          latitudeAdjustmentMethod ?? this.latitudeAdjustmentMethod,
      midnightMode: midnightMode ?? this.midnightMode,
      school: school ?? this.school,
      offset: offset ?? this.offset,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
      'timezone': timezone,
      'method': method.toMap(),
      'latitudeAdjustmentMethod': latitudeAdjustmentMethod,
      'midnightMode': midnightMode,
      'school': school,
      'offset': offset.toMap(),
    };
  }

  factory Meta.fromMap(Map<String, dynamic> map) {
    return Meta(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      timezone: map['timezone'] as String,
      method: Method.fromMap(map['method'] as Map<String, dynamic>),
      latitudeAdjustmentMethod: map['latitudeAdjustmentMethod'] as String,
      midnightMode: map['midnightMode'] as String,
      school: map['school'] as String,
      offset: Offset.fromMap(map['offset'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Meta.fromJson(String source) =>
      Meta.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Meta(latitude: $latitude, longitude: $longitude, timezone: $timezone, method: $method, latitudeAdjustmentMethod: $latitudeAdjustmentMethod, midnightMode: $midnightMode, school: $school, offset: $offset)';
  }

  @override
  bool operator ==(covariant Meta other) {
    if (identical(this, other)) return true;

    return other.latitude == latitude &&
        other.longitude == longitude &&
        other.timezone == timezone &&
        other.method == method &&
        other.latitudeAdjustmentMethod == latitudeAdjustmentMethod &&
        other.midnightMode == midnightMode &&
        other.school == school &&
        other.offset == offset;
  }

  @override
  int get hashCode {
    return latitude.hashCode ^
        longitude.hashCode ^
        timezone.hashCode ^
        method.hashCode ^
        latitudeAdjustmentMethod.hashCode ^
        midnightMode.hashCode ^
        school.hashCode ^
        offset.hashCode;
  }
}

class Method {
  int id;
  String name;
  Params params;
  Location location;
  Method({
    required this.id,
    required this.name,
    required this.params,
    required this.location,
  });

  Method copyWith({
    int? id,
    String? name,
    Params? params,
    Location? location,
  }) {
    return Method(
      id: id ?? this.id,
      name: name ?? this.name,
      params: params ?? this.params,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'params': params.toMap(),
      'location': location.toMap(),
    };
  }

  factory Method.fromMap(Map<String, dynamic> map) {
    return Method(
      id: map['id'] as int,
      name: map['name'] as String,
      params: Params.fromMap(map['params'] as Map<String, dynamic>),
      location: Location.fromMap(map['location'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Method.fromJson(String source) =>
      Method.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Method(id: $id, name: $name, params: $params, location: $location)';
  }

  @override
  bool operator ==(covariant Method other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.params == params &&
        other.location == location;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ params.hashCode ^ location.hashCode;
  }
}

class Params {
  int Fajr;
  int Isha;
  Params({
    required this.Fajr,
    required this.Isha,
  });

  Params copyWith({
    int? Fajr,
    int? Isha,
  }) {
    return Params(
      Fajr: Fajr ?? this.Fajr,
      Isha: Isha ?? this.Isha,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Fajr': Fajr,
      'Isha': Isha,
    };
  }

  factory Params.fromMap(Map<String, dynamic> map) {
    return Params(
      Fajr: map['Fajr'] as int,
      Isha: map['Isha'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Params.fromJson(String source) =>
      Params.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Params(Fajr: $Fajr, Isha: $Isha)';

  @override
  bool operator ==(covariant Params other) {
    if (identical(this, other)) return true;

    return other.Fajr == Fajr && other.Isha == Isha;
  }

  @override
  int get hashCode => Fajr.hashCode ^ Isha.hashCode;
}

class Location {
  double latitude;
  double longitude;
  Location({
    required this.latitude,
    required this.longitude,
  });

  Location copyWith({
    double? latitude,
    double? longitude,
  }) {
    return Location(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Location(latitude: $latitude, longitude: $longitude)';

  @override
  bool operator ==(covariant Location other) {
    if (identical(this, other)) return true;

    return other.latitude == latitude && other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}

class Offset {
  int Imsak;
  int Fajr;
  int Sunrise;
  int Dhuhr;
  int Asr;
  int Maghrib;
  int Sunset;
  int Isha;
  int Midnight;
  Offset({
    required this.Imsak,
    required this.Fajr,
    required this.Sunrise,
    required this.Dhuhr,
    required this.Asr,
    required this.Maghrib,
    required this.Sunset,
    required this.Isha,
    required this.Midnight,
  });

  Offset copyWith({
    int? Imsak,
    int? Fajr,
    int? Sunrise,
    int? Dhuhr,
    int? Asr,
    int? Maghrib,
    int? Sunset,
    int? Isha,
    int? Midnight,
  }) {
    return Offset(
      Imsak: Imsak ?? this.Imsak,
      Fajr: Fajr ?? this.Fajr,
      Sunrise: Sunrise ?? this.Sunrise,
      Dhuhr: Dhuhr ?? this.Dhuhr,
      Asr: Asr ?? this.Asr,
      Maghrib: Maghrib ?? this.Maghrib,
      Sunset: Sunset ?? this.Sunset,
      Isha: Isha ?? this.Isha,
      Midnight: Midnight ?? this.Midnight,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Imsak': Imsak,
      'Fajr': Fajr,
      'Sunrise': Sunrise,
      'Dhuhr': Dhuhr,
      'Asr': Asr,
      'Maghrib': Maghrib,
      'Sunset': Sunset,
      'Isha': Isha,
      'Midnight': Midnight,
    };
  }

  factory Offset.fromMap(Map<String, dynamic> map) {
    return Offset(
      Imsak: map['Imsak'] as int,
      Fajr: map['Fajr'] as int,
      Sunrise: map['Sunrise'] as int,
      Dhuhr: map['Dhuhr'] as int,
      Asr: map['Asr'] as int,
      Maghrib: map['Maghrib'] as int,
      Sunset: map['Sunset'] as int,
      Isha: map['Isha'] as int,
      Midnight: map['Midnight'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Offset.fromJson(String source) =>
      Offset.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Offset(Imsak: $Imsak, Fajr: $Fajr, Sunrise: $Sunrise, Dhuhr: $Dhuhr, Asr: $Asr, Maghrib: $Maghrib, Sunset: $Sunset, Isha: $Isha, Midnight: $Midnight)';
  }

  @override
  bool operator ==(covariant Offset other) {
    if (identical(this, other)) return true;

    return other.Imsak == Imsak &&
        other.Fajr == Fajr &&
        other.Sunrise == Sunrise &&
        other.Dhuhr == Dhuhr &&
        other.Asr == Asr &&
        other.Maghrib == Maghrib &&
        other.Sunset == Sunset &&
        other.Isha == Isha &&
        other.Midnight == Midnight;
  }

  @override
  int get hashCode {
    return Imsak.hashCode ^
        Fajr.hashCode ^
        Sunrise.hashCode ^
        Dhuhr.hashCode ^
        Asr.hashCode ^
        Maghrib.hashCode ^
        Sunset.hashCode ^
        Isha.hashCode ^
        Midnight.hashCode;
  }
}



/**
 * 
 * 
 * 
 * 
 * 
// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:flutter/foundation.dart';

// class AllPrayersTimingOfDayModel {
//   int code;
//   String status;
//   Data data;
//   AllPrayersTimingOfDayModel({
//     required this.code,
//     required this.status,
//     required this.data,
//   });

//   AllPrayersTimingOfDayModel copyWith({
//     int? code,
//     String? status,
//     Data? data,
//   }) {
//     return AllPrayersTimingOfDayModel(
//       code: code ?? this.code,
//       status: status ?? this.status,
//       data: data ?? this.data,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'code': code,
//       'status': status,
//       'data': data.toMap(),
//     };
//   }

//   factory AllPrayersTimingOfDayModel.fromMap(Map<String, dynamic> map) {
//     return AllPrayersTimingOfDayModel(
//       code: map['code'] as int,
//       status: map['status'] as String,
//       data: Data.fromMap(map['data'] as Map<String, dynamic>),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory AllPrayersTimingOfDayModel.fromJson(String source) =>
//       AllPrayersTimingOfDayModel.fromMap(
//           json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() =>
//       'AllNamazTimmingOfDay(code: $code, status: $status, data: $data)';

//   @override
//   bool operator ==(covariant AllPrayersTimingOfDayModel other) {
//     if (identical(this, other)) return true;

//     return other.code == code && other.status == status && other.data == data;
//   }

//   @override
//   int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
// }

// class Data {
//   Timings timings;
//   Date date;
//   Meta meta;
//   Data({
//     required this.timings,
//     required this.date,
//     required this.meta,
//   });

//   Data copyWith({
//     Timings? timings,
//     Date? date,
//     Meta? meta,
//   }) {
//     return Data(
//       timings: timings ?? this.timings,
//       date: date ?? this.date,
//       meta: meta ?? this.meta,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'timings': timings.toMap(),
//       'date': date.toMap(),
//       'meta': meta.toMap(),
//     };
//   }

//   factory Data.fromMap(Map<String, dynamic> map) {
//     return Data(
//       timings: Timings.fromMap(map['timings'] as Map<String, dynamic>),
//       date: Date.fromMap(map['date'] as Map<String, dynamic>),
//       meta: Meta.fromMap(map['meta'] as Map<String, dynamic>),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Data.fromJson(String source) =>
//       Data.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Data(timings: $timings, date: $date, meta: $meta)';

//   @override
//   bool operator ==(covariant Data other) {
//     if (identical(this, other)) return true;

//     return other.timings == timings && other.date == date && other.meta == meta;
//   }

//   @override
//   int get hashCode => timings.hashCode ^ date.hashCode ^ meta.hashCode;
// }

// class Date {
//   String readable;
//   String timestamp;
//   Hijri hijri;
//   Gregorian gregorian;
//   Date({
//     required this.readable,
//     required this.timestamp,
//     required this.hijri,
//     required this.gregorian,
//   });

//   Date copyWith({
//     String? readable,
//     String? timestamp,
//     Hijri? hijri,
//     Gregorian? gregorian,
//   }) {
//     return Date(
//       readable: readable ?? this.readable,
//       timestamp: timestamp ?? this.timestamp,
//       hijri: hijri ?? this.hijri,
//       gregorian: gregorian ?? this.gregorian,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'readable': readable,
//       'timestamp': timestamp,
//       'hijri': hijri.toMap(),
//       'gregorian': gregorian.toMap(),
//     };
//   }

//   factory Date.fromMap(Map<String, dynamic> map) {
//     return Date(
//       readable: map['readable'] as String,
//       timestamp: map['timestamp'] as String,
//       hijri: Hijri.fromMap(map['hijri'] as Map<String, dynamic>),
//       gregorian: Gregorian.fromMap(map['gregorian'] as Map<String, dynamic>),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Date.fromJson(String source) =>
//       Date.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Date(readable: $readable, timestamp: $timestamp, hijri: $hijri, gregorian: $gregorian)';
//   }

//   @override
//   bool operator ==(covariant Date other) {
//     if (identical(this, other)) return true;

//     return other.readable == readable &&
//         other.timestamp == timestamp &&
//         other.hijri == hijri &&
//         other.gregorian == gregorian;
//   }

//   @override
//   int get hashCode {
//     return readable.hashCode ^
//         timestamp.hashCode ^
//         hijri.hashCode ^
//         gregorian.hashCode;
//   }
// }

// class Gregorian {
//   String date;
//   String format;
//   String day;
//   GregorianWeekday weekday;
//   GregorianMonth month;
//   String year;
//   Designation designation;
//   Gregorian(
//       {required this.date,
//       required this.format,
//       required this.day,
//       required this.year,
//       required this.designation,
//       required this.month,
//       required this.weekday});

//   Gregorian copyWith({
//     String? date,
//     String? format,
//     String? day,
//     String? year,
//     Designation? designation,
//   }) {
//     return Gregorian(
//         date: date ?? this.date,
//         format: format ?? this.format,
//         day: day ?? this.day,
//         year: year ?? this.year,
//         designation: designation ?? this.designation,
//         month: month ?? this.month,
//         weekday: weekday ?? this.weekday);
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'date': date,
//       'format': format,
//       'day': day,
//       'year': year,
//       'designation': designation.toMap(),
//     };
//   }

//   factory Gregorian.fromMap(Map<String, dynamic> map) {
//     return Gregorian(
//       date: map['date'] as String,
//       format: map['format'] as String,
//       day: map['day'] as String,
//       year: map['year'] as String,
//       month: GregorianMonth.fromMap(map["month"] as Map<String, dynamic>),
//       weekday: GregorianWeekday.fromMap(map["weekday"] as Map<String, dynamic>),
//       designation:
//           Designation.fromMap(map['designation'] as Map<String, dynamic>),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Gregorian.fromJson(String source) =>
//       Gregorian.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Gregorian(date: $date, format: $format, day: $day, year: $year, designation: $designation)';
//   }

//   @override
//   bool operator ==(covariant Gregorian other) {
//     if (identical(this, other)) return true;

//     return other.date == date &&
//         other.format == format &&
//         other.day == day &&
//         other.year == year &&
//         other.designation == designation;
//   }

//   @override
//   int get hashCode {
//     return date.hashCode ^
//         format.hashCode ^
//         day.hashCode ^
//         year.hashCode ^
//         designation.hashCode;
//   }
// }

// class Designation {
//   String abbreviated;
//   String expanded;
//   Designation({
//     required this.abbreviated,
//     required this.expanded,
//   });

//   Designation copyWith({
//     String? abbreviated,
//     String? expanded,
//   }) {
//     return Designation(
//       abbreviated: abbreviated ?? this.abbreviated,
//       expanded: expanded ?? this.expanded,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'abbreviated': abbreviated,
//       'expanded': expanded,
//     };
//   }

//   factory Designation.fromMap(Map<String, dynamic> map) {
//     return Designation(
//       abbreviated: map['abbreviated'] as String,
//       expanded: map['expanded'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Designation.fromJson(String source) =>
//       Designation.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() =>
//       'Designation(abbreviated: $abbreviated, expanded: $expanded)';

//   @override
//   bool operator ==(covariant Designation other) {
//     if (identical(this, other)) return true;

//     return other.abbreviated == abbreviated && other.expanded == expanded;
//   }

//   @override
//   int get hashCode => abbreviated.hashCode ^ expanded.hashCode;
// }

// class GregorianMonth {
//   int number;
//   String en;
//   GregorianMonth({
//     required this.number,
//     required this.en,
//   });

//   GregorianMonth copyWith({
//     int? number,
//     String? en,
//   }) {
//     return GregorianMonth(
//       number: number ?? this.number,
//       en: en ?? this.en,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'number': number,
//       'en': en,
//     };
//   }

//   factory GregorianMonth.fromMap(Map<String, dynamic> map) {
//     return GregorianMonth(
//       number: map['number'] as int,
//       en: map['en'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory GregorianMonth.fromJson(String source) =>
//       GregorianMonth.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'GregorianMonth(number: $number, en: $en)';

//   @override
//   bool operator ==(covariant GregorianMonth other) {
//     if (identical(this, other)) return true;

//     return other.number == number && other.en == en;
//   }

//   @override
//   int get hashCode => number.hashCode ^ en.hashCode;
// }

// class GregorianWeekday {
//   String en;
//   GregorianWeekday({
//     required this.en,
//   });

//   GregorianWeekday copyWith({
//     String? en,
//   }) {
//     return GregorianWeekday(
//       en: en ?? this.en,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'en': en,
//     };
//   }

//   factory GregorianWeekday.fromMap(Map<String, dynamic> map) {
//     return GregorianWeekday(
//       en: map['en'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory GregorianWeekday.fromJson(String source) =>
//       GregorianWeekday.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'GregorianWeekday(en: $en)';

//   @override
//   bool operator ==(covariant GregorianWeekday other) {
//     if (identical(this, other)) return true;

//     return other.en == en;
//   }

//   @override
//   int get hashCode => en.hashCode;
// }

// class Hijri {
//   String date;
//   String format;
//   String day;
//   HijriWeekday weekday;
//   HijriMonth month;
//   String year;
//   Designation designation;
//   List<dynamic> holidays;
//   Hijri(
//       {required this.date,
//       required this.format,
//       required this.day,
//       required this.year,
//       required this.designation,
//       required this.holidays,
//       required this.month,
//       required this.weekday});

//   Hijri copyWith({
//     String? date,
//     String? format,
//     String? day,
//     String? year,
//     Designation? designation,
//     List<dynamic>? holidays,
//   }) {
//     return Hijri(
//         date: date ?? this.date,
//         format: format ?? this.format,
//         day: day ?? this.day,
//         year: year ?? this.year,
//         designation: designation ?? this.designation,
//         holidays: holidays ?? this.holidays,
//         month: month ?? this.month,
//         weekday: weekday ?? this.weekday);
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'date': date,
//       'format': format,
//       'day': day,
//       'year': year,
//       'designation': designation.toMap(),
//       'holidays': holidays,
//     };
//   }

//   factory Hijri.fromMap(Map<String, dynamic> map) {
//     return Hijri(
//         date: map['date'] as String,
//         format: map['format'] as String,
//         day: map['day'] as String,
//         year: map['year'] as String,
//         month: HijriMonth.fromMap(map["month"] as Map<String, dynamic>),
//         weekday: HijriWeekday.fromMap(map["weekday"] as Map<String, dynamic>),
//         designation:
//             Designation.fromMap(map['designation'] as Map<String, dynamic>),
//         holidays: List<dynamic>.from(
//           (map['holidays'] as List<dynamic>),
//         ));
//   }

//   String toJson() => json.encode(toMap());

//   factory Hijri.fromJson(String source) =>
//       Hijri.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Hijri(date: $date, format: $format, day: $day, year: $year, designation: $designation, holidays: $holidays)';
//   }

//   @override
//   bool operator ==(covariant Hijri other) {
//     if (identical(this, other)) return true;

//     return other.date == date &&
//         other.format == format &&
//         other.day == day &&
//         other.year == year &&
//         other.designation == designation &&
//         listEquals(other.holidays, holidays);
//   }

//   @override
//   int get hashCode {
//     return date.hashCode ^
//         format.hashCode ^
//         day.hashCode ^
//         year.hashCode ^
//         designation.hashCode ^
//         holidays.hashCode;
//   }
// }

// class HijriMonth {
//   int number;
//   String en;
//   String ar;
//   HijriMonth({
//     required this.number,
//     required this.en,
//     required this.ar,
//   });

//   HijriMonth copyWith({
//     int? number,
//     String? en,
//     String? ar,
//   }) {
//     return HijriMonth(
//       number: number ?? this.number,
//       en: en ?? this.en,
//       ar: ar ?? this.ar,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'number': number,
//       'en': en,
//       'ar': ar,
//     };
//   }

//   factory HijriMonth.fromMap(Map<String, dynamic> map) {
//     return HijriMonth(
//       number: map['number'] as int,
//       en: map['en'] as String,
//       ar: map['ar'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory HijriMonth.fromJson(String source) =>
//       HijriMonth.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'HijriMonth(number: $number, en: $en, ar: $ar)';

//   @override
//   bool operator ==(covariant HijriMonth other) {
//     if (identical(this, other)) return true;

//     return other.number == number && other.en == en && other.ar == ar;
//   }

//   @override
//   int get hashCode => number.hashCode ^ en.hashCode ^ ar.hashCode;
// }

// class HijriWeekday {
//   String en;
//   String ar;
//   HijriWeekday({
//     required this.en,
//     required this.ar,
//   });

//   HijriWeekday copyWith({
//     String? en,
//     String? ar,
//   }) {
//     return HijriWeekday(
//       en: en ?? this.en,
//       ar: ar ?? this.ar,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'en': en,
//       'ar': ar,
//     };
//   }

//   factory HijriWeekday.fromMap(Map<String, dynamic> map) {
//     return HijriWeekday(
//       en: map['en'] as String,
//       ar: map['ar'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory HijriWeekday.fromJson(String source) =>
//       HijriWeekday.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'HijriWeekday(en: $en, ar: $ar)';

//   @override
//   bool operator ==(covariant HijriWeekday other) {
//     if (identical(this, other)) return true;

//     return other.en == en && other.ar == ar;
//   }

//   @override
//   int get hashCode => en.hashCode ^ ar.hashCode;
// }

// class Meta {
//   double latitude;
//   double longitude;
//   String timezone;
//   Method method;
//   String latitudeAdjustmentMethod;
//   String midnightMode;
//   String school;
//   Map<String, int> offset;
//   Meta({
//     required this.latitude,
//     required this.longitude,
//     required this.timezone,
//     required this.method,
//     required this.latitudeAdjustmentMethod,
//     required this.midnightMode,
//     required this.school,
//     required this.offset,
//   });

//   Meta copyWith({
//     double? latitude,
//     double? longitude,
//     String? timezone,
//     Method? method,
//     String? latitudeAdjustmentMethod,
//     String? midnightMode,
//     String? school,
//     Map<String, int>? offset,
//   }) {
//     return Meta(
//       latitude: latitude ?? this.latitude,
//       longitude: longitude ?? this.longitude,
//       timezone: timezone ?? this.timezone,
//       method: method ?? this.method,
//       latitudeAdjustmentMethod:
//           latitudeAdjustmentMethod ?? this.latitudeAdjustmentMethod,
//       midnightMode: midnightMode ?? this.midnightMode,
//       school: school ?? this.school,
//       offset: offset ?? this.offset,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'latitude': latitude,
//       'longitude': longitude,
//       'timezone': timezone,
//       'method': method.toMap(),
//       'latitudeAdjustmentMethod': latitudeAdjustmentMethod,
//       'midnightMode': midnightMode,
//       'school': school,
//       'offset': offset,
//     };
//   }

//   factory Meta.fromMap(Map<String, dynamic> map) {
//     return Meta(
//       latitude: map['latitude'] as double,
//       longitude: map['longitude'] as double,
//       timezone: map['timezone'] as String,
//       method: Method.fromMap(map['method'] as Map<String, dynamic>),
//       latitudeAdjustmentMethod: map['latitudeAdjustmentMethod'] as String,
//       midnightMode: map['midnightMode'] as String,
//       school: map['school'] as String,
//       offset: Map<String, int>.from((map['offset'] as Map<String, dynamic>)),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Meta.fromJson(String source) =>
//       Meta.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Meta(latitude: $latitude, longitude: $longitude, timezone: $timezone, method: $method, latitudeAdjustmentMethod: $latitudeAdjustmentMethod, midnightMode: $midnightMode, school: $school, offset: $offset)';
//   }

//   @override
//   bool operator ==(covariant Meta other) {
//     if (identical(this, other)) return true;

//     return other.latitude == latitude &&
//         other.longitude == longitude &&
//         other.timezone == timezone &&
//         other.method == method &&
//         other.latitudeAdjustmentMethod == latitudeAdjustmentMethod &&
//         other.midnightMode == midnightMode &&
//         other.school == school &&
//         mapEquals(other.offset, offset);
//   }

//   @override
//   int get hashCode {
//     return latitude.hashCode ^
//         longitude.hashCode ^
//         timezone.hashCode ^
//         method.hashCode ^
//         latitudeAdjustmentMethod.hashCode ^
//         midnightMode.hashCode ^
//         school.hashCode ^
//         offset.hashCode;
//   }
// }

// class Method {
//   int id;
//   String name;
//   Params params;
//   Location location;
//   Method({
//     required this.id,
//     required this.name,
//     required this.params,
//     required this.location,
//   });

//   Method copyWith({
//     int? id,
//     String? name,
//     Params? params,
//     Location? location,
//   }) {
//     return Method(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       params: params ?? this.params,
//       location: location ?? this.location,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//       'params': params.toMap(),
//       'location': location.toMap(),
//     };
//   }

//   factory Method.fromMap(Map<String, dynamic> map) {
//     return Method(
//       id: map['id'] as int,
//       name: map['name'] as String,
//       params: Params.fromMap(map['params'] as Map<String, dynamic>),
//       location: Location.fromMap(map['location'] as Map<String, dynamic>),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Method.fromJson(String source) =>
//       Method.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Method(id: $id, name: $name, params: $params, location: $location)';
//   }

//   @override
//   bool operator ==(covariant Method other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.name == name &&
//         other.params == params &&
//         other.location == location;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^ name.hashCode ^ params.hashCode ^ location.hashCode;
//   }
// }

// class Location {
//   double latitude;
//   double longitude;
//   Location({
//     required this.latitude,
//     required this.longitude,
//   });

//   Location copyWith({
//     double? latitude,
//     double? longitude,
//   }) {
//     return Location(
//       latitude: latitude ?? this.latitude,
//       longitude: longitude ?? this.longitude,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'latitude': latitude,
//       'longitude': longitude,
//     };
//   }

//   factory Location.fromMap(Map<String, dynamic> map) {
//     return Location(
//       latitude: map['latitude'] as double,
//       longitude: map['longitude'] as double,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Location.fromJson(String source) =>
//       Location.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Location(latitude: $latitude, longitude: $longitude)';

//   @override
//   bool operator ==(covariant Location other) {
//     if (identical(this, other)) return true;

//     return other.latitude == latitude && other.longitude == longitude;
//   }

//   @override
//   int get hashCode => latitude.hashCode ^ longitude.hashCode;
// }

// class Params {
//   int? fajr;
//   int? isha;
//   Params({
//     required this.fajr,
//     required this.isha,
//   });

//   Params copyWith({
//     int? fajr,
//     int? isha,
//   }) {
//     return Params(
//       fajr: fajr ?? this.fajr,
//       isha: isha ?? this.isha,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'fajr': fajr,
//       'isha': isha,
//     };
//   }

//   factory Params.fromMap(Map<String, dynamic> map) {
//     return Params(
//       fajr: map['fajr'] as int?,
//       isha: map['isha'] as int?,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Params.fromJson(String source) =>
//       Params.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Params(fajr: $fajr, isha: $isha)';

//   @override
//   bool operator ==(covariant Params other) {
//     if (identical(this, other)) return true;

//     return other.fajr == fajr && other.isha == isha;
//   }

//   @override
//   int get hashCode => fajr.hashCode ^ isha.hashCode;
// }

// class Timings {
//   String? fajr;
//   String? sunrise;
//   String? dhuhr;
//   String? asr;
//   String? sunset;
//   String? maghrib;
//   String? isha;
//   String? imsak;
//   String? midnight;
//   String? firstthird;
//   String? lastthird;
//   Timings({
//     required this.fajr,
//     required this.sunrise,
//     required this.dhuhr,
//     required this.asr,
//     required this.sunset,
//     required this.maghrib,
//     required this.isha,
//     required this.imsak,
//     required this.midnight,
//     required this.firstthird,
//     required this.lastthird,
//   });

//   Timings copyWith({
//     String? fajr,
//     String? sunrise,
//     String? dhuhr,
//     String? asr,
//     String? sunset,
//     String? maghrib,
//     String? isha,
//     String? imsak,
//     String? midnight,
//     String? firstthird,
//     String? lastthird,
//   }) {
//     return Timings(
//       fajr: fajr ?? this.fajr,
//       sunrise: sunrise ?? this.sunrise,
//       dhuhr: dhuhr ?? this.dhuhr,
//       asr: asr ?? this.asr,
//       sunset: sunset ?? this.sunset,
//       maghrib: maghrib ?? this.maghrib,
//       isha: isha ?? this.isha,
//       imsak: imsak ?? this.imsak,
//       midnight: midnight ?? this.midnight,
//       firstthird: firstthird ?? this.firstthird,
//       lastthird: lastthird ?? this.lastthird,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'fajr': fajr,
//       'sunrise': sunrise,
//       'dhuhr': dhuhr,
//       'asr': asr,
//       'sunset': sunset,
//       'maghrib': maghrib,
//       'isha': isha,
//       'imsak': imsak,
//       'midnight': midnight,
//       'firstthird': firstthird,
//       'lastthird': lastthird,
//     };
//   }

//   factory Timings.fromMap(Map<String, dynamic> map) {
//     return Timings(
//       fajr: map['fajr'] as String?,
//       sunrise: map['sunrise'] as String?,
//       dhuhr: map['dhuhr'] as String?,
//       asr: map['asr'] as String?,
//       sunset: map['sunset'] as String?,
//       maghrib: map['maghrib'] as String?,
//       isha: map['isha'] as String?,
//       imsak: map['imsak'] as String?,
//       midnight: map['midnight'] as String?,
//       firstthird: map['firstthird'] as String?,
//       lastthird: map['lastthird'] as String?,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Timings.fromJson(String source) =>
//       Timings.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Timings(fajr: $fajr, sunrise: $sunrise, dhuhr: $dhuhr, asr: $asr, sunset: $sunset, maghrib: $maghrib, isha: $isha, imsak: $imsak, midnight: $midnight, firstthird: $firstthird, lastthird: $lastthird)';
//   }

//   @override
//   bool operator ==(covariant Timings other) {
//     if (identical(this, other)) return true;

//     return other.fajr == fajr &&
//         other.sunrise == sunrise &&
//         other.dhuhr == dhuhr &&
//         other.asr == asr &&
//         other.sunset == sunset &&
//         other.maghrib == maghrib &&
//         other.isha == isha &&
//         other.imsak == imsak &&
//         other.midnight == midnight &&
//         other.firstthird == firstthird &&
//         other.lastthird == lastthird;
//   }

//   @override
//   int get hashCode {
//     return fajr.hashCode ^
//         sunrise.hashCode ^
//         dhuhr.hashCode ^
//         asr.hashCode ^
//         sunset.hashCode ^
//         maghrib.hashCode ^
//         isha.hashCode ^
//         imsak.hashCode ^
//         midnight.hashCode ^
//         firstthird.hashCode ^
//         lastthird.hashCode;
//   }
// }




 * 
 */
