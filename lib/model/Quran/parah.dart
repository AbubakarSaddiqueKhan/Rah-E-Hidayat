import 'dart:convert';

class Parah {
  int parahNumber;
  String parahArabicName;
  String parahRomanEnglishName;
  int totalNumberOfVersesInThatParah;
  Parah({
    required this.parahNumber,
    required this.parahArabicName,
    required this.parahRomanEnglishName,
    required this.totalNumberOfVersesInThatParah,
  });

  Parah copyWith({
    int? parahNumber,
    String? parahArabicName,
    String? parahRomanEnglishName,
    int? totalNumberOfVersesInThatParah,
  }) {
    return Parah(
      parahNumber: parahNumber ?? this.parahNumber,
      parahArabicName: parahArabicName ?? this.parahArabicName,
      parahRomanEnglishName:
          parahRomanEnglishName ?? this.parahRomanEnglishName,
      totalNumberOfVersesInThatParah:
          totalNumberOfVersesInThatParah ?? this.totalNumberOfVersesInThatParah,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parahNumber': parahNumber,
      'parahArabicName': parahArabicName,
      'parahRomanEnglishName': parahRomanEnglishName,
      'totalNumberOfVersesInThatParah': totalNumberOfVersesInThatParah,
    };
  }

  factory Parah.fromMap(Map<String, dynamic> map) {
    return Parah(
      parahNumber: map['parahNumber'] as int,
      parahArabicName: map['parahArabicName'] as String,
      parahRomanEnglishName: map['parahRomanEnglishName'] as String,
      totalNumberOfVersesInThatParah:
          map['totalNumberOfVersesInThatParah'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Parah.fromJson(String source) =>
      Parah.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Parah(parahNumber: $parahNumber, parahArabicName: $parahArabicName, parahRomanEnglishName: $parahRomanEnglishName, totalNumberOfVersesInThatParah: $totalNumberOfVersesInThatParah)';
  }

  @override
  bool operator ==(covariant Parah other) {
    if (identical(this, other)) return true;

    return other.parahNumber == parahNumber &&
        other.parahArabicName == parahArabicName &&
        other.parahRomanEnglishName == parahRomanEnglishName &&
        other.totalNumberOfVersesInThatParah == totalNumberOfVersesInThatParah;
  }

  @override
  int get hashCode {
    return parahNumber.hashCode ^
        parahArabicName.hashCode ^
        parahRomanEnglishName.hashCode ^
        totalNumberOfVersesInThatParah.hashCode;
  }
}

List<Parah> allParahDataList = <Parah>[
  Parah(
      parahNumber: 1,
      parahArabicName: "آلم",
      parahRomanEnglishName: "Alif-Lām-Mīm",
      totalNumberOfVersesInThatParah: 148),
  Parah(
      parahNumber: 2,
      parahArabicName: "سَيَقُولُ السُّفَهَاءُ",
      parahRomanEnglishName: "Sayaqūl Al-Sufahā’",
      totalNumberOfVersesInThatParah: 11),
  Parah(
      parahNumber: 3,
      parahArabicName: "تِلْكَ الرُّسُلُ",
      parahRomanEnglishName: "Tilka Al-Rusul",
      totalNumberOfVersesInThatParah: 126),
  Parah(
      parahNumber: 4,
      parahArabicName: "لَنْ تَنَالُوا",
      parahRomanEnglishName: "Lan Tanālu",
      totalNumberOfVersesInThatParah: 131),
  Parah(
      parahNumber: 5,
      parahArabicName: "وَالْمُحْصَنَاتُ",
      parahRomanEnglishName: "Wa Al-Muḥṣanāt",
      totalNumberOfVersesInThatParah: 124),
  Parah(
      parahNumber: 6,
      parahArabicName: "لَا يُحِبُّ اللَّهُ",
      parahRomanEnglishName: "Lā Yuḥibbu Allāh",
      totalNumberOfVersesInThatParah: 110),
  Parah(
      parahNumber: 7,
      parahArabicName: "وَإِذَا سَمِعُوا",
      parahRomanEnglishName: "Wa Idhā Sami`ū",
      totalNumberOfVersesInThatParah: 149),
  Parah(
      parahNumber: 8,
      parahArabicName: "وَلَوْ أَنَّنَا",
      parahRomanEnglishName: "Wa Law 'Annannā",
      totalNumberOfVersesInThatParah: 142),
  Parah(
      parahNumber: 9,
      parahArabicName: "قَالَ الْمَلَ",
      parahRomanEnglishName: "Qalal Malao",
      totalNumberOfVersesInThatParah: 159),
  Parah(
      parahNumber: 10,
      parahArabicName: "وَاعْلَمُوا",
      parahRomanEnglishName: "Wa A’lamu",
      totalNumberOfVersesInThatParah: 127),
  Parah(
      parahNumber: 11,
      parahArabicName: "يَعْتَذِرُونَ",
      parahRomanEnglishName: "Ya`tazeroon",
      totalNumberOfVersesInThatParah: 151),
  Parah(
      parahNumber: 12,
      parahArabicName: "وَمَا مِن دَابَّةٍ",
      parahRomanEnglishName: "Wa Mā Min Dābbah",
      totalNumberOfVersesInThatParah: 170),
  Parah(
      parahNumber: 13,
      parahArabicName: "وَمَا أُبَرِّئُ",
      parahRomanEnglishName: "Wa Mā Ubarri'u",
      totalNumberOfVersesInThatParah: 154),
  Parah(
      parahNumber: 14,
      parahArabicName: "رُبَمَا يَوَدُّ",
      parahRomanEnglishName: "Rubamā Yawaddu",
      totalNumberOfVersesInThatParah: 227),
  Parah(
      parahNumber: 15,
      parahArabicName: "سُبْحَانَ الَّذِي",
      parahRomanEnglishName: "Subḥāna Al-Ladhī",
      totalNumberOfVersesInThatParah: 185),
  Parah(
      parahNumber: 16,
      parahArabicName: "قَالَ أَلَمْ",
      parahRomanEnglishName: "Qāla Alam",
      totalNumberOfVersesInThatParah: 269),
  Parah(
      parahNumber: 17,
      parahArabicName: "اقْتَرَبَ لِلنَّاسِ",
      parahRomanEnglishName: "Iqtaraba Li-Nnāsi",
      totalNumberOfVersesInThatParah: 190),
  Parah(
      parahNumber: 18,
      parahArabicName: "قَدْ أَفْلَحَ الْمُؤْمِنُونَ",
      parahRomanEnglishName: "Qad 'Aflaḥa Al-Mu'minūna",
      totalNumberOfVersesInThatParah: 202),
  Parah(
      parahNumber: 19,
      parahArabicName: "وَقَالَ الَّذِينَ",
      parahRomanEnglishName: "Wa Qāla Al-Ladhīna",
      totalNumberOfVersesInThatParah: 339),
  Parah(
      parahNumber: 20,
      parahArabicName: "أَمَّن خَلَقَ",
      parahRomanEnglishName: "Aman Khalaqa",
      totalNumberOfVersesInThatParah: 171),
  Parah(
      parahNumber: 21,
      parahArabicName: "اتْلُ مَا أُوحِيَ",
      parahRomanEnglishName: "Iqra' Ma Uhiya",
      totalNumberOfVersesInThatParah: 178),
  Parah(
      parahNumber: 22,
      parahArabicName: "وَمَنْ يَقْنُتْ",
      parahRomanEnglishName: "Wa Manyaqnut",
      totalNumberOfVersesInThatParah: 169),
  Parah(
      parahNumber: 23,
      parahArabicName: "وَمَا لِيَ",
      parahRomanEnglishName: "Wa Mali",
      totalNumberOfVersesInThatParah: 357),
  Parah(
      parahNumber: 24,
      parahArabicName: "فَمَنْ أَظْلَمُ",
      parahRomanEnglishName: "Faman Azlamu",
      totalNumberOfVersesInThatParah: 175),
  Parah(
      parahNumber: 25,
      parahArabicName: "إِلَيْهِ يُرَدُّ",
      parahRomanEnglishName: "Elahe Yuruddo",
      totalNumberOfVersesInThatParah: 246),
  Parah(
      parahNumber: 26,
      parahArabicName: "حم",
      parahRomanEnglishName: "Hā Mīm",
      totalNumberOfVersesInThatParah: 195),
  Parah(
      parahNumber: 27,
      parahArabicName: "قَالَ فَمَا خَطْبُكُمْ",
      parahRomanEnglishName: "Qāla Famā Khaṭbukum",
      totalNumberOfVersesInThatParah: 399),
  Parah(
      parahNumber: 28,
      parahArabicName: "قَدْ سَمِعَ اللَّهُ",
      parahRomanEnglishName: "Qadd Sami",
      totalNumberOfVersesInThatParah: 137),
  Parah(
      parahNumber: 29,
      parahArabicName: "تَبَارَكَ الَّذِي",
      parahRomanEnglishName: "Tabāraka Al-Ladhī",
      totalNumberOfVersesInThatParah: 431),
  Parah(
      parahNumber: 30,
      parahArabicName: "عَمَّ يَتَسَآءَلُونَ",
      parahRomanEnglishName: "`Amma Yatasā'alūna",
      totalNumberOfVersesInThatParah: 564)
];
