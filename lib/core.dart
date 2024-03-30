// ignore_for_file: unused_import

import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/material.dart';
import 'package:number_to_word_arabic/number_to_word_arabic.dart';

final arabicNumber = ArabicNumbers();

const darkGreen = Color.fromARGB(
  255,
  0,
  76,
  65,
);
const ligGreen = Color.fromARGB(216, 9, 207, 134);
const white = Colors.white;
const black = Colors.black;
const gray = Colors.black87;
List<String> arabicfs = [
  "سُبْحَانَ ذِي الْمُلْكِ وَالْمَلَكُوتْ \n""سُبْحَانَ ذِي الْعِزَّةِ وَالْجَبَرُوتْ \n "   "سُبْحَانَ الْحَيِّ الَّذِي لاَ يَمُوتْ \n"  "سُبُّوحٌ قُدُّوسٌ رَبُّنَا وَرَبُّ الْمَلَائِكَةِ وَالرُّوحْ" ,
 
  "سُبْحَانَ اللّٰهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ،  وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ، وَمِدَادَ كَلِمَاتِهِ.\n"
];
List<String> Thurkis = [
  "Subĥane żil mulki vel melekũt.\nSubĥane żil îzzeti vel ceberũt \n Subĥanel ĥæyyilleżiy la yemũt \n Subbũĥun quddũsun Ræbbuna ve Ræbbul melãiketi ver-rũĥ (Namaz öncesi üç kez söylenir)",
  "Subĥanællahi vebiĥæmdihiy âdede xælqihiy ve riđae nefsihiy ve zinete ârşihiy ve midade kelimatihiy"
];

List<String> secondarabicfs = [
// " \uFD3E"+(arabicNumber.convert("10"),).toString().toLowerCase()+ "\uFD3F"

  "لاَ إِلَهَ إِلاَّ اللّٰهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ \n""الْحَمْدُ يُحْيِي وَيُمِيتُ وَهُوَ عَلٰى كُلِّ شَيْءٍ قَدِيرٌ \n""(10 مَرَّات)",
  "اَللّٰهُمَّ أَجِرْنِي مِنَ النَّارِ\n""(7 مَرَّات)\n""تقول في المرة السابعة",
  "اَللّٰهُمَّ أَجِرْنِي وَأَجِرْ وَالِدَيَّ بِجَاهِ سَيِّدِ الْأَبْرَارِ مَوْلاَنَا  مُحَمَّدٍ الْمُخْتَارِ صلى الله عليه وسلم مِنَ النَّارِ",
  "اَللّٰهُمَّ أَدْخِلْنِي الْجَنَّةَ (8 مَرَّات) تقول في المرة الثامنة",
      "اَللّٰهُمَّ أَدْخِلْنِي وَأَدْخِلْ وَالِدَيَّ مَعَ مَوْلاَنَا مُحَمَّدٍ الْمُصْطَفٰى صلى الله عليه وسلم إِلَى الْجَنَّةِ بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِين",
  "	بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحٖيمِ(21 مَرَّات)",
  "لَا إِلَهَ إِلَّا اللّٰهُ.(21 مَرَّات)",
  "أَسْتَغْفِرُ اللّٰهَ الْعَظِيم.(10 مَرَّات)",
  "اَللّٰهُمَّ صَلِّ عَلٰى سَيِّدِنَا مُحَمَّدٍ وعَلٰى آلِ سَيِّدِنَا مُحَمَّدٍ بِعَدَدِ كُلِّ دَاءٍ وَدَوَاءٍ وَبَارِكْ وَسَلِّمْ عَلَيْهِ وَعَلَيْهِمْ كَثِيرًا كَثِيرًا(3 مَرَّات)"
];

