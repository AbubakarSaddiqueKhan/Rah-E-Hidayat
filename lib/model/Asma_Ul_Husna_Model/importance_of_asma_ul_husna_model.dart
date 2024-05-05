import 'dart:convert';

class AsmaUlHusnaaImportanceModel {
  int id;
  String arabicText;
  String urduText;
  String englishText;
  String reference;
  AsmaUlHusnaaImportanceModel({
    required this.id,
    required this.arabicText,
    required this.urduText,
    required this.englishText,
    required this.reference,
  });

  AsmaUlHusnaaImportanceModel copyWith({
    int? id,
    String? arabicText,
    String? urduText,
    String? englishText,
    String? reference,
  }) {
    return AsmaUlHusnaaImportanceModel(
      id: id ?? this.id,
      arabicText: arabicText ?? this.arabicText,
      urduText: urduText ?? this.urduText,
      englishText: englishText ?? this.englishText,
      reference: reference ?? this.reference,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'arabicText': arabicText,
      'urduText': urduText,
      'englishText': englishText,
      'reference': reference,
    };
  }

  factory AsmaUlHusnaaImportanceModel.fromMap(Map<String, dynamic> map) {
    return AsmaUlHusnaaImportanceModel(
      id: map['id'] as int,
      arabicText: map['arabicText'] as String,
      urduText: map['urduText'] as String,
      englishText: map['englishText'] as String,
      reference: map['reference'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AsmaUlHusnaaImportanceModel.fromJson(String source) =>
      AsmaUlHusnaaImportanceModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AsmaUlHusnaaImportanceModel(id: $id, arabicText: $arabicText, urduText: $urduText, englishText: $englishText, reference: $reference)';
  }

  @override
  bool operator ==(covariant AsmaUlHusnaaImportanceModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.arabicText == arabicText &&
        other.urduText == urduText &&
        other.englishText == englishText &&
        other.reference == reference;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        arabicText.hashCode ^
        urduText.hashCode ^
        englishText.hashCode ^
        reference.hashCode;
  }
}
