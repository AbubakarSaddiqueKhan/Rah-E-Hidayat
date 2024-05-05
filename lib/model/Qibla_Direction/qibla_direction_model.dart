import 'dart:convert';

class QiblaDirectionModel {
  int code;
  String status;
  Data data;
  QiblaDirectionModel({
    required this.code,
    required this.status,
    required this.data,
  });

  QiblaDirectionModel copyWith({
    int? code,
    String? status,
    Data? data,
  }) {
    return QiblaDirectionModel(
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

  factory QiblaDirectionModel.fromMap(Map<String, dynamic> map) {
    return QiblaDirectionModel(
      code: map['code'] as int,
      status: map['status'] as String,
      data: Data.fromMap(map['data'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory QiblaDirectionModel.fromJson(String source) =>
      QiblaDirectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'QiblaDirectionModel(code: $code, status: $status, data: $data)';

  @override
  bool operator ==(covariant QiblaDirectionModel other) {
    if (identical(this, other)) return true;

    return other.code == code && other.status == status && other.data == data;
  }

  @override
  int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
}

class Data {
  double latitude;
  double longitude;
  double direction;
  Data({
    required this.latitude,
    required this.longitude,
    required this.direction,
  });

  Data copyWith({
    double? latitude,
    double? longitude,
    double? direction,
  }) {
    return Data(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      direction: direction ?? this.direction,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
      'direction': direction,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      direction: map['direction'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Data(latitude: $latitude, longitude: $longitude, direction: $direction)';

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;

    return other.latitude == latitude &&
        other.longitude == longitude &&
        other.direction == direction;
  }

  @override
  int get hashCode =>
      latitude.hashCode ^ longitude.hashCode ^ direction.hashCode;
}


/**
 * 
 * 
 * 
 * 
// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class QiblaDirectionModel {
//   int code;
//   String status;
//   Data? data;
//   QiblaDirectionModel({
//     required this.code,
//     required this.status,
//     required this.data,
//   });

//   QiblaDirectionModel copyWith({
//     int? code,
//     String? status,
//     Data? date,
//   }) {
//     return QiblaDirectionModel(
//       code: code ?? this.code,
//       status: status ?? this.status,
//       data: date ?? this.data,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'code': code,
//       'status': status,
//       'date': data?.toMap(),
//     };
//   }

//   factory QiblaDirectionModel.fromMap(Map<String, dynamic> map) {
//     return QiblaDirectionModel(
//       code: map['code'] as int,
//       status: map['status'] as String,
//       data: map['date'] as dynamic,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory QiblaDirectionModel.fromJson(String source) =>
//       QiblaDirectionModel.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() =>
//       'QiblaDirectionModel(code: $code, status: $status, date: $data)';

//   @override
//   bool operator ==(covariant QiblaDirectionModel other) {
//     if (identical(this, other)) return true;

//     return other.code == code && other.status == status && other.data == data;
//   }

//   @override
//   int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
// }

// class Data {
//   double latitude;
//   double longitude;
//   double direction;
//   Data({
//     required this.latitude,
//     required this.longitude,
//     required this.direction,
//   });

//   Data copyWith({
//     double? latitude,
//     double? longitude,
//     double? direction,
//   }) {
//     return Data(
//       latitude: latitude ?? this.latitude,
//       longitude: longitude ?? this.longitude,
//       direction: direction ?? this.direction,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'latitude': latitude,
//       'longitude': longitude,
//       'direction': direction,
//     };
//   }

//   factory Data.fromMap(Map<String, dynamic> map) {
//     return Data(
//       latitude: map['latitude'] as double,
//       longitude: map['longitude'] as double,
//       direction: map['direction'] as double,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Data.fromJson(String source) =>
//       Data.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() =>
//       'Data(latitude: $latitude, longitude: $longitude, direction: $direction)';

//   @override
//   bool operator ==(covariant Data other) {
//     if (identical(this, other)) return true;

//     return other.latitude == latitude &&
//         other.longitude == longitude &&
//         other.direction == direction;
//   }

//   @override
//   int get hashCode =>
//       latitude.hashCode ^ longitude.hashCode ^ direction.hashCode;
// }



 * 
 * 
 */
