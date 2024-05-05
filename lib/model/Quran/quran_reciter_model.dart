import 'dart:convert';

class QuranReciterModel {
  int reciterId;
  String reciterLanguageCode;
  String reciterName;
  String reciterIdentifier;
  QuranReciterModel({
    required this.reciterId,
    required this.reciterLanguageCode,
    required this.reciterName,
    required this.reciterIdentifier,
  });

  QuranReciterModel copyWith({
    int? reciterId,
    String? reciterLanguageCode,
    String? reciterName,
    String? reciterIdentifier,
  }) {
    return QuranReciterModel(
      reciterId: reciterId ?? this.reciterId,
      reciterLanguageCode: reciterLanguageCode ?? this.reciterLanguageCode,
      reciterName: reciterName ?? this.reciterName,
      reciterIdentifier: reciterIdentifier ?? this.reciterIdentifier,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reciterId': reciterId,
      'reciterLanguageCode': reciterLanguageCode,
      'reciterName': reciterName,
      'reciterIdentifier': reciterIdentifier,
    };
  }

  factory QuranReciterModel.fromMap(Map<String, dynamic> map) {
    return QuranReciterModel(
      reciterId: map['reciterId'] as int,
      reciterLanguageCode: map['reciterLanguageCode'] as String,
      reciterName: map['reciterName'] as String,
      reciterIdentifier: map['reciterIdentifier'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuranReciterModel.fromJson(String source) =>
      QuranReciterModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'QuranReciterModel(reciterId: $reciterId, reciterLanguageCode: $reciterLanguageCode, reciterName: $reciterName, reciterIdentifier: $reciterIdentifier)';
  }

  @override
  bool operator ==(covariant QuranReciterModel other) {
    if (identical(this, other)) return true;

    return other.reciterId == reciterId &&
        other.reciterLanguageCode == reciterLanguageCode &&
        other.reciterName == reciterName &&
        other.reciterIdentifier == reciterIdentifier;
  }

  @override
  int get hashCode {
    return reciterId.hashCode ^
        reciterLanguageCode.hashCode ^
        reciterName.hashCode ^
        reciterIdentifier.hashCode;
  }
}

List<QuranReciterModel> quranReciterDataList = <QuranReciterModel>[
  QuranReciterModel(
      reciterId: 1,
      reciterLanguageCode: "ur",
      reciterIdentifier: "ur.khan",
      reciterName: "Shamshad Ali Khan (Urdu)"),
  QuranReciterModel(
      reciterId: 2,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.abdulbasitmurattal",
      reciterName: "Abdul Basit Abdul Samad Al Murtal"),
  QuranReciterModel(
      reciterId: 3,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.abdurrahmaansudais",
      reciterName: "Abdurrahmaan As-Sudais"),
  QuranReciterModel(
      reciterId: 4,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.alafasy",
      reciterName: "Mishari Al-afasi"),
  QuranReciterModel(
      reciterId: 5,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.husary",
      reciterName: "Mahmoud Khalil Al-Hosary"),
  QuranReciterModel(
      reciterId: 6,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.hudhaify",
      reciterName: "Ali bin Abdul Rahman Al-Hudhaifi"),
  QuranReciterModel(
      reciterId: 7,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.shaatree",
      reciterName: "Abu Bakr Ash-Shaatree"),
  QuranReciterModel(
      reciterId: 8,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.ahmedajamy",
      reciterName: "Ahmed ibn Ali al-Ajamy"),
  QuranReciterModel(
      reciterId: 9,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.abdullahbasfar",
      reciterName: "Abdullah Basfar"),
  QuranReciterModel(
      reciterId: 10,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.saoodshuraym",
      reciterName: "Saood bin Ibraaheem Ash-Shuraym"),
  QuranReciterModel(
      reciterId: 11,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.mahermuaiqly",
      reciterName: "Maher Almaikulai"),
  QuranReciterModel(
      reciterId: 12,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.abdulsamad",
      reciterName: "Abdul Basit Abdul Samad"),
  QuranReciterModel(
      reciterId: 13,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.hanirifai",
      reciterName: "Hani Al-Rifai"),
  QuranReciterModel(
      reciterId: 14,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.aymanswoaid",
      reciterName: "Ayman Sowaid"),
  QuranReciterModel(
      reciterId: 15,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.husarymujawwad",
      reciterName: "Mahmoud Khalil Al-Hosary (Al-Majoud)"),
  QuranReciterModel(
      reciterId: 16,
      reciterLanguageCode: "ar",
      reciterIdentifier: "ar.minshawimujawwad",
      reciterName: "Muhammad Siddiq Al-Minshawi (Al-Majjoud)"),
];
