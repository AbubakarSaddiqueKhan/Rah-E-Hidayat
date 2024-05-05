import 'dart:convert';

import 'package:flutter_quran_api_practice/model/Asma_Ul_Husna_Model/importance_of_asma_ul_husna_model.dart';

class AsmaUlHusnaModel {
  int id;
  String arabicName;
  String englishTranslation;
  String urduTranslation;
  AsmaUlHusnaModel({
    required this.id,
    required this.arabicName,
    required this.englishTranslation,
    required this.urduTranslation,
  });

  AsmaUlHusnaModel copyWith({
    int? id,
    String? arabicName,
    String? englishTranslation,
    String? urduTranslation,
  }) {
    return AsmaUlHusnaModel(
      id: id ?? this.id,
      arabicName: arabicName ?? this.arabicName,
      englishTranslation: englishTranslation ?? this.englishTranslation,
      urduTranslation: urduTranslation ?? this.urduTranslation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'arabicName': arabicName,
      'englishTranslation': englishTranslation,
      'urduTranslation': urduTranslation,
    };
  }

  factory AsmaUlHusnaModel.fromMap(Map<String, dynamic> map) {
    return AsmaUlHusnaModel(
      id: map['id'] as int,
      arabicName: map['arabicName'] as String,
      englishTranslation: map['englishTranslation'] as String,
      urduTranslation: map['urduTranslation'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AsmaUlHusnaModel.fromJson(String source) =>
      AsmaUlHusnaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AsmaUlHusnaModel(id: $id, arabicName: $arabicName, englishTranslation: $englishTranslation, urduTranslation: $urduTranslation)';
  }

  @override
  bool operator ==(covariant AsmaUlHusnaModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.arabicName == arabicName &&
        other.englishTranslation == englishTranslation &&
        other.urduTranslation == urduTranslation;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        arabicName.hashCode ^
        englishTranslation.hashCode ^
        urduTranslation.hashCode;
  }
}

List<AsmaUlHusnaaImportanceModel> quranicVersesAndHadithListOnAllahNames =
    <AsmaUlHusnaaImportanceModel>[
  AsmaUlHusnaaImportanceModel(
      id: 1,
      arabicText:
          "وَلِلَّهِ ٱلْأَسْمَآءُ ٱلْحُسْنَىٰ فَٱدْعُوهُ بِهَا ۖ وَذَرُوا۟ ٱلَّذِينَ يُلْحِدُونَ فِىٓ أَسْمَـٰٓئِهِۦ ۚ سَيُجْزَوْنَ مَا كَانُوا۟ يَعْمَلُونَ ١٨٠",
      urduText:
          "اور اچھے اچھے نام اللہ ہی کے لیے ہیں سو ان ناموں سے اللہ ہی کو موسوم کیا کرو اور ایسے لوگوں سے تعلق بھی نہ رکھو جو اس کے ناموں میں کج روی کرتے ہیں، ان لوگوں کو ان کے کئے کی ضرور سزا ملے گی",
      englishText:
          "And to Allāh belong the best names, so invoke Him by them. And leave [the company of] those who practice deviation concerning His names.1 They will be recompensed for what they have been doing.",
      reference: "Surah Al-A'raf - 180"),
  AsmaUlHusnaaImportanceModel(
      id: 2,
      arabicText:
          "ٱللَّهُ لَآ إِلَـٰهَ إِلَّا هُوَ ۖ لَهُ ٱلْأَسْمَآءُ ٱلْحُسْنَىٰ ٨",
      urduText: "وہی اللہ ہے جس کے سوا کوئی معبود نہیں، بہترین نام اسی کے ہیں",
      englishText:
          "Allah—there is no god ˹worthy of worship˺ except Him. He has the Most Beautiful Names.",
      reference: "Surah Taha - 8"),
  AsmaUlHusnaaImportanceModel(
      id: 3,
      arabicText:
          "هُوَ ٱللَّهُ ٱلْخَـٰلِقُ ٱلْبَارِئُ ٱلْمُصَوِّرُ ۖ لَهُ ٱلْأَسْمَآءُ ٱلْحُسْنَىٰ ۚ يُسَبِّحُ لَهُۥ مَا فِى ٱلسَّمَـٰوَٰتِ وَٱلْأَرْضِ ۖ وَهُوَ ٱلْعَزِيزُ ٱلْحَكِيمُ ٢٤",
      urduText:
          "وہی اللہ ہے پیدا کرنے واﻻ وجود بخشنے واﻻ، صورت بنانے واﻻ، اسی کے لیے (نہایت) اچھے نام ہیں، ہر چیز خواه وه آسمانوں میں ہو خواه زمین میں ہو اس کی پاکی بیان کرتی ہے، اور وہی غالب حکمت واﻻ ہے",
      englishText:
          "He is Allah: the Creator, the Inventor, the Shaper. He ˹alone˺ has the Most Beautiful Names. Whatever is in the heavens and the earth ˹constantly˺ glorifies Him. And He is the Almighty, All-Wise.",
      reference: "Surah Al-Hashr - 24"),
  AsmaUlHusnaaImportanceModel(
      id: 4,
      arabicText:
          "حَدَّثَنَا أَبُو الْيَمَانِ، أَخْبَرَنَا شُعَيْبٌ، حَدَّثَنَا أَبُو الزِّنَادِ، عَنِ الأَعْرَجِ، عَنْ أَبِي هُرَيْرَةَ ـ رضى الله عنه ـ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم قَالَ \" إِنَّ لِلَّهِ تِسْعَةً وَتِسْعِينَ اسْمَا مِائَةً إِلاَّ وَاحِدًا مَنْ أَحْصَاهَا دَخَلَ الْجَنَّةَ \"",
      urduText:
          " ہم سے ابوالیمان نے بیان کیا ‘ کہا کہ ہم کو شعیب نے خبر دی ‘ ان سے ابوالزناد نے بیان کیا ‘ ان سے اعرج نے اور ان سے ابوہریرہ رضی اللہ عنہ نے کہ   رسول اللہ صلی اللہ علیہ وسلم نے فرمایا ”اللہ تعالیٰ کے ننانوے نام ہیں یعنی ایک کم سو۔ جو شخص ان سب کو محفوظ رکھے گا وہ جنت میں داخل ہو گا۔“ ",
      englishText:
          "Narrated Abu Huraira:Allah's Messenger (ﷺ) said, \"Allah has ninety-nine names, i.e. one-hundred minus one, and whoever knows them will go to Paradise.\"",
      reference: "Sahih al-Bukhari 2736"),
  AsmaUlHusnaaImportanceModel(
      id: 5,
      arabicText:
          "حَدَّثَنَا عَمْرٌو النَّاقِدُ، وَزُهَيْرُ بْنُ حَرْبٍ، وَابْنُ أَبِي عُمَرَ، جَمِيعًا عَنْ سُفْيَانَ، - وَاللَّفْظُ لِعَمْرٍو - حَدَّثَنَا سُفْيَانُ بْنُ عُيَيْنَةَ، عَنْ أَبِي الزِّنَادِ، عَنِ الأَعْرَجِ، عَنْ أَبِي هُرَيْرَةَ، عَنِ النَّبِيِّ صلى الله عليه وسلم قَالَ \" لِلَّهِ تِسْعَةٌ وَتِسْعُونَ اسْمًا مَنْ حَفِظَهَا دَخَلَ الْجَنَّةَ وَإِنَّ اللَّهَ وِتْرٌ يُحِبُّ الْوِتْرَ \" وَفِي رِوَايَةِ ابْنِ أَبِي عُمَرَ \" مَنْ أَحْصَاهَا \"",
      urduText:
          "ابوہریرہ رضی اللہ عنہ بیان کرتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا:اللہ کے ننانوے نام ہیں۔ جو ان کو یاد کرے گا وہ جنت میں جائے گا۔ بے شک اللہ طاق ہے (وہ ایک ہے اور یہ ایک طاق عدد ہے) اور وہ طاق عدد کو پسند کرتا ہے۔ اور ابن عمر رضی اللہ عنہما کی روایت میں یہ الفاظ ہیں: جس نے ان کو شمار کیا۔",
      englishText:
          "Abu Huraira reported Allah's Messenger (ﷺ) as saying:There are ninety-nine names of Allah; he who commits them to memory would get into Paradise. Verily, Allah is Odd (He is one, and it is an odd number) and He loves odd number. And in the narration of Ibn 'Umar (the words are):\" He who enumerated them.\"",
      reference: "Sahih Muslim 2677 - A"),
  AsmaUlHusnaaImportanceModel(
      id: 6,
      arabicText:
          "حَدَّثَنَا أَبُو الْيَمَانِ، أَخْبَرَنَا شُعَيْبٌ، حَدَّثَنَا أَبُو الزِّنَادِ، عَنِ الأَعْرَجِ، عَنْ أَبِي هُرَيْرَةَ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم قَالَ \" إِنَّ لِلَّهِ تِسْعَةً وَتِسْعِينَ اسْمًا مِائَةً إِلاَّ وَاحِدًا، مَنْ أَحْصَاهَا دَخَلَ الْجَنَّةَ {‏أَحْصَيْنَاهُ‏}‏ حَفِظْنَاهُ‏.‏",
      urduText:
          "ابوہریرہ رضی اللہ عنہ روایت کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اللہ کے ننانوے نام ہیں، ایک سو کم، اور جس نے ان سب کو دل سے یاد کیا وہ جنت میں جائے گا۔ کسی چیز کو شمار کرنے کا مطلب ہے اسے دل سے جاننا۔",
      englishText:
          "Narrated Abu Huraira:Allah's Messenger (ﷺ) said, \"Allah has ninety-nine Names, one-hundred less one; and he who memorized them all by heart will enter Paradise.\" To count something means to know it by heart.",
      reference: "Sahih al-Bukhari 7392")
];

List<AsmaUlHusnaModel> allAsmaUlHusnaasDataList = <AsmaUlHusnaModel>[
  AsmaUlHusnaModel(
      id: 1,
      arabicName: "اَاللہُ",
      englishTranslation: "Allah",
      urduTranslation: "اَاللہُ"),
  AsmaUlHusnaModel(
      id: 2,
      arabicName: "الرَّحْمَنُ",
      englishTranslation: "The Beneficent	",
      urduTranslation: "سب سے زیادہ رحم کرنے والا"),
  AsmaUlHusnaModel(
      id: 3,
      arabicName: "اَلرَّحِیْمُ",
      englishTranslation: "The Merciful	",
      urduTranslation: "بڑا رحم کرنے والا	"),
  AsmaUlHusnaModel(
      id: 4,
      arabicName: "اَلْمَلِکُ",
      englishTranslation: "The Sovereign Lord	",
      urduTranslation: "بادشاہ اور غلبہ کا مالک"),
  AsmaUlHusnaModel(
      id: 5,
      arabicName: "اَلْقُدُّوْسُ",
      englishTranslation: "The Absolutely Pure",
      urduTranslation: "بالکل پاک"),
  AsmaUlHusnaModel(
      id: 6,
      arabicName: "اَلسَّلَامُ",
      englishTranslation: "The Source of Peace",
      urduTranslation: "امن و سلامتی کا سر چشمہ"),
  AsmaUlHusnaModel(
      id: 7,
      arabicName: "اَلمُؤْمِنُ",
      englishTranslation: "The One Who gives Emaan and Security",
      urduTranslation: "ایمان اور سلامتی دینے والا"),
  AsmaUlHusnaModel(
      id: 8,
      arabicName: "اَلْمُھَیْمِنُ",
      englishTranslation: "The Guardian, The Witness, The Overseer",
      urduTranslation: "سرپرست، گواہ، نگران"),
  AsmaUlHusnaModel(
      id: 9,
      arabicName: "اَلْعَزِیْزُ",
      englishTranslation: "The Mighty	",
      urduTranslation: "زورآور، طاقتور , بڑے اقتدار والا"),
  AsmaUlHusnaModel(
      id: 10,
      arabicName: "اَلْجَبَّارُ",
      englishTranslation: "The Compeller",
      urduTranslation: "زبردست غلبہ رکھنے والا"),
  AsmaUlHusnaModel(
      id: 11,
      arabicName: "اَلْمُتَکَبِّرُ",
      englishTranslation: "The Supreme, The Majestic",
      urduTranslation: "عظمت و کبریائی کا سر چشمہ , اعلیٰ، عظیم الشان"),
  AsmaUlHusnaModel(
      id: 12,
      arabicName: "اَلْخَالِقُ",
      englishTranslation: "The Creator, The Maker",
      urduTranslation: "وجود بخشنے والا، پیدا کرنے والا , خالق، بنانے والا"),
  AsmaUlHusnaModel(
      id: 13,
      arabicName: "اَلْبَارِیُ",
      englishTranslation: "The Originator",
      urduTranslation: "ہر چیز کو عدم سے وجود میں لانے والا	, موجد"),
  AsmaUlHusnaModel(
      id: 14,
      arabicName: "اَلْمُصَوِّرُ",
      englishTranslation: "The Fashioner",
      urduTranslation: "مخلوقات کی صورت گری کرنے والا"),
  AsmaUlHusnaModel(
      id: 15,
      arabicName: "اَلْغَفَّارُ",
      englishTranslation: "The Forgiver	 , The All- and Oft-Forgiving",
      urduTranslation:
          "سب سے زیادہ بخشنے والا , بڑا درگزر کرنے والا	, معاف کرنے والا"),
  AsmaUlHusnaModel(
      id: 16,
      arabicName: "اَلْقَہَّارُ",
      englishTranslation: "The Subduer, The Ever-Dominating",
      urduTranslation:
          "اپنی مخلوق پر کامل غلبہ اور اختیار رکھنے والا	, محکوم، ہمیشہ غالب رہنے والا"),
  AsmaUlHusnaModel(
      id: 17,
      arabicName: "اَلْوَھَابُ",
      englishTranslation: "The Bestower",
      urduTranslation: "بے غرض بخشش اور سخاوت کرنے والا	, عطا کرنے والا"),
  AsmaUlHusnaModel(
      id: 18,
      arabicName: "اَلرَّزَّاقُ",
      englishTranslation: "The Provider",
      urduTranslation: "حاجت روا	, فراہم کرنے والا"),
  AsmaUlHusnaModel(
      id: 19,
      arabicName: "اَلْفَّتَّاحُ",
      englishTranslation: "The Opener",
      urduTranslation: "مشکلوں کو حل کرنے والا"),
  AsmaUlHusnaModel(
      id: 20,
      arabicName: "اَلْعَلِیْمُ",
      englishTranslation: "The All-Knowing, The Omniscient",
      urduTranslation:
          "ہر چیز جاننے والا	, سب کچھ جاننے والا , سب سے زیادہ جاننے والا"),
  AsmaUlHusnaModel(
      id: 21,
      arabicName: "اَلْقَابِضُ",
      englishTranslation: "The Withholder",
      urduTranslation: "ہر شے پر قبضہ رکھنے والا	, روک رکھنے والا"),
  AsmaUlHusnaModel(
      id: 22,
      arabicName: "اَلْبَاسِطُ",
      englishTranslation: "The Expander, The Extender",
      urduTranslation: "وسعت دینے والا	, توسیع کرنے والا"),
  AsmaUlHusnaModel(
      id: 23,
      arabicName: "اَلْخَافِضُ",
      englishTranslation: "The Reducer",
      urduTranslation: "پست کرنے والا	, کم کرنے وال"),
  AsmaUlHusnaModel(
      id: 24,
      arabicName: "اَلرَّافِعُ",
      englishTranslation: "The Exalter, The Elevator",
      urduTranslation: "وہ جو بلندیاں عطا کرتا ہے	"),
  AsmaUlHusnaModel(
      id: 25,
      arabicName: "اَلْمُعِزُّ",
      englishTranslation: "The Honourer, The Bestower",
      urduTranslation: "عزت دینے والا، عطا کرنے والا"),
  AsmaUlHusnaModel(
      id: 26,
      arabicName: "اَلْمُذِلُّ",
      englishTranslation: "The Dishonourer, The Humiliator",
      urduTranslation: "ذلت سینے والا	, بے عزت کرنے والا، ذلیل کرنے والا"),
  AsmaUlHusnaModel(
      id: 27,
      arabicName: "اَلسَّمِیْعُ",
      englishTranslation: "The All-Hearing",
      urduTranslation: "بندوں کی سننے والا	, سب سننے والا"),
  AsmaUlHusnaModel(
      id: 28,
      arabicName: "اَلْبَصِیْرُ",
      englishTranslation: "The All-Seeing",
      urduTranslation: "ہر چیز کو دیکھنے والا	, سب کچھ دیکھنے والا"),
  AsmaUlHusnaModel(
      id: 29,
      arabicName: "اَلْحَکَمُ",
      englishTranslation: "The Judge, The Giver of Justice",
      urduTranslation: "انصاف کرنے والا	, انصاف دینے والا"),
  AsmaUlHusnaModel(
      id: 30,
      arabicName: "اَلْعَدَلُ",
      englishTranslation: "The Utterly Just",
      urduTranslation: "عدل کرنے والا	"),
  AsmaUlHusnaModel(
      id: 31,
      arabicName: "اَلَّطِیْفُ",
      englishTranslation: "The Subtle One, The Most Gentle",
      urduTranslation: "بڑا لطیف و کرم کرنے والا	, لطیف ایک، سب سے زیادہ نرم"),
  AsmaUlHusnaModel(
      id: 32,
      arabicName: "اَلْخَبِیْرُ",
      englishTranslation: "The Aware,  The Acquainted, the All-Aware",
      urduTranslation: "باخبر اور آگاہ, واقف، سب سے باخبر"),
  AsmaUlHusnaModel(
      id: 33,
      arabicName: "اَلْحَلِیْمُ",
      englishTranslation: "The Forbearing One	",
      urduTranslation: "بڑا بردبار اور برداشت کرنے والا	"),
  AsmaUlHusnaModel(
      id: 34,
      arabicName: "اَلْعَظْیْمُ",
      englishTranslation: "The Great, The Magnificent, The Supreme",
      urduTranslation: "بڑی بزرگی والا	, عظیم، شاندار، اعلیٰ"),
  AsmaUlHusnaModel(
      id: 35,
      arabicName: "اَلٌغَفُوٌرُ",
      englishTranslation: "The Forgiving, The Exceedingly Forgiving",
      urduTranslation: "بڑآ بخشش کرنے والا	, معاف کرنے والا، بے حد بخشنے والا"),
  AsmaUlHusnaModel(
      id: 36,
      arabicName: "اَلشَّکُوْرُ",
      englishTranslation: "The Most Appreciative",
      urduTranslation: "بڑا قدر کرنے والا	, سب سے زیادہ تعریف کرنے والا"),
  AsmaUlHusnaModel(
      id: 37,
      arabicName: "اَلْعَلِیُّ",
      englishTranslation: "The Most High, The Exalted",
      urduTranslation: "بڑی بلندیوں والا	, سب سے اعلیٰ، برگزیدہ"),
  AsmaUlHusnaModel(
      id: 38,
      arabicName: "اَلْکَبِیْرُ",
      englishTranslation: "The Most Great, The Greatest, The Most Grand",
      urduTranslation: "بہت بڑا	, سب سے بڑا، عظیم ترین، سب سے بڑا"),
  AsmaUlHusnaModel(
      id: 39,
      arabicName: "اَلْحَفِیْظُ",
      englishTranslation: "The Preserver, The All-Heedful and All-Protecting",
      urduTranslation:
          "سب کا محافظ، حفاظ تکرنے والا	, نگہبان، سب پر دھیان دینے والا اور سب کی حفاظت کرنے والا"),
  AsmaUlHusnaModel(
      id: 40,
      arabicName: "اَلْمُقِیْتُ",
      englishTranslation: "The Maintainer, The Sustainer",
      urduTranslation: "سب کو روزی اور توانائی دینے والا	, برقرار رکھنے والا"),
  AsmaUlHusnaModel(
      id: 41,
      arabicName: "اَلْحَسِیْبُ",
      englishTranslation: "The Reckoner, The Sufficient",
      urduTranslation: "بڑا شمار کنندہ	, حساب کرنے والا، کافی"),
  AsmaUlHusnaModel(
      id: 42,
      arabicName: "اَلْجَلِیْلُ",
      englishTranslation: "The Sublime One, The Majestic",
      urduTranslation: "بلند مرتبے والا	, عظیم الشان"),
  AsmaUlHusnaModel(
      id: 43,
      arabicName: "اَلْکَرِیْمُ",
      englishTranslation:
          "The Generous One, The Most Generous, The Most Esteemed",
      urduTranslation:
          "بڑا کرم کرنے والا	, سخی، سب سے زیادہ فیاض، سب سے زیادہ معزز"),
  AsmaUlHusnaModel(
      id: 44,
      arabicName: "اَلرَّقِیْبُ",
      englishTranslation: "The Watchful",
      urduTranslation: "بڑا نگہبان	, چوکس"),
  AsmaUlHusnaModel(
      id: 45,
      arabicName: "اَلْمُجِیْبُ",
      englishTranslation: "The Responsive",
      urduTranslation: "دعائیں قبول کرنے والا	, قبول کرنے والا, ذمہ دار"),
  AsmaUlHusnaModel(
      id: 46,
      arabicName: "اَلْوَاسِعُ",
      englishTranslation:
          "The All-Embracing, The All-Encompassing, the Boundless",
      urduTranslation:
          "بڑی وسعت والا	, , سب کو اپنانے والا، ہر طرح کا احاطہ کرنے والا، بے حد"),
  AsmaUlHusnaModel(
      id: 47,
      arabicName: "اَلْحَکِیْمُ",
      englishTranslation: "The Wise, The All-Wise",
      urduTranslation: "بڑی حکمت والا	,  عقلمند"),
  AsmaUlHusnaModel(
      id: 48,
      arabicName: "اَلْوَدُوْدُ",
      englishTranslation: "The Loving, The Most Loving",
      urduTranslation:
          "بڑا محبت کرنے والا	, محبت کرنے والا، سب سے زیادہ پیار کرنے والا"),
  AsmaUlHusnaModel(
      id: 49,
      arabicName: "اَلْمَجِیْدُ",
      englishTranslation:
          "The Most Glorious One, The Glorious, The Most Honorable",
      urduTranslation:
          "بڑی بزرگی والا	, سب سے زیادہ جلال والا، شاندار، سب سے زیادہ عزت والا"),
  AsmaUlHusnaModel(
      id: 50,
      arabicName: "اَلْبَاعِثُ",
      englishTranslation: "The Resurrector, The Raiser of the Dead",
      urduTranslation: "مردوں کو زندہ کرنے والا	, زندہ کرنے والا"),
  AsmaUlHusnaModel(
      id: 51,
      arabicName: "اَلشَّہِیْدُ",
      englishTranslation: "The Witness, The All- and Ever Witnessing",
      urduTranslation: "حاضر و ناظر	, گواہ، سب اور ہمیشہ گواہ"),
  AsmaUlHusnaModel(
      id: 52,
      arabicName: "اَلْحَقُّ",
      englishTranslation: "The Truth, The Absolute Truth",
      urduTranslation: "برحق و برقرار	, سچائی، مطلق سچائی"),
  AsmaUlHusnaModel(
      id: 53,
      arabicName: "اَلْوَکِیْلُ",
      englishTranslation: "The Trustee, The Disposer of Affairs",
      urduTranslation: "بڑا کار ساز	, امور کا تصرف کرنے والا"),
  AsmaUlHusnaModel(
      id: 54,
      arabicName: "اَلْقَوِیُّ",
      englishTranslation: "The Most Strong, The All-Strong",
      urduTranslation: "بڑی طاقت و قوت والا	,  سب سے مضبوط"),
  AsmaUlHusnaModel(
      id: 55,
      arabicName: "اَلْمَتِیْنُ",
      englishTranslation: "The Firm One, The Steadfast",
      urduTranslation: "انتہائی مضبوط و مستحکم	, مضبوط، ثابت قدم"),
  AsmaUlHusnaModel(
      id: 56,
      arabicName: "اَلْوَلِیُّ",
      englishTranslation: "The Protecting Friend, The Protecting Associate",
      urduTranslation:
          "مدد گار اور حمایتی	 , حفاظت کرنے والا دوست، حفاظت کرنے والا ساتھی "),
  AsmaUlHusnaModel(
      id: 57,
      arabicName: "اَلْحَمِیْدُ",
      englishTranslation: "The Praiseworthy",
      urduTranslation: "تعریف کے لائق	, قابل تعریف "),
  AsmaUlHusnaModel(
      id: 58,
      arabicName: "اَلْمُحْصِیُّ",
      englishTranslation: "The Reckoner,  The All-Enumerating, The Counter",
      urduTranslation:
          "اپنے علم اور شمار میں رکھنے والا	, حساب کرنے والا، سب کو گننے والا، جواب دینے والا"),
  AsmaUlHusnaModel(
      id: 59,
      arabicName: "اَلْمُبْدِیُّ",
      englishTranslation: "The Originator, The Initiator",
      urduTranslation: "پہلی بار پیدا کرنے والا	, ابتدا کرنے وال"),
  AsmaUlHusnaModel(
      id: 60,
      arabicName: "اَلْمُعِیٌدُ",
      englishTranslation: "The Restorer, The Reinstater",
      urduTranslation: "دوبارہ پیدا کرنے والا	 , بحال کرنے والا"),
  AsmaUlHusnaModel(
      id: 61,
      arabicName: "اَلْمُحْیِ",
      englishTranslation: "The Giver of Life",
      urduTranslation: "زندگی دینے والا	 "),
  AsmaUlHusnaModel(
      id: 62,
      arabicName: "اَلْمُمِیْتُ",
      englishTranslation:
          "The Creator of Death, The Bringer of Death, The Destroyer",
      urduTranslation:
          "موت دینے والا	, موت کا خالق، موت لانے والا، تباہ کرنے والا"),
  AsmaUlHusnaModel(
      id: 63,
      arabicName: "اَلْحَیُّ",
      englishTranslation: "The Alive, The Ever-Living",
      urduTranslation: "ہمیشہ ہمیشہ زندہ رہنے والا	, زندہ"),
  AsmaUlHusnaModel(
      id: 64,
      arabicName: "اَلْقَیُّوْمُ",
      englishTranslation: "The Sustainer, The Self-Subsisting",
      urduTranslation:
          "قائم رکھنے اور سنبھالنے والا	, برقرار رکھنے والا، خود کو قائم رکھنے والا"),
  AsmaUlHusnaModel(
      id: 65,
      arabicName: "اَلْوَاجِدُ",
      englishTranslation: "The Finder, The Perceiver",
      urduTranslation: "ہر چیز کا پانے والا	, تلاش کرنے والا، جاننے والا"),
  AsmaUlHusnaModel(
      id: 66,
      arabicName: "اَلْمَاجِدُ",
      englishTranslation: "The Noble, The Illustrious, the Magnificent",
      urduTranslation: "بزرگی اور بڑائی والا	, عظیم، شاندار، شاندار"),
  AsmaUlHusnaModel(
      id: 67,
      arabicName: "اَلٌوَاحِدُ",
      englishTranslation: "The Unique, The One",
      urduTranslation: "بے مثال، اکیلا	, منفرد"),
  AsmaUlHusnaModel(
      id: 68,
      arabicName: "اَلْاَحَدُ",
      englishTranslation: "The One,  The Unique, The Only One",
      urduTranslation: "اکیلا , واحد، منفرد"),
  AsmaUlHusnaModel(
      id: 67,
      arabicName: "اَلصَّمَدُ",
      englishTranslation: "The Eternal, Satisfier of Needs",
      urduTranslation:
          "بے نیاز جو کسی کام کا محتاج نہیں	, ابدی، ضروریات کو پورا کرنے والا"),
  AsmaUlHusnaModel(
      id: 68,
      arabicName: "اَلْقَادِرُ",
      englishTranslation: "The Able, The Capable, The Powerful",
      urduTranslation: "بڑی قدرت والا	, قابل، طاقتور"),
  AsmaUlHusnaModel(
      id: 69,
      arabicName: "اَلْمُقْتَدِرُ",
      englishTranslation: "The Powerful,  The Omnipotent",
      urduTranslation: "بڑی قدرت والا	, طاقتور، قادر مطلق"),
  AsmaUlHusnaModel(
      id: 70,
      arabicName: "اَلْمُقَدِّمُ",
      englishTranslation: "The Expediter, The Promoter",
      urduTranslation: "آگے بڑھانے والا	, تیز کرنے والا، فروغ دینے والا"),
  AsmaUlHusnaModel(
      id: 71,
      arabicName: "اَلْمُؤّخِّرُ",
      englishTranslation: "The Delayer, the Retarder",
      urduTranslation: "پیچھے رکھنے والا	, تاخیر کرنے والا"),
  AsmaUlHusnaModel(
      id: 72,
      arabicName: "اَلْاَوَّلُ",
      englishTranslation: "The First",
      urduTranslation: "سب سے پہلے	, "),
  AsmaUlHusnaModel(
      id: 73,
      arabicName: "اَلآخِرُ",
      englishTranslation: "The Last",
      urduTranslation: "سب کے بعد	, آخری"),
  AsmaUlHusnaModel(
      id: 74,
      arabicName: "اَلضَّاھِرُ",
      englishTranslation: "The Manifest",
      urduTranslation: "ظاہر و آشکار	, منشور"),
  AsmaUlHusnaModel(
      id: 75,
      arabicName: "اَلْبَاطِنُ",
      englishTranslation: "The Hidden One, Knower of the Hidden",
      urduTranslation:
          "پوشیدہ و نہاں	 ,  پوشیدہ، پوشیدہ کا جاننے والا , چھپا ہوا"),
  AsmaUlHusnaModel(
      id: 76,
      arabicName: "اَلْوَالِیُ",
      englishTranslation: "The Governor, The Patron",
      urduTranslation: "سر پرست، متصرف"),
  AsmaUlHusnaModel(
      id: 77,
      arabicName: "اَلْمُتَعَالُ",
      englishTranslation: "The Most Exalted, The Self Exalted",
      urduTranslation: "سب سے بلند و برتر	, سب سے بلند، خود بخود"),
  AsmaUlHusnaModel(
      id: 78,
      arabicName: "اَلْبَرُّ",
      englishTranslation:
          "The Source of All Goodness, The Source of Goodness, the Kind Benefactor",
      urduTranslation:
          "تمام اچھائیوں کا سر چشمہ	, تمام نیکیوں کا سرچشمہ، نیکی کا منبع، مہربان"),
  AsmaUlHusnaModel(
      id: 79,
      arabicName: "اَلتَّوَّابُ",
      englishTranslation:
          "The Acceptor of Repentance, The Ever-Pardoning, The Relenting",
      urduTranslation: "توبہ قبول کرنے والا	,  ہمیشہ معاف کرنے والا"),
  AsmaUlHusnaModel(
      id: 80,
      arabicName: "اَلْمُنْتَقِمُ",
      englishTranslation: "The Avenger",
      urduTranslation: "بدلہ لینے والا"),
  AsmaUlHusnaModel(
      id: 81,
      arabicName: "اَلْعَفُؤُّ",
      englishTranslation: "The Pardoner",
      urduTranslation: "معاف کرنے والا"),
  AsmaUlHusnaModel(
      id: 82,
      arabicName: "اَلرَّءُوْفُ",
      englishTranslation: "The Compassionate, The Most Kind",
      urduTranslation: "بڑا مشفق و مہربان	, رحم کرنے والا، سب سے زیادہ مہربان"),
  AsmaUlHusnaModel(
      id: 83,
      arabicName: "مَالِکُ الْمُلْکِ",
      englishTranslation:
          "The Eternal Owner of Sovereignty, Master of the Kingdom, Owner of the Dominion",
      urduTranslation:
          "ملکوں کا مالک	 , حاکمیت کا ابدی مالک، بادشاہی کا مالک، سلطنت کا مالک"),
  AsmaUlHusnaModel(
      id: 84,
      arabicName: "ذُولْجَلَالِ وَالْاِکْرَام",
      englishTranslation:
          "The Lord of Majesty and Bounty, Possessor of Glory and Honour, Lord of Majesty and Generosity",
      urduTranslation:
          "عظمت و جلال  اور انعام و اکرام والا	, عظمت اور فضل کا مالک، جلال اور عزت کا مالک، عظمت اور سخاوت کا مالک"),
  AsmaUlHusnaModel(
      id: 85,
      arabicName: "اَلْمُقْسِطُ",
      englishTranslation: "The Equitable",
      urduTranslation: "عدل و انصاف قائم رکھنے والا	, انصاف کرنے والا"),
  AsmaUlHusnaModel(
      id: 86,
      arabicName: "اَلْجَامِعُ",
      englishTranslation: "The Gatherer, The Uniter",
      urduTranslation: "جمع کرنے والا	, اکٹھا کرنے والا"),
  AsmaUlHusnaModel(
      id: 87,
      arabicName: "اَلْغَنِیُّ",
      englishTranslation: "The Self-Sufficient, The Wealthy",
      urduTranslation: "خود کفیل و بےپرواہ	,  دولت مند"),
  AsmaUlHusnaModel(
      id: 88,
      arabicName: "اَلْمُغْنِیُّ",
      englishTranslation: "The Enricher",
      urduTranslation: "توانگر بنانے والا , افزودہ کرنے والا"),
  AsmaUlHusnaModel(
      id: 89,
      arabicName: "اَلْمَانِعُ",
      englishTranslation: "The Preventer, The Withholder",
      urduTranslation: "روکنے والا	, روک تھام کرنے والا، روک دینے والا"),
  AsmaUlHusnaModel(
      id: 90,
      arabicName: "الضَّارَ",
      englishTranslation: "The Distresser",
      urduTranslation: "ضرر پہنچانے والا	, پریشان کن"),
  AsmaUlHusnaModel(
      id: 91,
      arabicName: "اَلنَّافِعُ",
      englishTranslation: "The Propitious, The Benefactor",
      urduTranslation: "نفع پہنچانے والا	, احسان کرنے والا"),
  AsmaUlHusnaModel(
      id: 92,
      arabicName: "اَلنُّوْرُ",
      englishTranslation: "The Light, The Illuminator",
      urduTranslation: "نو راور انوار بخشنے والا	, روشنی"),
  AsmaUlHusnaModel(
      id: 93,
      arabicName: "اَلْھَادِیُ",
      englishTranslation: "The Guide",
      urduTranslation: "سیدھی راہ دکھانے والا	,رہنما"),
  AsmaUlHusnaModel(
      id: 94,
      arabicName: "اَلْبَدِیْعُ",
      englishTranslation: "The Incomparable, The Incomparable Originator",
      urduTranslation:
          "بے مثال چیزوں کا پیدا کرنے والا	, لاجواب، لاجواب پیدا کرنے والا"),
  AsmaUlHusnaModel(
      id: 95,
      arabicName: "اَلْبَاقِیْ",
      englishTranslation: "The Ever-Surviving, The Everlasting",
      urduTranslation:
          "ہمیشہ باقی رہنے والا	,ہمیشہ زندہ رہنے والا، ہمیشہ رہنے والا"),
  AsmaUlHusnaModel(
      id: 96,
      arabicName: "اَلْوَارِثُ",
      englishTranslation: "The Supreme Inheritor, The Inheritor, The Heir",
      urduTranslation: "سب کے بعد موجود رہنے والا	, اعلیٰ وارث، وارث"),
  AsmaUlHusnaModel(
      id: 97,
      arabicName: "اَلرَّشِیْدُ",
      englishTranslation:
          "The Guide to the Right Path, The Guide, Infallible Teacher",
      urduTranslation:
          "صحیح راہ پر چلانے والا	, سیدھے راستے کا رہنما، رہنما، بے مثال استاد"),
  AsmaUlHusnaModel(
      id: 98,
      arabicName: "اَلصَّبُوْرُ",
      englishTranslation: "The Forbearing, The Patient",
      urduTranslation: "بڑے صبر و تحمل والا	, صبر کرنے والا")
];



/**
 * 
 * اَلرَّحْمٰنُ	AR-AHMAN	بے حد رحم کرنے والا	The Beneficent	He who wills goodness and mercy for all His creatures
اَلرَّحِیْمُ	AR-RAHIM	انتہائی مہربانی والا	The Merciful	He who acts with extreme kindness
اَلْمَلِکُ	AL-MALIK	بادشاہ حقیقی	The Eternal Lord	The Sovereign Lord The One with the complete Dominion the One Whose Dominion is clear from imperfection
اَلْقُدُّوْسُ	AL-QUDDUS	نہایت پاک	The Most Sacred	The One who is pure from any imperfection and clear from children and adversaries
اَلسَّلَامُ	AS-SALAM	ہر عیب سے سالم	The Embodiment of Peace	The One who is free from every imperfection.
اَلْمُؤْمِنُ	AL-MU'MIN	امن دینے والا	The Infuser of Faith	The One who witnessed for Himself that no one is God but Him. And He witnessed for His believers that they are truthful in their belief that no one is God but Him
اَلْمُھَیْمِنُ	AL-MUHAYMIN	ہر چیز کاکمال قدرت کے ساتھ محافظ	The Preserver of Safety	The One who witnesses the saying and deeds of His creatures
اَلْعَزِیْزُ	AL-A'ZIZ	بڑی عزت وقوت کا مالک	The Mighty One	The Strong The Defeater who is not defeated
اَلْجَبَّارُ	AL-JABBAR	بڑا زبردست	The Omnipotent One	The One that nothing happens in His Dominion except that which He willed
اَلْمُتَکَبِّرُ	AL-MUTAKABBIR	بہت بزرگ تر	The Dominant One	The One who is clear from the attributes of the creatures and from resembling them.
اَلْخَالِقُ	AL-KHALIQ	پیدا کرنے والا	The Creator	The One who brings everything from non-existence to existence
اَلْبَارِیُٔ	AL-BARI	ایسا خالق جس کی خلقت میں کوئی نقص نہ ہو	The Evolver	The Maker The Creator who has the Power to turn the entities.
اَلْمُصَوِّرُ	AL-MUSAWWIR	ایسی ذات جو مخلوق کی صورتیں بناتا ہو	The Flawless Shaper	The One who forms His creatures in different pictures.
اَلْغَفَّارُ	AL-GHAFFAR	بہت زیادہ ڈھانکنے والا	The Great Forgiver	The Forgiver The One who forgives the sins of His slaves time and time again.
اَلْقَھَّارُ	AL-QAHHAR	بڑا غالب اور صاحب قدر	The All-Prevailing One	The Dominant The One who has the perfect Power and is not unable over anything.
اَلْوَھَابُ	AL-WAHAB	ہبہ کرنے والا،بخشش کرنے والا	The Supreme Bestower	The One who is Generous in giving plenty without any return. He is everything that benefits whether Halal or Haram.
اَلرَّزَّاقُ	AR-RAZZAQ	روزی دینے والا	The Total Provider	The Sustainer The Provider.
اَلْفَتَّاحُ	AL-FATAH	کھولنے والا	The Supreme Solver	The Opener The Reliever The Judge The One who opens for His slaves the closed worldly and religious matters.
اَلْعَلِیْمُ	AL-A'LIM	جاننے والا	The All-Knowing One	The Knowledgeable; The One nothing is absent from His knowledge
اَلْقَابِضُ	AL-QABID	بند کرنے والا	The Restricting One	The Constrictor The Withholder The One who constricts the sustenance by His wisdom and expands and widens it with His Generosity and Mercy.
اَلْبَاسِطُ	AL-BASIT	کھولنے والا،فراخ کرنے والا	The Extender	The Englarger The One who constricts the sustenance by His wisdom and expands and widens it with His Generosity and Mercy.
اَلْخَافِضُ	AL-KHAFID	نیچے کرنے والا	The Reducer	The Abaser The One who lowers whoever He willed by His Destruction and raises whoever He willed by His Endowment.
اَلرَّافِعُ	AL-RAFI'	اونچا کرنے والا	The Elevating One	The Exalter The Elevator The One who lowers whoever He willed by His Destruction and raises whoever He willed by His Endowment.
اَلْمُعِزُّ	AL-MU'IZZ	عزت دینے والا	The Honourer-Bestower	He gives esteem to whoever He willed hence there is no one to degrade Him; And He degrades whoever He willed hence there is no one to give Him esteem.
اَلْمُذِلُّ	AL-MUZILL	ذلیل کرنے والا	The Abaser	The Dishonourer The Humiliator He gives esteem to whoever He willed hence there is no one to degrade Him; And He degrades whoever He willed hence there is no one to give Him esteem.
اَلسَّمِیْعُ	AS-SAMI	سننے والا	The All-Hearer	The Hearer The One who Hears all things that are heard by His Eternal Hearing without an ear instrument or organ.
اَلْبَصِیْرُ	AL-BASIR	دیکھنے والا	The All-Seeing	The All-Noticing The One who Sees all things that are seen by His Eternal Seeing without a pupil or any other instrument.
اَلْحَکَمُ	AL-HAKAM	حکم(فیصلہ) کرنے والا	The Impartial Judge	The Judge He is the Ruler and His judgment is His Word.
اَلْعَدْلُ	AL-ADL	انصاف کرنے والا	The Embodiment of Justice	The Just The One who is entitled to do what He does.
اَللَّطِیْفُ	AL-LATIF	مہربان،باریک بین، پوشیدہ امور سے واقف	The Knower of Subtleties	The Subtle One The Gracious The One who is kind to His slaves and endows upon them.
اَلْخَبِیْرُ	AL-KHABIR	ہر چیز سے باخبر	The All-Aware One	The One who knows the truth of things.
اَلْحَلِیْمُ	AL-HALIM	بردبار	The Clement One	The Forebearing The One who delays the punishment for those who deserve it and then He might forgive them.
اَلعَظِیْمُ	AL-A'ZIM	بہت بڑا	The Magnificent One	The Great One The Mighty The One deserving the attributes of Exaltment Glory Extolement and Purity from all imperfection.
اَلْغَفُوْرُ	AL-GHAFUR	بہت بخشنے والا	The Great Forgiver	The All-Forgiving The Forgiving The One who forgives a lot.
اَلشَّکُوْرُ	ASH-SHAKUR	بہت بڑا قدر دان	The Acknowledging One	The Grateful The Appreciative The One who gives a lot of reward for a little obedience.
اَلْعَلِیُّ	AL-A'LI	بہت بلند مرتبے والا	The Sublime One	The Most High The One who is clear from the attributes of the creatures.
اَلْکَبِیْرُ	AL-KABIR	بہت بڑا	The Great One	The Most Great The Great The One who is greater than everything in status.
اَلْحَفِیْظُ	AL-HAFIZ	بہت نگہداشت کرنے والا	The Guarding One	The Preserver The Protector The One who protects whatever and whoever He willed to protect.
اَلْمُقِیْتُ	AL-MUQIT	رزق دینے والا	The Sustaining One	The Maintainer The Guardian The Feeder The One who has the Power.
اَلْحَسِیْبُ	AL-HASIB	حساب کرنے والا	The Reckoning One	The Reckoner The One who gives the satisfaction.
اَلْجَلِیْلُ	AL-JALIL	بہت قدر والا	The Majestic One	The Sublime One The Beneficent The One who is attributed with greatness of Power and Glory of status.
اَلْکَرِیْمُ	AL-KARIM	بلا حساب دینے والا	The Bountiful One	The Generous One The Gracious The One who is attributed with greatness of Power and Glory of status.
اَلرَّقِیْبُ	AR-RAQIB	بہت زیادہ حفاظت کرنے والا	The Watchful One	The Watcher The One that nothing is absent from Him. Hence it’s meaning is related to the attribute of Knowledge.
اَلْمُجِیْبُ	AL-MUJIB	قبول کرنے والا، جواب دینے والا	The Responding One	The Responsive The Hearkener The One who answers the one in need if he asks Him and rescues the yearner if he calls upon Him.
اَلْوَاسِعُ	AL-WAASI'U	بہت زیادہ فراخ	The All-Pervading One	The Vast The All-Embracing The Knowledgeable.
اَلْحَکِیْمُ	AL-HAKIM	حکمت والا،استحکام والا	The Wise One	The Wise The Judge of Judges The One who is correct in His doings.
اَلْوَدُوْدُ	AL-WADUD	محبت والا	The Loving One	The One who loves His believing slaves and His believing slaves love Him. His love to His slaves is His Will to be merciful to them and praise them
اَلْمَجِیْدُ	AL-MAJEED	انتہا درجہ باعظمت	The Glorious One	The Most Glorious One The One who is with perfect Power High Status Compassion Generosity and Kindness.
اَلْبَاعِثُ	AL-BAITH	بھیجنے والا	The Infuser of New Life	The Resurrector The Raiser (from death) The One who resurrects His slaves after death for reward and/or punishment.
اَلشَّھِیْدُ	ASH-SHAHEED	شاہد	The All Observing Witness	The Witness The One who nothing is absent from Him.
اَلْحَقُّ	AL-HAQQ	بذات خود ثابت	The Embodiment of Truth	The Truth The True The One who truly exists.
اَلْوَکِیْلُ	AL-WAKEEL	کارساز	The Universal Trustee	The Trustee The One who gives the satisfaction and is relied upon.
اَلْقَوِیُّ	AL-QAWI	بڑی قوت والا	The Strong One	The Most Strong The Strong The One with the complete Power
اَلْمَتِیْنُ	AL-MATIN	شدت قوت کا مالک	The Firm One	The One with extreme Power which is un-interrupted and He does not get tired.
اَلْوَلِیُّ	AL-WALI	دوست،محب،مددگار	The Protecting Associate	The Protecting Friend The Supporter.
اَلْحَمِیْدُ	AL-HAMID	ہر حمد کا مستحق	The Sole-Laudable One	The Praiseworthy The praised One who deserves to be praised.
اَلْمُحْصِیْ	AL-MUHSI	ہر چیز کو اپنے علم میں گھیرنے والا	The All-Enumerating One	The Counter The Reckoner The One who the count of things are known to him.
اَلْمُبْدِیُٔ	AL-MUBDI	پہلی بار پیدا کرنے والا	The Originator	The One who started the human being. That is He created him.
اَلْمُعِیْدُ	AL-MU'ID	فناکے بعد اٹھانے ولا	The Restorer	The Reproducer The One who brings back the creatures after death
اَلْمُحْیِیُ	AL-MUHYI	ہر چیزکو زندہ کرنے والا	The Maintainer of life	The Restorer The Giver of Life The One who took out a living human from semen that does not have a soul. He gives life by giving the souls back to the worn out bodies on the resurrection day and He makes the hearts alive by the light of knowledge.
اَلْمُمِیْتُ	AL-MUMIT	ہر زندہ کو مارنے والا	The Inflictor of Death	The Creator of Death The Destroyer The One who renders the living dead.
اَلْحَیُّ	AL-HAYY	کامل حیات والا	The Eternally Living One	The Alive The One attributed with a life that is unlike our life and is not that of a combination of soul flesh or blood.
اَلْقَیُّوْمُ	AL-QAYYUM	وہ ذات جو خود قائم ہو اور قائم رکھنے والی ہو	The Self-Subsisting One	The One who remains and does not end.
اَلْوَاجِدُ	AL-WAJID	سب کچھ اپنے پاس رکھنے والا	The Pointing One	The Perceiver The Finder The Rich who is never poor. Al-Wajd is Richness.
اَلْمَاجِدُ	AL-MAJID	انتہا درجہ کی عظمت اور شرف والا	The All-Noble One	The Glorious He who is Most Glorious.
اَلْوَاحِدُ	AL-WAHID	وحدت، یگانگی والا	The Only One	The Unique The One The One without a partner
اَلْاَحَدُ	AL-AHAD	اکیلا	The Sole One	The One
اَلصَّمَدُ	AS-SAMAD	بے پرواہ	The Supreme Provider	The Eternal The Independent The Master who is relied upon in matters and reverted to in ones needs.
اَلْقَادِرُ	AL-QADIR	قدرت والا،کامل قدرت والا	The Omnipotent One	The Able The Capable The One attributed with Power.
اَلْمَقْتَدِرُ	AL-MUQTADIR	زیادہ قدرت والا	The All Authoritative One	The Powerful The Dominant The One with the perfect Power that nothing is withheld from Him.
اَلْمُقَدِّمُ	AL-MUQADDIM	آگے کرنے والا،قریب کرنے والا	The Expediting One	The Expediter The Promoter The One who puts things in their right places. He makes ahead what He wills and delays what He wills.
اَلْمُؤَخِّرُ	AL-MUAKHKHIR	پیچھے کرنے والا،دور کرنے والا	The Procrastinator	The Delayer the Retarder The One who puts things in their right places. He makes ahead what He wills and delays what He wills.
اَلْاَوَّلُ	AL-AWWAL	سب سے پہلے	The Very First	The First The One whose Existence is without a beginning.
اَلْاٰخِرُ	AL-AKHIR	سب سے پچھلا	The Infinite Last One	The Last The One whose Existence is without an end.
اَلظَّاھِرُ	AZ-ZAHIR	ظاہر	The Perceptible	The Manifest The One that nothing is above Him and nothing is underneath Him hence He exists without a place. He The Exalted His Existence is obvious by proofs and He is clear from the delusions of attributes of bodies.
اَلْبَاطِنُ	AL-BATIN	پوشیدہ	The Imperceptible	The Hidden The One that nothing is above Him and nothing is underneath Him hence He exists without a place. He The Exalted His Existence is obvious by proofs and He is clear from the delusions of attributes of bodies.
اَلْوَالِیْ	AL-WALI	کارساز و مالک	The Holder of Supreme Authority	The Governor The One who owns things and manages them.
اَلْمُتَعَالْ	AL-MUTA'ALI	بہت عالی مرتبت،مخلوق کی صفات سے منزہ اورپاک	The Extremely Exalted One	The Most Exalted The High Exalted The One who is clear from the attributes of the creation.
اَلْبَرُّ	AL-BARR	اپنے لطف سے بندوں کے ساتھ نیکی کرنے والا	The Fountain-Head of Truth	The Source of All Goodness The Righteous The One who is kind to His creatures who covered them with His sustenance and specified whoever He willed among them by His support protection and special mercy.
اَلتَّوَّابُ	AT-TAWWAB	باربار توبہ قبول کرنے والا	The Ever-Acceptor of Repentance	The Relenting The One who grants repentance to whoever He willed among His creatures and accepts his repentance.
اَلْمُنَتَقِمُ	AL-MUNTAQIM	نافرمانوں کوسزا دینے والا	The Retaliator	The Avenger The One who victoriously prevails over His enemies and punishes them for their sins. It may mean the One who destroys them.
اَلْعَفُوُّ	AL-A'FUW	درگزر کرنے والا	The Supreme Pardoner	The Forgiver The One with wide forgiveness.
اَلرَّو ُٔفُ	AR-RA'UF	مہربان،بہت شفقت والا	The Benign One	The Compassionate The One with extreme Mercy. The Mercy of Allah is His will to endow upon whoever He willed among His creatures.
مَالِکُ الْمُلْکِ	MALIK-UL-MULK	سارے جہاں کا بادشاہ	The Eternal Possessor of Sovereignty	The One who controls the Dominion and gives dominion to whoever He willed.
ذُوالْجَلَالِ وَالْاِکْرَامِ	DHUL-JALALI-WAL-IKRANM	بزرگی اور بخشش والا	The Possessor of Majesty and Honour	The Lord of Majesty and Bounty The One who deserves to be Exalted and not denied.
اَلْمُقْسِطُ	AL-MUQSIT	عدل کرنے والا	The Just One	The Equitable The One who is Just in His judgment.
اَلْجَامِعُ	AL-JAMII'	تمام مخلوقات کوجمع کرنے والا	The Assembler of Scattered Creations	The Gatherer The One who gathers the creatures on a day that there is no doubt about that is the Day of Judgment.
اَلْغَنِیُّ	AL-GHANI	ہر چیز سے بے پرواہ	The Self-Sufficient One	The One who does not need the creation.
اَلْمُغْنِیْ	AL-MUGHNI	غنی بنانے والا	The Bestower of Sufficiency	The Enricher The One who satisfies the necessities of the creatures.
اَلْمَانِعُ	AL-MANI'	دوستوں کو تکلیف سے روکنے والا	The Preventer	The Withholder.
اَلضَّارُّ	AD-DARR	ضرر اور شر کا خالق و دینے والا	The Distressor	The One who makes harm reach to whoever He willed and benefit to whoever He willed.
اَلنَّافِعُ	AN-NAFI'	نفع اور خیر کا خالق و دینے والا	The Bestower of Benefits	The Propitious The One who makes harm reach to whoever He willed and benefit to whoever He willed.
اَلنُّوْرُ	AN-NUR	روشن کرنے والا	The Prime Light	The Light The One who guides.
اَلْھَادِیْ	AL-HADI	ہدایت دینے والا	The Provider of Guidance	The Guide The One whom with His Guidance His believers were guided and with His Guidance the living beings have been guided to what is beneficial for them and protected from what is harmful to them.
اَلْبَدِیْعُ	AL-BADII'	عالم کو پیدا کرنے والا	The Unique One	The Incomparable The One who created the creation and formed it without any preceding example.
اَلْبَاقِیْ	AL-BAQI	ہمیشہ رہنے والا	The Ever Surviving One	The Everlasting The One that the state of non-existence is impossible for Him.
اَلْوَارِثُ	AL-WARITH	موجودات کے فنا ہونے کے بعد باقی رہنے والا	The Eternal Inheritor	The Heir The One whose Existence remains.
اَ لرَّشِیْدُ	AR-RASHEED	رشد وہدایت کا مالک	The Guide to Path of Rectitude	The Guide to the Right Path The One who guides.
اَلصَّبُوْرُ	AS-SABUR	بڑا صبر کرنے والا	The Extensively Enduring One	The Patient The One who does not quickly punish the sinners.
 */