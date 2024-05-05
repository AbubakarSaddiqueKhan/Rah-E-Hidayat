import 'dart:convert';

class SupplicationCategoriesData {
  int supplicationCategoryId;
  String supplicationCategoryEnglishName;
  String supplicationCategoryUrduName;
  int totalNumberOfSupplicationsInThatCategory;
  SupplicationCategoriesData({
    required this.supplicationCategoryId,
    required this.supplicationCategoryEnglishName,
    required this.supplicationCategoryUrduName,
    required this.totalNumberOfSupplicationsInThatCategory,
  });

  SupplicationCategoriesData copyWith({
    int? supplicationCategoryId,
    String? supplicationCategoryEnglishName,
    String? supplicationCategoryUrduName,
    int? totalNumberOfSupplicationsInThatCategory,
  }) {
    return SupplicationCategoriesData(
      supplicationCategoryId:
          supplicationCategoryId ?? this.supplicationCategoryId,
      supplicationCategoryEnglishName: supplicationCategoryEnglishName ??
          this.supplicationCategoryEnglishName,
      supplicationCategoryUrduName:
          supplicationCategoryUrduName ?? this.supplicationCategoryUrduName,
      totalNumberOfSupplicationsInThatCategory:
          totalNumberOfSupplicationsInThatCategory ??
              this.totalNumberOfSupplicationsInThatCategory,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supplicationCategoryId': supplicationCategoryId,
      'supplicationCategoryEnglishName': supplicationCategoryEnglishName,
      'supplicationCategoryUrduName': supplicationCategoryUrduName,
      'totalNumberOfSupplicationsInThatCategory':
          totalNumberOfSupplicationsInThatCategory,
    };
  }

  factory SupplicationCategoriesData.fromMap(Map<String, dynamic> map) {
    return SupplicationCategoriesData(
      supplicationCategoryId: map['supplicationCategoryId'] as int,
      supplicationCategoryEnglishName:
          map['supplicationCategoryEnglishName'] as String,
      supplicationCategoryUrduName:
          map['supplicationCategoryUrduName'] as String,
      totalNumberOfSupplicationsInThatCategory:
          map['totalNumberOfSupplicationsInThatCategory'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SupplicationCategoriesData.fromJson(String source) =>
      SupplicationCategoriesData.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SupplicationCategoriesData(supplicationCategoryId: $supplicationCategoryId, supplicationCategoryEnglishName: $supplicationCategoryEnglishName, supplicationCategoryUrduName: $supplicationCategoryUrduName, totalNumberOfSupplicationsInThatCategory: $totalNumberOfSupplicationsInThatCategory)';
  }

  @override
  bool operator ==(covariant SupplicationCategoriesData other) {
    if (identical(this, other)) return true;

    return other.supplicationCategoryId == supplicationCategoryId &&
        other.supplicationCategoryEnglishName ==
            supplicationCategoryEnglishName &&
        other.supplicationCategoryUrduName == supplicationCategoryUrduName &&
        other.totalNumberOfSupplicationsInThatCategory ==
            totalNumberOfSupplicationsInThatCategory;
  }

  @override
  int get hashCode {
    return supplicationCategoryId.hashCode ^
        supplicationCategoryEnglishName.hashCode ^
        supplicationCategoryUrduName.hashCode ^
        totalNumberOfSupplicationsInThatCategory.hashCode;
  }

  static List<SupplicationCategoriesData> allSupplicationsCategoriesDataList =
      <SupplicationCategoriesData>[
    SupplicationCategoriesData(
        supplicationCategoryId: 1,
        supplicationCategoryEnglishName: "Quranic Supplications",
        supplicationCategoryUrduName: "قرآنی دعائیں",
        totalNumberOfSupplicationsInThatCategory: 46),
    SupplicationCategoriesData(
        supplicationCategoryId: 2,
        supplicationCategoryEnglishName: "Morning Supplications",
        supplicationCategoryUrduName: "صبح کی دعائیں",
        totalNumberOfSupplicationsInThatCategory: 23),
    SupplicationCategoriesData(
        supplicationCategoryId: 3,
        supplicationCategoryEnglishName: "Evening Supplications",
        supplicationCategoryUrduName: "شام کی دعائیں",
        totalNumberOfSupplicationsInThatCategory: 25),
    SupplicationCategoriesData(
        supplicationCategoryId: 4,
        supplicationCategoryEnglishName:
            "Supplications after the salutation of the obligatory prayers",
        supplicationCategoryUrduName: "فرض نمازوں کے سلام کے بعد کی دعا",
        totalNumberOfSupplicationsInThatCategory: 9),
    SupplicationCategoriesData(
        supplicationCategoryId: 5,
        supplicationCategoryEnglishName: "Praises Of Allah",
        supplicationCategoryUrduName: "اللہ کی حمد",
        totalNumberOfSupplicationsInThatCategory: 16),
    SupplicationCategoriesData(
        supplicationCategoryId: 6,
        supplicationCategoryEnglishName: "Sleeping Supplications",
        supplicationCategoryUrduName: "سونے کی دعائیں",
        totalNumberOfSupplicationsInThatCategory: 10),
    SupplicationCategoriesData(
        supplicationCategoryId: 7,
        supplicationCategoryEnglishName: "Supplications of waking up",
        supplicationCategoryUrduName: "بیدار ہونے کی دعائیں",
        totalNumberOfSupplicationsInThatCategory: 3),
    SupplicationCategoriesData(
        supplicationCategoryId: 8,
        supplicationCategoryEnglishName: "Prophetic Supplications",
        supplicationCategoryUrduName: "نبوی دعائیں",
        totalNumberOfSupplicationsInThatCategory: 34)
  ];
}
