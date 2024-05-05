import 'dart:convert';

class CompleteQuranTranslatorModel {
  int quranTranslatorId;
  String quranTranslatorName;
  String quranTranslationLanguageName;
  String quranCompleteTranslation;
  String quranTranslationDirection;
  String quranTranslationFontStyleName;
  CompleteQuranTranslatorModel({
    required this.quranTranslatorId,
    required this.quranTranslatorName,
    required this.quranTranslationLanguageName,
    required this.quranCompleteTranslation,
    required this.quranTranslationDirection,
    required this.quranTranslationFontStyleName,
  });

  CompleteQuranTranslatorModel copyWith({
    int? quranTranslatorId,
    String? quranTranslatorName,
    String? quranTranslationLanguageName,
    String? quranCompleteTranslation,
    String? quranTranslationDirection,
    String? quranTranslationFontStyleName,
  }) {
    return CompleteQuranTranslatorModel(
      quranTranslatorId: quranTranslatorId ?? this.quranTranslatorId,
      quranTranslatorName: quranTranslatorName ?? this.quranTranslatorName,
      quranTranslationLanguageName:
          quranTranslationLanguageName ?? this.quranTranslationLanguageName,
      quranCompleteTranslation:
          quranCompleteTranslation ?? this.quranCompleteTranslation,
      quranTranslationDirection:
          quranTranslationDirection ?? this.quranTranslationDirection,
      quranTranslationFontStyleName:
          quranTranslationFontStyleName ?? this.quranTranslationFontStyleName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quranTranslatorId': quranTranslatorId,
      'quranTranslatorName': quranTranslatorName,
      'quranTranslationLanguageName': quranTranslationLanguageName,
      'quranCompleteTranslation': quranCompleteTranslation,
      'quranTranslationDirection': quranTranslationDirection,
      'quranTranslationFontStyleName': quranTranslationFontStyleName,
    };
  }

  factory CompleteQuranTranslatorModel.fromMap(Map<String, dynamic> map) {
    return CompleteQuranTranslatorModel(
      quranTranslatorId: map['quranTranslatorId'] as int,
      quranTranslatorName: map['quranTranslatorName'] as String,
      quranTranslationLanguageName:
          map['quranTranslationLanguageName'] as String,
      quranCompleteTranslation: map['quranCompleteTranslation'] as String,
      quranTranslationDirection: map['quranTranslationDirection'] as String,
      quranTranslationFontStyleName:
          map['quranTranslationFontStyleName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompleteQuranTranslatorModel.fromJson(String source) =>
      CompleteQuranTranslatorModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CompleteQuranTranslatorModel(quranTranslatorId: $quranTranslatorId, quranTranslatorName: $quranTranslatorName, quranTranslationLanguageName: $quranTranslationLanguageName, quranCompleteTranslation: $quranCompleteTranslation, quranTranslationDirection: $quranTranslationDirection, quranTranslationFontStyleName: $quranTranslationFontStyleName)';
  }

  @override
  bool operator ==(covariant CompleteQuranTranslatorModel other) {
    if (identical(this, other)) return true;

    return other.quranTranslatorId == quranTranslatorId &&
        other.quranTranslatorName == quranTranslatorName &&
        other.quranTranslationLanguageName == quranTranslationLanguageName &&
        other.quranCompleteTranslation == quranCompleteTranslation &&
        other.quranTranslationDirection == quranTranslationDirection &&
        other.quranTranslationFontStyleName == quranTranslationFontStyleName;
  }

  @override
  int get hashCode {
    return quranTranslatorId.hashCode ^
        quranTranslatorName.hashCode ^
        quranTranslationLanguageName.hashCode ^
        quranCompleteTranslation.hashCode ^
        quranTranslationDirection.hashCode ^
        quranTranslationFontStyleName.hashCode;
  }
}
