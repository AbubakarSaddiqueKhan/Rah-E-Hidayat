import 'dart:convert';

class Surah {
  int surahNumber;
  String arabicSurahName;
  String romanEnglishSurahName;
  int totalNumberOfVersesInSurah;
  int totalNumberOfRukuInSurah;
  Surah({
    required this.surahNumber,
    required this.arabicSurahName,
    required this.romanEnglishSurahName,
    required this.totalNumberOfVersesInSurah,
    required this.totalNumberOfRukuInSurah,
  });

  Surah copyWith({
    int? surahNumber,
    String? arabicSurahName,
    String? romanEnglishSurahName,
    int? totalNumberOfVersesInSurah,
    int? totalNumberOfRukuInSurah,
  }) {
    return Surah(
      surahNumber: surahNumber ?? this.surahNumber,
      arabicSurahName: arabicSurahName ?? this.arabicSurahName,
      romanEnglishSurahName:
          romanEnglishSurahName ?? this.romanEnglishSurahName,
      totalNumberOfVersesInSurah:
          totalNumberOfVersesInSurah ?? this.totalNumberOfVersesInSurah,
      totalNumberOfRukuInSurah:
          totalNumberOfRukuInSurah ?? this.totalNumberOfRukuInSurah,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'surahNumber': surahNumber,
      'arabicSurahName': arabicSurahName,
      'romanEnglishSurahName': romanEnglishSurahName,
      'totalNumberOfVersesInSurah': totalNumberOfVersesInSurah,
      'totalNumberOfRukuInSurah': totalNumberOfRukuInSurah,
    };
  }