List<String> secondarturki = [
  "Lailahe illællahu veĥdehũ la şeriykeleh,\nlehul mulku ve lehul ĥæmdu yuĥyi ve \nyumiytu vehuve âla kulli şey’in qædiyr. (10 kez)",
  "Ællahumme ecirniy minen-nar (7 kez)",
  "Ællahumme ecirniy ve ecir valideyye bicahi Seyyidil Ebrar Mevlana \nMuĥæmmedinil Muxŧar ŝællællahu âleyhi ve selleme minennar.",
  "Ællahumme edxilnel cenneh (8 kez)",
  "Ællahumme edxilniy ve edxil valideyye meâ Mevlana Muĥæmmed Muŝŧæfa ŝællællahu âleyhi ve sellem. İlel cenneti bi ræhmetike ya Erĥæmer-raĥimiyn.",
  "Bismillahirræĥmanirræĥiym (21 kez)",
  "La ilahe illællah (21 kez)",
  "Esteğfirullah El-Aẑiym (10 kez)",
  "Ællahumme ŝælli âla seyyidina Muĥæmmedin ve âla ãli seyyidina Muĥæmmedin, bi âdedi kulli dãin ve devãin ve barik ve sellim âleyhi ve âleyhim keṡiira. (3 kez)"
];
List<String> threadarabic = [
// " \uFD3E"+(arabicNumber.convert("10"),).toString().toLowerCase()+ "\uFD3F"

  "أَسْتَغْفِرُ اللّٰهَ. أَسْتَغْفِرُ اللّٰهَ .أَسْتَغْفِرُ اللّٰهَ اَلْعَظِيمَ اَلْكَرِيمَ الَّذِي لَا اِلٰهَ إِلاَّ هُوَ الْحَيَّ الْقَيُّومَ وَأَتُوبُ إِلَيهِ (2 مَرَّات)",
  "أَسْتَغْفِرُ اللّٰهَ الْعَظِيمَ لَنَا وَلِوَالِدَيْنَا وَلِلْمُؤْمِنِينَ وَلِلْمُؤْمِنَاتِ\n""وَلِلْمُسْلِمِينَ ولِلْمُسْلِمَاتِ اَلْأَحْيَاءِ مِنْهُمْ وَالْأَمْوَاتِ وَلِمَنْ كَانَ حَقٌّ عَلَيْناَ وَالْوَاجِبَاتُ",
  " .حَسْبُنَا اللّٰهُ وَنِعْمَ الْوَكِيلُ(3 مَرَّات)\n"" نِعْمَ الْمَوْلَى وَنِعْمَ النَّصِيرُ. غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ",
  "اَللّٰهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ فَحَيِّنَا بِالسَّلَامِ وَأَدْخِلْنَا الْجَنَّةَ دَارَ السَّلاَمِ تَبَارَكْتَ رَبَّنَا وَتَعَالَيْتَ يَا ذَا الْجَلاَلِ وَالْإِكْرَام ",
   "...لِأَشْرَفِ الْمُرْسَلِينَ \n" " ,الَصَّلاَةُ وَالسَّلاَمُ عَلَيْكَ يَا سَيِّدِي يَا رَسُولَ اللّٰهِ\n" "اَلصَّلاَةُ وَالسَّلاَمُ عَلَيْكَ يَا سَيِّدِي, يَا حَبِيبَ اللّٰهِ \n"  "خُذْ بِيَدِي قَلَّتْ حِيلَتِي أَدْرِكْنِي, أَغِثْنِي يَا أَبَا الزَّهْرَاءِ أَغِثْنِي (3 مَرَّات)",


      
  "اَللّٰهُمَّ لاَ مَانِعَ لِمَا أَعْطَيْتَ وَلاَ مُعْطِيَ لِمَا مَنَعْتَ وَلَا رَٓادَّ لِمَا قَضَيْتَ وَلاَ يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ ,لاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللّٰهِ الْعَلِيِّ الْعَظِيمِ .لاَ إِلَهَ إلاَّ اللّٰهُ وَلاَ نَعْبُدُ إلاَّ إِيَّاهُ لَهُ النِّعْمَةُ وَلَهُ الْفَضْلُ وَلَهُ الثَّنَاءُ الْحَسَنُ*لاَ إِلَهَ إِلاَّ اللّٰهُ مُخْلِصِينَ لَهُ الدِّينَ وَلَوْ كَرِهَ الْكَافِرُونَ"
];
List<String> threadturkki = [
// " \uFD3E"+(arabicNumber.convert("10"),).toString().toLowerCase()+ "\uFD3F"

  "Keriym elleżiy lailahe illa huvel Ĥæyyel Qæyyũm ve etũbu ileyh. (2 kere)",
  "Esteğfirullah el Âẑiymu lena, ve-livalideyna, ve-lilmu’miniyne ve-lilmu’minati, ve-lilmuslimiyne ve-lilmuslimati, el eĥya-i minhum vel emvati ve-limen kane ĥæqqun âleyna vel vacibat",
  "Ĥæsbunællahu ve nî’mel vekiyl (3kere).  Nî’mel Mevla ve nî’men-nasiyr ğufraneke Ræbbena ve ileykel meŝiyr. ",
  "Ællahumme entes-Selam ve minkes-Selam feĥæyyina bis-Selam ve edxilnel cennete dares-Selam tebarækte Ræbbena veteâaleyte ya Żelcelali vel ikram.",
  "Li Eşræfilmurseliyn: Eŝŝælatu vesselamu âleyke ya Seyyidi ya Ræsulællah, eŝŝælatu vesselamu âleyke ya Seyyidiy ya Ĥæbiybællah, xuż biyediy qællet ĥiyletiy edrikniy eğiṡniy ya Ebaz-Zehrai eğiṡniy. (3 kere)",
  "Ællahumme la maniâ lima eâ’ŧæyte vela mû’ŧiye lima menâ’te vela rãdde lima qæđæyte vela yenfeûżel ceddi min kel ced. La ĥævle vela quvvete illa billahil âliyyil âẑiym. Lailaheillællah vela neâ’budu illa iyyahu lehun-niî’metu velehul feđlu velehuṡ-ṡenaul ĥæsen. Lailaheillællahu muxliŝiyne lehud-diyne velev kerihel kafirũn."
];
Map<List<String>, List<String>> listofayath = {
  arabicfs: Thurkis,
  secondarabicfs: secondarturki,
  threadarabic: threadturkki,
};

List<String> farzname = ["Allah Allah azzawajal 'nin mahlukat için tecelli anında melaikenin tesbihi","Sabah ve Akşam Namazları Ardı Oturuşu Bozmadan Yapılan Zikirler","Beş Vakit Namaz Ardı Yapılan Zikirler"];