  factory Surah.fromMap(Map<String, dynamic> map) {
    return Surah(
      surahNumber: map['surahNumber'] as int,
      arabicSurahName: map['arabicSurahName'] as String,
      romanEnglishSurahName: map['romanEnglishSurahName'] as String,
      totalNumberOfVersesInSurah: map['totalNumberOfVersesInSurah'] as int,
      totalNumberOfRukuInSurah: map['totalNumberOfRukuInSurah'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Surah.fromJson(String source) =>
      Surah.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Surah(surahNumber: $surahNumber, arabicSurahName: $arabicSurahName, romanEnglishSurahName: $romanEnglishSurahName, totalNumberOfVersesInSurah: $totalNumberOfVersesInSurah, totalNumberOfRukuInSurah: $totalNumberOfRukuInSurah)';
  }

  @override
  bool operator ==(covariant Surah other) {
    if (identical(this, other)) return true;

    return other.surahNumber == surahNumber &&
        other.arabicSurahName == arabicSurahName &&
        other.romanEnglishSurahName == romanEnglishSurahName &&
        other.totalNumberOfVersesInSurah == totalNumberOfVersesInSurah &&
        other.totalNumberOfRukuInSurah == totalNumberOfRukuInSurah;
  }

  @override
  int get hashCode {
    return surahNumber.hashCode ^
        arabicSurahName.hashCode ^
        romanEnglishSurahName.hashCode ^
        totalNumberOfVersesInSurah.hashCode ^
        totalNumberOfRukuInSurah.hashCode;
  }
}

List<Surah> allSurahsDataList = <Surah>[
  Surah(
      surahNumber: 1,
      arabicSurahName: "سورۃ الفاتحہ",
      romanEnglishSurahName: "Al-Faatiha",
      totalNumberOfVersesInSurah: 7,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 2,
      arabicSurahName: " سورۃ البقرة",
      romanEnglishSurahName: "Al-Baqarah",
      totalNumberOfVersesInSurah: 286,
      totalNumberOfRukuInSurah: 40),
  Surah(
      surahNumber: 3,
      arabicSurahName: "سورۃ آل عمران	",
      romanEnglishSurahName: "Aal-E-Imran",
      totalNumberOfVersesInSurah: 200,
      totalNumberOfRukuInSurah: 20),
  Surah(
      surahNumber: 4,
      arabicSurahName: " سورۃ النساء",
      romanEnglishSurahName: "An-Nisa",
      totalNumberOfVersesInSurah: 176,
      totalNumberOfRukuInSurah: 24),
  Surah(
      surahNumber: 5,
      arabicSurahName: "سورۃ المائدة	",
      romanEnglishSurahName: "Al-Ma'idah",
      totalNumberOfVersesInSurah: 120,
      totalNumberOfRukuInSurah: 16),
  Surah(
      surahNumber: 6,
      arabicSurahName: " سورۃ الأنعام	",
      romanEnglishSurahName: "Al-An'am",
      totalNumberOfVersesInSurah: 165,
      totalNumberOfRukuInSurah: 20),
  Surah(
      surahNumber: 7,
      arabicSurahName: " سورۃ الأعراف",
      romanEnglishSurahName: "Al-A'raf",
      totalNumberOfVersesInSurah: 206,
      totalNumberOfRukuInSurah: 24),
  Surah(
      surahNumber: 8,
      arabicSurahName: " سورۃ الأنفال	",
      romanEnglishSurahName: "Al-Anfal",
      totalNumberOfVersesInSurah: 75,
      totalNumberOfRukuInSurah: 10),
  Surah(
      surahNumber: 9,
      arabicSurahName: "سورۃ التوبة",
      romanEnglishSurahName: "At-Tawbah",
      totalNumberOfVersesInSurah: 129,
      totalNumberOfRukuInSurah: 16),
  Surah(
      surahNumber: 10,
      arabicSurahName: " سورۃ يونس",
      romanEnglishSurahName: "Yunus",
      totalNumberOfVersesInSurah: 109,
      totalNumberOfRukuInSurah: 11),
  Surah(
      surahNumber: 11,
      arabicSurahName: "سورۃ هود	",
      romanEnglishSurahName: "Hud",
      totalNumberOfVersesInSurah: 123,
      totalNumberOfRukuInSurah: 10),
  Surah(
      surahNumber: 12,
      arabicSurahName: " سورۃ يوسف",
      romanEnglishSurahName: "Yusuf",
      totalNumberOfVersesInSurah: 111,
      totalNumberOfRukuInSurah: 12),
  Surah(
      surahNumber: 13,
      arabicSurahName: "سورۃ الرعد	",
      romanEnglishSurahName: "Ar-Ra'd",
      totalNumberOfVersesInSurah: 43,
      totalNumberOfRukuInSurah: 6),
  Surah(
      surahNumber: 14,
      arabicSurahName: " سورۃ إبراهيم		",
      romanEnglishSurahName: "Ibrahim",
      totalNumberOfVersesInSurah: 52,
      totalNumberOfRukuInSurah: 7),
  Surah(
      surahNumber: 15,
      arabicSurahName: " سورۃ الحجر",
      romanEnglishSurahName: "Al-Hijr",
      totalNumberOfVersesInSurah: 99,
      totalNumberOfRukuInSurah: 6),
  Surah(
      surahNumber: 16,
      arabicSurahName: " سورۃ النحل	",
      romanEnglishSurahName: "An-Nahl",
      totalNumberOfVersesInSurah: 128,
      totalNumberOfRukuInSurah: 16),
  Surah(
      surahNumber: 17,
      arabicSurahName: "سورۃ الإسراء",
      romanEnglishSurahName: "Al-Isra",
      totalNumberOfVersesInSurah: 111,
      totalNumberOfRukuInSurah: 12),
  Surah(
      surahNumber: 18,
      arabicSurahName: " سورۃ الكهف",
      romanEnglishSurahName: "Al-Kahf",
      totalNumberOfVersesInSurah: 110,
      totalNumberOfRukuInSurah: 12),
  Surah(
      surahNumber: 19,
      arabicSurahName: "سورۃ مريم",
      romanEnglishSurahName: "Maryam",
      totalNumberOfVersesInSurah: 98,
      totalNumberOfRukuInSurah: 6),
  Surah(
      surahNumber: 20,
      arabicSurahName: "سورۃ طه",
      romanEnglishSurahName: "Ta-Ha",
      totalNumberOfVersesInSurah: 135,
      totalNumberOfRukuInSurah: 8),
  Surah(
      surahNumber: 21,
      arabicSurahName: "سورۃ الأنبياء	",
      romanEnglishSurahName: "Al-Ma'idah",
      totalNumberOfVersesInSurah: 112,
      totalNumberOfRukuInSurah: 7),
  Surah(
      surahNumber: 22,
      arabicSurahName: "سورۃ الحج	",
      romanEnglishSurahName: "Al-Hajj",
      totalNumberOfVersesInSurah: 78,
      totalNumberOfRukuInSurah: 10),
  Surah(
      surahNumber: 23,
      arabicSurahName: " سورۃ المؤمنون",
      romanEnglishSurahName: "Al-Mu'minun",
      totalNumberOfVersesInSurah: 118,
      totalNumberOfRukuInSurah: 6),
  Surah(
      surahNumber: 24,
      arabicSurahName: " سورۃ النور ",
      romanEnglishSurahName: "An-Nur",
      totalNumberOfVersesInSurah: 64,
      totalNumberOfRukuInSurah: 9),
  Surah(
      surahNumber: 25,
      arabicSurahName: " سورۃ الفرقان",
      romanEnglishSurahName: "Al-Furqan",
      totalNumberOfVersesInSurah: 77,
      totalNumberOfRukuInSurah: 6),
  Surah(
      surahNumber: 26,
      arabicSurahName: " سورۃ الشعراء",
      romanEnglishSurahName: "Ash-Shu'ara'",
      totalNumberOfVersesInSurah: 227,
      totalNumberOfRukuInSurah: 11),
  Surah(
      surahNumber: 27,
      arabicSurahName: " سورۃ النمل",
      romanEnglishSurahName: "An-Naml",
      totalNumberOfVersesInSurah: 93,
      totalNumberOfRukuInSurah: 7),
  Surah(
      surahNumber: 28,
      arabicSurahName: " سورۃ القصص",
      romanEnglishSurahName: "Al-Qasas",
      totalNumberOfVersesInSurah: 88,
      totalNumberOfRukuInSurah: 9),
  Surah(
      surahNumber: 29,
      arabicSurahName: " سورۃ العنكبوت",
      romanEnglishSurahName: "Al-Ankabut",
      totalNumberOfVersesInSurah: 69,
      totalNumberOfRukuInSurah: 7),
  Surah(
      surahNumber: 30,
      arabicSurahName: " سورۃ الروم",
      romanEnglishSurahName: "Ar-Rum",
      totalNumberOfVersesInSurah: 60,
      totalNumberOfRukuInSurah: 6),
  Surah(
      surahNumber: 31,
      arabicSurahName: " سورۃ لقمان ",
      romanEnglishSurahName: "Luqman",
      totalNumberOfVersesInSurah: 34,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 32,
      arabicSurahName: " سورۃ السجدة",
      romanEnglishSurahName: "As-Sajda",
      totalNumberOfVersesInSurah: 30,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 33,
      arabicSurahName: " سورۃ الأحزاب ",
      romanEnglishSurahName: "Al-Ahzab",
      totalNumberOfVersesInSurah: 73,
      totalNumberOfRukuInSurah: 9),
  Surah(
      surahNumber: 34,
      arabicSurahName: " سورۃ سبأ ",
      romanEnglishSurahName: "Saba'",
      totalNumberOfVersesInSurah: 54,
      totalNumberOfRukuInSurah: 6),
  Surah(
      surahNumber: 35,
      arabicSurahName: " سورۃ فاطر",
      romanEnglishSurahName: "Fatir",
      totalNumberOfVersesInSurah: 45,
      totalNumberOfRukuInSurah: 5),
  Surah(
      surahNumber: 36,
      arabicSurahName: " سورۃ يس ",
      romanEnglishSurahName: "Ya-Sin",
      totalNumberOfVersesInSurah: 83,
      totalNumberOfRukuInSurah: 5),
  Surah(
      surahNumber: 37,
      arabicSurahName: " سورۃ الصافات",
      romanEnglishSurahName: "As-Saffat",
      totalNumberOfVersesInSurah: 182,
      totalNumberOfRukuInSurah: 5),
  Surah(
      surahNumber: 38,
      arabicSurahName: " سورۃ ص",
      romanEnglishSurahName: "Sad",
      totalNumberOfVersesInSurah: 88,
      totalNumberOfRukuInSurah: 5),
  Surah(
      surahNumber: 39,
      arabicSurahName: " سورۃ الزمر ",
      romanEnglishSurahName: "Az-Zumar",
      totalNumberOfVersesInSurah: 75,
      totalNumberOfRukuInSurah: 8),
  Surah(
      surahNumber: 40,
      arabicSurahName: " سورۃ غافر",
      romanEnglishSurahName: "Ghafir",
      totalNumberOfVersesInSurah: 85,
      totalNumberOfRukuInSurah: 9),
  Surah(
      surahNumber: 41,
      arabicSurahName: " سورۃ فصلت",
      romanEnglishSurahName: "Fussilat",
      totalNumberOfVersesInSurah: 54,
      totalNumberOfRukuInSurah: 6),
  Surah(
      surahNumber: 42,
      arabicSurahName: " سورۃ الشورى",
      romanEnglishSurahName: "Ash-Shura",
      totalNumberOfVersesInSurah: 53,
      totalNumberOfRukuInSurah: 5),
  Surah(
      surahNumber: 43,
      arabicSurahName: " سورۃ الزخرف",
      romanEnglishSurahName: "Az-Zukhruf",
      totalNumberOfVersesInSurah: 89,
      totalNumberOfRukuInSurah: 7),
  Surah(
      surahNumber: 44,
      arabicSurahName: " سورۃ الدخان",
      romanEnglishSurahName: "Ad-Dukhan",
      totalNumberOfVersesInSurah: 59,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 45,
      arabicSurahName: " سورۃ الجاثية",
      romanEnglishSurahName: "Al-Jathiyah",
      totalNumberOfVersesInSurah: 37,
      totalNumberOfRukuInSurah: 4),
  Surah(
      surahNumber: 46,
      arabicSurahName: " سورۃ الأحقاف",
      romanEnglishSurahName: "Al-Ahqaf",
      totalNumberOfVersesInSurah: 35,
      totalNumberOfRukuInSurah: 4),
  Surah(
      surahNumber: 47,
      arabicSurahName: " سورۃ محمد",
      romanEnglishSurahName: "Muhammad",
      totalNumberOfVersesInSurah: 38,
      totalNumberOfRukuInSurah: 4),
  Surah(
      surahNumber: 48,
      arabicSurahName: " سورۃ الفتح ",
      romanEnglishSurahName: "Al-Fath",
      totalNumberOfVersesInSurah: 29,
      totalNumberOfRukuInSurah: 4),
  Surah(
      surahNumber: 49,
      arabicSurahName: " سورۃ الحجرات  ",
      romanEnglishSurahName: "Al-Hujurat",
      totalNumberOfVersesInSurah: 18,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 50,
      arabicSurahName: " سورۃ ق",
      romanEnglishSurahName: "Qaf",
      totalNumberOfVersesInSurah: 45,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 51,
      arabicSurahName: " سورۃ الذاريات ",
      romanEnglishSurahName: "Adh-Dhariyat",
      totalNumberOfVersesInSurah: 60,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 52,
      arabicSurahName: " سورۃ الطور",
      romanEnglishSurahName: "At-Tur",
      totalNumberOfVersesInSurah: 49,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 53,
      arabicSurahName: " سورۃ النجم",
      romanEnglishSurahName: "An-Najm",
      totalNumberOfVersesInSurah: 62,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 54,
      arabicSurahName: " سورۃ القمر",
      romanEnglishSurahName: "Al-Qamar",
      totalNumberOfVersesInSurah: 55,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 55,
      arabicSurahName: " سورۃ الرحمن",
      romanEnglishSurahName: "Ar-Rahman",
      totalNumberOfVersesInSurah: 78,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 56,
      arabicSurahName: " سورۃ الواقعة",
      romanEnglishSurahName: "Al-Waqi'a",
      totalNumberOfVersesInSurah: 96,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 57,
      arabicSurahName: " سورۃ الحديد",
      romanEnglishSurahName: "Al-Hadid",
      totalNumberOfVersesInSurah: 29,
      totalNumberOfRukuInSurah: 4),
  Surah(
      surahNumber: 58,
      arabicSurahName: " سورۃ المجادلة",
      romanEnglishSurahName: "Al-Mujadila",
      totalNumberOfVersesInSurah: 22,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 59,
      arabicSurahName: " سورۃ الحشر",
      romanEnglishSurahName: "Al-Hashr",
      totalNumberOfVersesInSurah: 24,
      totalNumberOfRukuInSurah: 3),
  Surah(
      surahNumber: 60,
      arabicSurahName: " سورۃ الممتحنة",
      romanEnglishSurahName: "Al-Mumtahina",
      totalNumberOfVersesInSurah: 13,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 61,
      arabicSurahName: " سورۃ الصف",
      romanEnglishSurahName: "As-Saff",
      totalNumberOfVersesInSurah: 14,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 62,
      arabicSurahName: " سورۃ الجمعة",
      romanEnglishSurahName: "Al-Jumu'ah",
      totalNumberOfVersesInSurah: 11,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 63,
      arabicSurahName: " سورۃ المنافقون",
      romanEnglishSurahName: "Al-Munafiqun",
      totalNumberOfVersesInSurah: 11,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 64,
      arabicSurahName: " سورۃ التغابن",
      romanEnglishSurahName: "At-Taghabun",
      totalNumberOfVersesInSurah: 18,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 65,
      arabicSurahName: " سورۃ الطلاق",
      romanEnglishSurahName: "At-Talaq",
      totalNumberOfVersesInSurah: 12,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 66,
      arabicSurahName: " سورۃ التحريم",
      romanEnglishSurahName: "At-Tahrim",
      totalNumberOfVersesInSurah: 12,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 67,
      arabicSurahName: " سورۃ الملك",
      romanEnglishSurahName: "Al-Mulk",
      totalNumberOfVersesInSurah: 30,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 68,
      arabicSurahName: " سورۃ القلم",
      romanEnglishSurahName: "Al-Qalam",
      totalNumberOfVersesInSurah: 52,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 69,
      arabicSurahName: " سورۃ الحاقة",
      romanEnglishSurahName: "Al-Haaqqa",
      totalNumberOfVersesInSurah: 52,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 70,
      arabicSurahName: " سورۃ المعارج",
      romanEnglishSurahName: "Al-Ma'arij",
      totalNumberOfVersesInSurah: 44,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 71,
      arabicSurahName: " سورۃ نوح",
      romanEnglishSurahName: "Nuh",
      totalNumberOfVersesInSurah: 28,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 72,
      arabicSurahName: " سورۃ الجن",
      romanEnglishSurahName: "Al-Jinn",
      totalNumberOfVersesInSurah: 28,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 73,
      arabicSurahName: " سورۃ المزمل",
      romanEnglishSurahName: "Al-Muzzammil",
      totalNumberOfVersesInSurah: 20,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 74,
      arabicSurahName: " سورۃ المدثر",
      romanEnglishSurahName: "Al-Muddathir",
      totalNumberOfVersesInSurah: 56,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 75,
      arabicSurahName: " سورۃ القيامة",
      romanEnglishSurahName: "Al-Qiyamah",
      totalNumberOfVersesInSurah: 40,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 76,
      arabicSurahName: " سورۃ الإنسان",
      romanEnglishSurahName: "Al-Insan",
      totalNumberOfVersesInSurah: 31,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 77,
      arabicSurahName: " سورۃ المرسلات",
      romanEnglishSurahName: "Al-Mursalat",
      totalNumberOfVersesInSurah: 50,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 78,
      arabicSurahName: " سورۃ النبأ",
      romanEnglishSurahName: "An-Naba'",
      totalNumberOfVersesInSurah: 40,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 79,
      arabicSurahName: " سورۃ النازعات",
      romanEnglishSurahName: "An-Nazi'at",
      totalNumberOfVersesInSurah: 46,
      totalNumberOfRukuInSurah: 2),
  Surah(
      surahNumber: 80,
      arabicSurahName: " سورۃ عبس",
      romanEnglishSurahName: "Abasa",
      totalNumberOfVersesInSurah: 42,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 81,
      arabicSurahName: " سورۃ التكوير ",
      romanEnglishSurahName: "At-Takwir",
      totalNumberOfVersesInSurah: 29,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 82,
      arabicSurahName: "الإنفطار",
      romanEnglishSurahName: "Al-Infitar",
      totalNumberOfVersesInSurah: 19,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 83,
      arabicSurahName: " سورۃ المطففين",
      romanEnglishSurahName: "Al-Mutaffifin",
      totalNumberOfVersesInSurah: 36,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 84,
      arabicSurahName: " سورۃ الإنشقاق",
      romanEnglishSurahName: "Al-Inshiqaq",
      totalNumberOfVersesInSurah: 25,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 85,
      arabicSurahName: " سورۃ البروج",
      romanEnglishSurahName: "Al-Burooj",
      totalNumberOfVersesInSurah: 22,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 86,
      arabicSurahName: " سورۃ الطارق",
      romanEnglishSurahName: "At-Tariq",
      totalNumberOfVersesInSurah: 17,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 87,
      arabicSurahName: " سورۃ الأعلى",
      romanEnglishSurahName: "Al-A'la",
      totalNumberOfVersesInSurah: 19,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 88,
      arabicSurahName: " سورۃ الغاشية",
      romanEnglishSurahName: "Al-Ghashiyah",
      totalNumberOfVersesInSurah: 26,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 89,
      arabicSurahName: " سورۃ الفجر",
      romanEnglishSurahName: "Al-Fajr",
      totalNumberOfVersesInSurah: 30,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 90,
      arabicSurahName: " سورۃ البلد",
      romanEnglishSurahName: "Al-Balad",
      totalNumberOfVersesInSurah: 20,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 91,
      arabicSurahName: " سورۃ الشمس",
      romanEnglishSurahName: "Ash-Shams",
      totalNumberOfVersesInSurah: 15,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 92,
      arabicSurahName: " سورۃ الليل",
      romanEnglishSurahName: "Al-Lail",
      totalNumberOfVersesInSurah: 21,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 93,
      arabicSurahName: " سورۃ الضحى",
      romanEnglishSurahName: "Ad-Duhaa",
      totalNumberOfVersesInSurah: 11,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 94,
      arabicSurahName: " سورۃ الشرح",
      romanEnglishSurahName: "Ash-Sharh",
      totalNumberOfVersesInSurah: 8,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 95,
      arabicSurahName: " سورۃ التين",
      romanEnglishSurahName: "At-Tin",
      totalNumberOfVersesInSurah: 8,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 96,
      arabicSurahName: "سورۃ العلق",
      romanEnglishSurahName: "Al-Alaq",
      totalNumberOfVersesInSurah: 19,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 97,
      arabicSurahName: "سورۃ القدر",
      romanEnglishSurahName: "Al-Qadr",
      totalNumberOfVersesInSurah: 5,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 98,
      arabicSurahName: " سورۃ البينة",
      romanEnglishSurahName: "Al-Bayyinah",
      totalNumberOfVersesInSurah: 8,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 99,
      arabicSurahName: "سورۃ الزلزلة",
      romanEnglishSurahName: "Az-Zalzalah",
      totalNumberOfVersesInSurah: 8,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 100,
      arabicSurahName: "سورۃ العاديات",
      romanEnglishSurahName: "Al-Adiyat",
      totalNumberOfVersesInSurah: 11,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 101,
      arabicSurahName: "سورۃ القارعة",
      romanEnglishSurahName: "Al-Qari'ah",
      totalNumberOfVersesInSurah: 11,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 102,
      arabicSurahName: "سورۃ التكاثر",
      romanEnglishSurahName: "At-Takathur",
      totalNumberOfVersesInSurah: 8,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 103,
      arabicSurahName: "سورۃ العصر",
      romanEnglishSurahName: "Al-Asr",
      totalNumberOfVersesInSurah: 3,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 104,
      arabicSurahName: "سورۃ الهمزة",
      romanEnglishSurahName: "Al-Humazah",
      totalNumberOfVersesInSurah: 9,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 105,
      arabicSurahName: "سورۃ الفيل",
      romanEnglishSurahName: "Al-Fil",
      totalNumberOfVersesInSurah: 5,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 106,
      arabicSurahName: "سورۃ قريش",
      romanEnglishSurahName: "Quraish",
      totalNumberOfVersesInSurah: 4,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 107,
      arabicSurahName: "سورۃ الماعون",
      romanEnglishSurahName: "Al-Ma'un",
      totalNumberOfVersesInSurah: 7,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 108,
      arabicSurahName: "سورۃ الكوثر",
      romanEnglishSurahName: "Al-Kawthar",
      totalNumberOfVersesInSurah: 3,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 109,
      arabicSurahName: "سورۃ الكافرون",
      romanEnglishSurahName: "Al-Kafirun",
      totalNumberOfVersesInSurah: 6,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 110,
      arabicSurahName: "سورۃ النصر",
      romanEnglishSurahName: "An-Nasr",
      totalNumberOfVersesInSurah: 3,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 111,
      arabicSurahName: "سورۃ الصمد",
      romanEnglishSurahName: "Al-Samad",
      totalNumberOfVersesInSurah: 5,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 112,
      arabicSurahName: "سورۃ الإخلاص",
      romanEnglishSurahName: "Al-Ikhlas",
      totalNumberOfVersesInSurah: 4,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 113,
      arabicSurahName: "سورۃ الفلق",
      romanEnglishSurahName: "Al-Falaq",
      totalNumberOfVersesInSurah: 5,
      totalNumberOfRukuInSurah: 1),
  Surah(
      surahNumber: 114,
      arabicSurahName: "سورۃ الناس",
      romanEnglishSurahName: "An-Nas",
      totalNumberOfVersesInSurah: 6,
      totalNumberOfRukuInSurah: 1),
];
