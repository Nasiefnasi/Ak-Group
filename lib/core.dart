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
  "سُبْحَانَ ذِي الْمُلْكِ وَالْمَلَكُوتْ \n"
      "سُبْحَانَ ذِي الْعِزَّةِ وَالْجَبَرُوتْ \n "
      "سُبْحَانَ الْحَيِّ الَّذِي لاَ يَمُوتْ \n"
      "سُبُّوحٌ قُدُّوسٌ رَبُّنَا وَرَبُّ الْمَلَائِكَةِ وَالرُّوحْ",
  "سُبْحَانَ اللّٰهِ وَبِحَمْدِهِ عَدَدَ خَلْقِهِ،  وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ، وَمِدَادَ كَلِمَاتِهِ.\n"
];
List<String> Thurkis = [
  "Subĥane żil mulki vel melekũt.\nSubĥane żil îzzeti vel ceberũt \n Subĥanel ĥæyyilleżiy la yemũt \n Subbũĥun quddũsun Ræbbuna ve Ræbbul melãiketi ver-rũĥ (Namaz öncesi üç kez söylenir)",
  "Subĥanællahi vebiĥæmdihiy âdede xælqihiy ve riđae nefsihiy ve zinete ârşihiy ve midade kelimatihiy"
];

List<String> secondarabicfs = [
// " \uFD3E"+(arabicNumber.convert("10"),).toString().toLowerCase()+ "\uFD3F"

  "لاَ إِلَهَ إِلاَّ اللّٰهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ "
      "(21 مَرَّات)"
      " .الْحَمْدُ يُحْيِي وَيُمِيتُ وَهُوَ عَلٰى كُلِّ شَيْءٍ قَدِيرٌ"
      "(10مَرَّات)",
  "اَللّٰهُمَّ أَجِرْنِي مِنَ النَّارِ"
      "(7 مَرَّات)\n"
      "تقول في المرة السابعة",
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
List<dynamic> threadarabic = [
// " \uFD3E"+(arabicNumber.convert("10"),).toString().toLowerCase()+ "\uFD3F"

  "أَسْتَغْفِرُ اللّٰهَ. أَسْتَغْفِرُ اللّٰهَ .أَسْتَغْفِرُ اللّٰهَ اَلْعَظِيمَ اَلْكَرِيمَ الَّذِي لَا اِلٰهَ إِلاَّ هُوَ الْحَيَّ الْقَيُّومَ وَأَتُوبُ إِلَيهِ (2 مَرَّات)",
  "أَسْتَغْفِرُ اللّٰهَ الْعَظِيمَ لَنَا وَلِوَالِدَيْنَا وَلِلْمُؤْمِنِينَ وَلِلْمُؤْمِنَاتِ"
      "وَلِلْمُسْلِمِينَ ولِلْمُسْلِمَاتِ اَلْأَحْيَاءِ مِنْهُمْ وَالْأَمْوَاتِ وَلِمَنْ كَانَ حَقٌّ عَلَيْناَ وَالْوَاجِبَاتُ",
  " .حَسْبُنَا اللّٰهُ وَنِعْمَ الْوَكِيلُ(3 مَرَّات)"
      " نِعْمَ الْمَوْلَى وَنِعْمَ النَّصِيرُ. غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ",
  "اَللّٰهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ فَحَيِّنَا بِالسَّلَامِ وَأَدْخِلْنَا الْجَنَّةَ دَارَ السَّلاَمِ تَبَارَكْتَ رَبَّنَا وَتَعَالَيْتَ يَا ذَا الْجَلاَلِ وَالْإِكْرَام ",
  "لِأَشْرَفِ الْمُرْسَلِينَ... \n"
      "الَصَّلاَةُ وَالسَّلاَمُ عَلَيْكَ يَا سَيِّدِي يَا رَسُولَ اللّٰهِ,\n"
      "اَلصَّلاَةُ وَالسَّلاَمُ عَلَيْكَ يَا سَيِّدِي, يَا حَبِيبَ اللّٰهِ\n"
      "خُذْ بِيَدِي قَلَّتْ حِيلَتِي أَدْرِكْنِي, أَغِثْنِي يَا أَبَا الزَّهْرَاءِ أَغِثْنِي \n(3 مَرَّات)",

  "اَللّٰهُمَّ لاَ مَانِعَ لِمَا أَعْطَيْتَ وَلاَ مُعْطِيَ لِمَا مَنَعْتَ وَلَا رَٓادَّ لِمَا قَضَيْتَ وَلاَ يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ ,لاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللّٰهِ الْعَلِيِّ الْعَظِيمِ .لاَ إِلَهَ إلاَّ اللّٰهُ وَلاَ نَعْبُدُ إلاَّ إِيَّاهُ لَهُ النِّعْمَةُ وَلَهُ الْفَضْلُ وَلَهُ الثَّنَاءُ الْحَسَنُ*لاَ إِلَهَ إِلاَّ اللّٰهُ مُخْلِصِينَ لَهُ الدِّينَ وَلَوْ كَرِهَ الْكَافِرُونَ",
  "  بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ﴿١﴾ ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ ﴿٢﴾ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ﴿٣﴾ مَـٰلِكِ يَوْمِ ٱلدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ ﴿٦﴾صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ"
      " \uFD3F"
      "٧"
      "\uFD3E",
  "الٓمٓ ۚ ﴿١﴾ ذٰلِكَ الْكِتَابُ لاَ رَيْبَ ۚ فٖيهِ ۚ هُدًى لِلْمُتَّقِينَۙ ﴿٢﴾ اَلَّذِينَ يُؤْمِنُونَ بِالْغَيْبِ وَيُقٖيمُونَ الصَّلَوةَ وَمِمَّا رَزَقْنَاهُمْ يُنْفِقُونَۙ ﴿٣﴾ وَالَّذٖينَ يُؤْمِنُونَ بِمَٓا اُنْزِلَ اِلَيْكَ وَمَٓا اُنْزِلَ مِنْ قَبْلِكَۚ وَبِالْاٰخِرَةِ هُمْ يُوقِنُونَؕ ﴿٤﴾ اُولٰٓئِكَ عَلٰى هُدًى مِنْ رَبِّهِمْ وَاُولٰٓئِكَ هُمُ الْمُفْلِحُونَ ﴿5﴾",
  "وَاِلٰهُكُمْ اِلٰهٌ وَاحِدٌ ۚلآَ اِلٰهَ اِلاَّ هُوَ  الرَّحْمٰنُ الرَّحِيمُع﴿١٦٣﴾"
      "اِنَّ فٖى خَلْقِ السَّمٰوَاتِ وَالْاَرْضِ وَاخْتِلاَفِ الَّيْلِ وَالنَّهَارِ وَالْفُلْكِ الَّتٖى تَجْرٖى فِى الْبَحْرِ بِمَا يَنْفَعُ النَّاسَ وَمَٓا اَنْزَلَ اللّٰهُ مِنَ السَّمَٓاءِ مِنْ مَٓاءٍ فَاَحْيَا بِهِ الْاَرْضَ بَعْدَ مَوْتِهَا وَبَثَّ فٖيهَا مِنْ كُلِّ دَٓابَّةٍص وَتَصْرِيفِ الرِّيَاحِ وَالسَّحَابِ الْمُسَخَّرِ بَيْنَ السَّمَٓاءِ وَالْاَرْضِ لَاٰيَاتٍ لِقَوْمٍ يَعْقِلُونَ ﴿١٦٤﴾",
  "اَللّٰهُ لآَ اِلٰهَ اِلاَّ هُوَ ۚ الْحَىُّ الْقَيُّومُ ۚ لاَ تَاْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ ؕ لَهُ مَا فِى السَّمٰـوَاتِ وَمَا فِى الْاَرْضِ ؕ مَنْ ذَا الَّذٖى يَشْفَعُ عِنْدَهُٓ اِلاَّ بِاِذْنِهٖ ۚ يَعْلَمُ مَا بَيْنَ اَيْدٖيهِمْ وَمَا خَلْفَهُمْ ۚ وَلاَ يُحٖيطُونَ بِشَىْءٍ مِنْ عِلْمِهٖٓ اِلاَّ بِمَا شَآَءَ ۚ وَسِعَ كُرْسِيُّهُ السَّمٰـوَاتِ وَالْاَرْضَ ۚ وَلاَ يَـؤُدُهُ حِفْظُهُمَا ۚ وَهُوَ الْعَلِىُّ الْعَظِيمُ ﴿٢٥٥﴾ لآَ اِكْرَاهَ فِى الدِّٖينِ قَدْ تَبَيَّنَ الرُّشْدُ مِنَ الْغَىِّ ۚ فَمَنْ يَكْفُرْ بِالطَّـاغُوتِ وَيُؤْمِنْ بِاللّٰهِ فَقَدِ اسْتَمْسَكَ بِالْعُرْوَةِ الْوُثْقٰى ۗلاَ انْفِصَامَ لَهَاؕ وَاللّٰهُ سَمِيعٌ عَلِيمٌ ﴿٢٥٦﴾ اَللّٰهُ وَلِىُّ الَّذٖينَ اٰمَنُوا ۙيُخْرِجُهُمْ مِنَ الظُّلُمَاتِ اِلَى النُّورِ ۖ وَالَّذِينَ كَفَرُٓوا اَوْلِيَٓاؤُهُمُ الطَّـاغُوتُ ۙ يُخْرِجُونَهُمْ مِنَ النُّورِ اِلَى الظُّلُمَاتِ ؕ اُولٓئِكَ اَصْحَـابُ النَّارِ ۚ هُمْ فِيهَا خَالِدُونَع ﴿٢٥٧﴾",
  "لِلّٰهِ مَا فِى السَّمٰوَاتِ وَمَا فِى الْاَرْضِ ؕ وَاِنْ تُبْدُوا مَا فٖٓى اَنْفُسِكُمْ اَوْ تُخْفُوهُ يُحَاسِبْكُمْ بِهِ اللّٰهُ ؕفَيَغْفِرُ لِمَنْ يَشَٓاءُ وَيُعَذِّبُ مَنْ يَشَٓاءُؕ وَاللّٰهُ عَلٰى كُلِّ شَىْءٍ قَدِيرٌ ﴿٢٨٤﴾ اٰمَنَ الرَّسُولُ بِمَٓا اُنْزِلَ اِلَيْهِ مِنْ رَبِّهٖ وَالْمُؤْمِنُونَ ؕكُلٌّ اٰمَنَ بِاللّٰهِ وَمَلآئِكَتِهٖ وَكُتُبِهٖ وَرُسُلِهٖ ؕلاَ نُفَرِّقُ بَيْنَ اَحَدٍ مِنْ رُسُلِهٖ ؕ وَقَالُوا سَمِعْنَا وَاَطَعْنَا غُفْرَانَكَ رَبَّنَا وَاِلَيْكَ الْمَصِيرُ ﴿٢٨٥﴾ لاَ يُكَلِّفُ اللّٰهُ نَفْسًا اِلاَّ وُسْعَهَا ؕلَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ ؕرَبَّنَا لاَ تُؤٰاخِذْنَٓا اِنْ نَسِينَٓا اَوْ اَخْطَاْنَاۚ رَبَّنَا وَلاَ تَحْمِلْ عَلَيْنَٓا اِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذٖينَ مِنْ قَبْلِنَاۚ رَبَّنَا وَلاَ تُحَمِّلْنَا مَا لاَ طَاقَةَ لَنَا بِهٖ ۚوَاعْفُ عَنَّاقف وَاغْفِرْ لَنَاقف وَارْحَمْنَاقف اَنْتَ مَوْلَينَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرٖينَ ﴿٢٨٦﴾",
  "شَهِدَ اللّٰهُ اَنَّهُ لآَ اِلٰهَ اِلاَّ هُوَ ۙوَالْمَلَٓئِكَةُ وَاُولُوا الْعِلْمِ قآَئِمًا بِالْقِسْطِؕ لآَ اِلٰهَ اِلاَّ هُوَ الْعَزِيزُ الْحَكِيمُ ؕ۞"
      " اِنَّ الدّٖينَ عِنْدَ اللّٰهِ الْاِسْلاَمُقف"
      " قُلِ اللّٰهُمَّ مَالِكَ الْمُلْكِ تُؤْتِى الْمُلْكَ مَنْ تَشَٓاءُ وَتَنْزِعُ الْمُلْكَ مِمَّنْ تَشَٓاءُؗ وَتُعِزُّ مَنْ تَشَٓاءُ وَتُذِلُّ مَنْ تَشَٓاءُؕ بِيَدِكَ الْخَيْرُؕ اِنَّكَ عَلٰى كُلِّ شَىْءٍ قَدِيرٌ ۞ تُولِجُ الَّيْلَ فِى النَّهَارِ وَتُولِجُ النَّهَارَ فِى الَّيْلِؗ  وَتُخْرِجُ الْحَىَّ مِنَ الْمَيِّتِ وَتُخْرِجُ الْمَيِّتَ مِنَ الْحَىِّؗ وَتَرْزُقُ مَنْ تَشَٓاءُ بِغَيْرِ حِسَابٍ ۞",
  "ثُمَّ اَنْزَلَ عَلَيْكُمْ مِنْ بَعْدِ الْغَمِّ اَمَنَةً نُعَاسًا يَغْشٰى طآَئِفَةً مِنْكُمْۙ وَطآَئِفَةٌ قَدْ اَهَمَّتْهُمْ اَنْفُسُهُمْ يَظُنُّونَ بِاللّٰهِ غَيْرَ الْحَقِّ ظَنَّ الْجَاهِلِيَّةِؕ يَقُولُونَ هَلْ لَنَا مِنَ الْاَمْرِ مِنْ شَىْءٍ ؕ قُلْ اِنَّ الْاَمْرَ كُلَّهُ لِلّٰهِ ؕيُخْفُونَ فٖٓى اَنفُسِهِمْ مَا لاَ يُبْدُونَ لَكَ ؕيَقُولُونَ لَوْ كَانَ لَنَا مِنَ الْاَمْرِ شَىْءٌ مَا قُتِلْنَا هٰهُنَا ؕ قُلْ لَوْ كُنْتُمْ فٖى بُيُوتِكُمْ لَبَرَزَ الَّذٖينَ كُتِبَ عَلَيْهِمُ الْقَتْلُ اِلٰى مَضَاجِعِهِمْۚ وَلِيَبْتَلِىَ اللّٰهُ مَا فٖى صُدُورِكُمْ وَلِيُمَحِّصَ مَا فٖي قُلُوبِكُمْ ؕوَاللّٰهُ عَلِيمٌ بِذَاتِ الصُّدُورِ ﴿١٥٤﴾",
  "اِنَّ رَبَّكُمُ اللّٰهُ الَّذٖي خَلَقَ السَّمٰوَاتِ وَالْاَرْضَ فٖي سِتَّةِ اَيَّامٍ ثُمَّ اسْتَوٰى عَلٰى الْعَرْشِ يُغْشِى الَّيْلَ النَّهَارَ يَطْلُبُهُ حَثِيثًا ۙوَالشَّمْسَ وَالْقَمَرَ وَالنُّجُومَ مُسَخَّرَاتٍ بِاَمْرِهٖ ؕ اَلاَ لَهُ الْخَلْقُ وَالْاَمْرُ ؕ تَبَارَكَ اللّٰهُ رَبُّ الْعَالَمِينَ ﴿٥٤﴾ اُدْعُوا رَبَّكُمْ تَضَرُّعًا وَخُفْيَةً ؕ اِنَّهُ لاَ يُحِبُّ الْمُعْتَدِينَۚ ﴿٥٥﴾  وَلاَ تُفْسِدُوا فِى الْاَرْضِ بَعْدَ اِصْلاَحِهَا وَادْعُوهُ خَوْفًا وَطَمَعًاؕ اِنَّ رَحْمَتَ اللّٰهِ قَرِيبٌ مِنَ الْمُحْسِنِينَ ﴿٥٦﴾",
  "لَقَدْ جَاءَكُمْ رَسُولٌ مِّنْ أَنفُسِكُمْ عَزِيزٌ عَلَيْهِ مَا عَنِتُّمْ حَرِيصٌ عَلَيْكُم بِالْمُؤْمِنِينَ رَءُوفٌ رَّحِيمٌ (128) فَإِن تَوَلَّوْا فَقُلْ حَسْبِيَ اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ ۖ عَلَيْهِ تَوَكَّلْتُ ۖ وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ (129)",
  "قُلِ ادْعُوا اللّٰهَ اَوِ ادْعُوا الرَّحْمٰنَؕ اَيًّا مَا تَدْعُوا فَلَهُ الْاَسْمَٓاءُ الْحُسْنٰى ۚوَلاَ تَجْهَرْ بِصَلاَتِكَ وَلاَ تُخَافِتْ بِهَا وَابْتَغِ بَيْنَ ذٰلِكَ سَبٖيلاً ﴿١١٠﴾ وَقُلِ الْحَمْدُ لِلّٰهِ الَّذِى لَمْ يَتَّخِذْ وَلَدًا وَلَمْ يَكُنْ لَهُ شَرِيكٌ فِى الْمُلْكِ وَلَمْ يَكُنْ لَهُ وَلِيٌّ مِنَ الذُّلِّ وَكَبِّرْهُ تَكْبٖيرًا ﴿١١١﴾",
  "وَالصّٓافَّاتِ صَفًّا ۙ﴿١﴾ فَالزَّاجِرَاتِ زَجْرًا ۙ﴿٢﴾ فَالتَّالِيَاتِ ذِكْرًاۙ ﴿٣﴾ اِنَّ اِلٰهَكُمْ لَوَاحِدٌ ؕ﴿٤﴾ رَبُّ السَّمٰوَاتِ وَالْاَرْضِ وَمَا بَيْنَهُمَا وَرَبُّ الْمَشَارِقِؕ﴿٥﴾ اِنَّا زَيَّنَّا السَّمَٓاءَ الدُّنْيَا بِزٖينَةٍنِ الْكَوَاكِبِ ۙ﴿٦﴾ وَحِفْظًا مِنْ كُلِّ شَيْطَانٍ مَارِدٍ ۚ﴿٧﴾ "
      "لاَ يَسَّمَّعُونَ اِلَى الْمَلَاِ الْاَعْلٰى وَيُقْذَفُونَ مِنْ كُلِّ جَانِبٍق﴿٨﴾ دُحُورًا وَلَهُمْ عَذَابٌ وَاصِبٌ ۙ﴿٩﴾ اِلاَّ مَنْ خَطِفَ الْخَطْفَةَ فَاَتْبَعَهُ شِهَابٌ ثَاقِبٌ ﴿١٠﴾ فَاسْتَفْتِهِمْ اَهُمْ اَشَدُّ خَلْقًا اَمْ مَنْ خَلَقْنَا ؕ اِنَّا خَلَقْنَاهُمْ مِنْ طٖينٍ لاَزِبٍ﴿١١﴾",
  "لَقَدْ صَدَقَ اللّٰهُ رَسُولَهُ الرُّءْيَا بِالْحَقِّ ۚلَتَدْخُلُنَّ الْمَسْجِدَ الْحَرَامَ اِنْ شَٓاءَ اللّٰهُ اٰمِنٖينَ ۙمُحَلِّقٖينَ رُؤُ سَكُمْ وَمُقَصِّرٖينَ ۙلاَ تَخَا فُونَ ؕ فَعَلِمَ مَا لَمْ تَعْلَمُوا فَجَعَلَ مِن دُونِ ذٰلِكَ فَتْحًا قَرٖيبًا ﴿٢٧﴾هُوَ الَّذٖٓى اَرْسَلَ رَسُولَهُ بِالْهُدٰى وَدٖينِ الْحَقِّ لِيُظْهِرَهُ عَلَى الدِّينِ كُلِّهٖ ؕوَكَفٰى بِاللّٰهِ شَهِيدًا ؕ﴿٢٨﴾مُحَمَّدٌ رَسُولُ اللّٰهِ ؕوَالَّذٖينَ مَعَهُٓ اَشِدَّٓاءُ عَلَى الْكُفَّارِ رُحَمَٓاءُ بَيْنَهُمْ تَرٰيهُمْ رُكَّعًا سُجَّدًا يَبْتَغُونَ فَضْلاً مِنَ اللّٰهِ وَرِضْوَانًا ؗسِيمَاهُمْ فٖى وُجُوهِهِمْ مِنْ اَثَرِ السُّجُودِ ؕذٰلِكَ مَثَلُهُمْ فِى التَّوْرٰيةِ ۚوَمَثَلُهُمْ فِى الْاِنْجٖيلِقڤكَزَرْعٍ اَخْرَجَ شَطْٴَهُ فَاٰزَرَهُ فَاسْتَغْلَظَ فَاسْتَوٰى عَلٰى سُوقِهٖ يُعْجِبُ الزُّرَّاعَ لِيَغٖيظَ بِهِمُ الْكُفَّارَ ؕوَعَدَ اللّٰهُ الَّذٖينَ اٰمَنُوا وَعَمِلُوا الصَّالِحَاتِ مِنْهُمْ مَغْفِرَةً وَاَجْرًا عَظٖيمًا ﴿٢٩﴾",
  "سَنَفْرُغُ لَكُمْ اَيُّهَا الثَّقَلاَنِ ﴿٣١﴾ فَبِاَىِّ اٰلآَءِ رَبِّكُمَا تُكَذِّبَانِ ﴿٣٢﴾ يَا مَعْشَرَ الْجِنِّ وَالْاِنْسِ اِنِ اسْتَطَعْتُمْ اَنْ تَنْفُذُوا مِنْ اَقْطَارِ السَّمٰوَاتِ وَالْاَرْضِ فَانْفُذُوا ؕلاَ تَنْفُذُونَ اِلَّا بِسُلْطَانٍۚ﴿٣٣﴾ فَبِاَىِّ اٰلآَءِ رَبِّكُمَا تُكَذِّبَانِ ﴿٣٤﴾ يُرْسَلُ عَلَيْكُمَا شُوَاظٌ مِنْ نَارٍ وَنُحَاسٌ فَلاَ تَنْتَصِرَانِ ۚ﴿٣٥﴾",
  "سَبَّحَ لِلّٰهِ مَا فِى السَّمٰوَاتِ وَالْأَرْضِۚ وَهُوَ الْعَزِيزُ الْحَكِيمُ ﴿١﴾ لَهُ مُلْكُ السَّمٰوَاتِ وَالْأَرْضِۚ  يُحْيِي وَيُمِيتُۚ  وَهُوَ عَلٰى كُلِّ شَىْءٍ قَدِيرٌ"
      "﴿٢﴾ هُوَ الْأَوَّلُ وَالْآخِرُ وَالظَّاهِرُ وَالْبَاطِنُۚ وَهُوَ بِكُلِّ شَىْءٍ عَلِيمٌ ﴿٣﴾ هُوَ الَّذِي خَلَقَ السَّمٰوَاتِ وَالْأَرْضَ فِى سِتَّةِ أَيَّامٍ ثُمَّ اسْتَوَى عَلَى الْعَرْشِ ؕ يَعْلَمُ مَا يَلِجُ فِى الْأَرْضِ وَمَا يَخْرُجُ مِنْهَا وَمَا يَنْزِلُ مِنَ السَّمَاءِ وَمَا يَعْرُجُ فِيهَا ؕ وَهُوَ مَعَكُمْ أَيْنَ مَا كُنْتُمْ ؕ وَاللّٰهُ بِمَا تَعْمَلُونَ بَصِيرٌ ﴿٤﴾ لَهُ مُلْكُ السَّمٰوَاتِ وَالْأَرْضِ ؕ وَإِلَى اللّٰهِ تُرْجَعُ الْأُمُورُ ﴿٥﴾ يُولِجُ الَّيْلَ فِى النَّهَارِ وَيُولِجُ النَّهَارَ فِى الَّيْلِ ؕ وَهُوَ عَلِيمٌ بِذَاتِ الصُّدُورِ ﴿٦﴾",
  "لَوْ اَنْزَلْنَا هٰـذَا الْقُرْاٰنَ عَلٰى جَبَلٍ لَرَاَيْتَهُ خَاشِعًا مُتَصَدِّعًا مِنْ خَشْيَةِ اللّٰهِ ؕ وَتِلْكَ الْاَمْثَالُ نَضْرِبُهَا لِلنَّاسِ لَعَلَّهُمْ يَتَفَكَّرُونَ ﴿٢١﴾ هُوَ اللّٰهُ الَّذٖى لآَ اِلٰهَ اِلاَّ هُوَ ۚعَالِمُ الْغَيْبِ وَالشَّهَادَةِۚ هُوَ الرَّحْمٰـنُ الرَّحِيمُ ﴿٢٢﴾ هُوَ اللّٰهُ الَّذٖى لآَ اِلٰهَ اِلاَّ هُوَ ۚ"
      "اَلْمَلِكُ الْقُدُّوسُ السَّلاَمُ الْمُؤْمِنُ الْمُهَيْمِنُ الْعَزِيزُ الْجَبَّارُ الْمُتَكَبِّرُ ؕ سُبْحَانَ اللّٰهِ عَمَّا يُشْرِكُونَ ﴿٢٣﴾ هُوَ اللّٰهُ الْخَالِقُ الْبَارِئُ الْمُصَوِّرُ لَهُ الْاَسْمَٓاءُ الْحُسْنٰى ؕ يُسَبِّحُ لَهُ مَا فِى السَّمٰوَاتِ وَالْاَرْضِ ۚ وَهُوَ الْعَزِيزُ الْحَكٖيمُ ﴿٢٤﴾",
  "قُلْ اُوحِىَ اِلَىَّ اَنَّهُ اسْتَمَعَ نَفَرٌ مِنَ الْجِنِّ فَقَالُٓوا اِنَّا سَمِعْنَا قُرْاٰنًا عَجَبًا ۙ﴿١﴾ يَهْدٖٓى اِلَى الرُّشْدِ فَاٰمَنَّا بِهٖ ؕ وَلَنْ نُشْرِكَ بِرَبِّنَٓا اَحَدًا ﴿٢﴾ وَاَنَّهُ تَعَالَى جَدُّ رَبِّنَا مَا اتَّخَذَ صَاحِبَةً وَلاَ وَلَدًا ۙ﴿٣﴾وَاَنَّهُ كَانَ يَقُولُ سَفِيهُنَا عَلَى اللّٰهِ شَطَطًا ۙ﴿٤﴾",
  "بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ\n"
      "قُلْ هُوَ ٱللَّهُ أَحَدٌ ﴿١﴾ ٱللَّهُ ٱلصَّمَدُ ﴿٢﴾ لَمْ يَلِدْ وَلَمْ يُولَدْ ﴿٣﴾ وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ ﴿٤﴾",
  "بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ\n"
      "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ ﴿١﴾ مِن شَرِّ مَا خَلَقَ ﴿٢﴾ وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ ﴿٣﴾ وَمِن شَرِّ ٱلنَّفَّـٰثَـٰتِ فِى ٱلْعُقَدِ ﴿٤﴾ وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ ﴿٥﴾",
  "بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ"
      " قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ ٱلْفَلَقِ ﴿١﴾  مَلِكِ ٱلنَّاسِ ﴿٢﴾ إِلَـٰهِ ٱلنَّاسِ ﴿٣﴾ مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ ﴿٤﴾ ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ ﴿٥﴾ مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ ﴿٦﴾",
  "سُبْحَانَ اللّٰه ٣٣  ",
  "الْحَمْدُ لِلّٰه ٣٣ ",
  "اللّٰهُ أَكْبَر ٣٣",
  "اللّٰهُ أَكْبَرُ كَبِيراً والْحَمْدُ لِلّٰهِ كَثِيراً فَسُبْحَانَ اللّٰهِ بُكْرَةً وَأَصِيلاً.لاَ إِلَهَ إِلاَّ اللّٰهُ – حَقًّا – لاَ إِلَهَ إِلاَّ اللّٰهُ – صِدْقًا – لاَ إِلَهَ إِلاَّ اللّٰهُ وَحْدَهُ لاَ شَرِيكَ لَهُ ،لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِي وَيُمِيتُ بِيَدِهِ الْخَيْرُ وَهُوَ عَلٰى كُلِّ شَيْءٍ قَدِيرٌ* "
      " سُبْحَانَ رَبِّيَ الْعَلِيِّ الْأَعْلَى الْوَهَّابُ \n" " (ثم تدعو )"
];
List<String> threadturkki = [
// " \uFD3E"+(arabicNumber.convert("10"),).toString().toLowerCase()+ "\uFD3F"

  "Esteğfirullah esteğfirullah esteğfirullah el Âẑiym el Keriym elleżiy lailahe illa huvel Ĥæyyel Qæyyũm ve etũbu ileyh.  (2 kere)",
  "Esteğfirullah el Âẑiymu lena, ve-livalideyna, ve-lilmu miniyne ve-lilmu’minati, ve-lilmuslimiyne ve-lilmuslimati, el eĥya-i minhum vel emvati ve-limen kane ĥæqqun âleyna vel vacibat",
  "Ĥæsbunællahu ve nî’mel vekiyl (3kere).  Nî’mel Mevla ve nî’men-nasiyr ğufraneke Ræbbena ve ileykel meŝiyr. ",
  "Ællahumme entes-Selam ve minkes-Selam feĥæyyina bis-Selam ve edxilnel cennete dares-Selam tebarækte Ræbbena veteâaleyte ya Żelcelali vel ikram.",
  "Li Eşræfilmurseliyn: Eŝŝælatu vesselamu âleyke ya Seyyidi ya Ræsulællah, eŝŝælatu vesselamu âleyke ya Seyyidiy ya Ĥæbiybællah, xuż biyediy qællet ĥiyletiy edrikniy eğiṡniy ya Ebaz-Zehrai eğiṡniy. (3 kere)",
  "Ællahumme la maniâ lima eâ’ŧæyte vela mû’ŧiye lima menâ’te vela rãdde lima qæđæyte vela yenfeûżel ceddi min kel ced. La ĥævle vela quvvete illa billahil âliyyil âẑiym. Lailaheillællah vela neâ’budu illa iyyahu lehun-niî’metu velehul feđlu velehuṡ-ṡenaul ĥæsen. Lailaheillællahu muxliŝiyne lehud-diyne velev kerihel kafirũn.",
  "bismi-llâhi-rraḥmâni-rraḥîm. (1) elḥamdü lillâhi rabbi-l`âlemîn. (2) erraḥmâni-rraḥîm(3) mâliki yevmi-ddîn.(4) iyyâke na`büdü veiyyâke neste`în.(5) ihdine-ṣṣirâṭa-lmüsteḳîm.(6) ṣirâṭa-lleẕîne en`amte `aleyhim gayri-lmagḍûbi `aleyhim vele-ḍḍâllîn.(7)",
  "1-Elif lãm mĩm. \n2-Żalikel kitabu la ræybe fiyhi. Huden lil mutteqiyn. \n3-Elleżiyne yu’minũne bil ğæybi ve yuqiymũneŝ-ŝælate ve mimma ræzeqnahum yunfiqũn.\n4-Velleżiyne yu’minũne bimã unzile ileyke ve mã unzile min qæblik. Ve bil axirætihum yũqinũn. \n5-Ulãike âla huden mir-ræbbihim ve ulãike humul mufliĥũn.",
  "163. Ve ilahukum ilahun vaĥidun. La ilahe illa huver-ræĥmanur-ræĥiym. \n164. İnne fiy xælqis-semavati vel erđi vextilafil-leli ven-nehari vel fulkilletiy tecriy fil beĥri bima yenfeûn-nase vemã enzelællahu mines-semãi min mãin fe eĥya bihil erđæ beâ’de mevtiha ve beṡṡe fiyha min kulli dãbbehtin. Ve teŝriyfir-riyaĥi ves-seĥabil musexxæri beynes-semãi vel erđi le ayatin li qævmin yeâ’qilũn.",
  "255. Ællahu lãilahe illa huvel ĥæyyul qæyyũm. La te’xużuhũ sinetun vela nevm. Lehũ ma fis-semavati vema fil ærđ. Menżelleżiy yeşfeû îndehũ illa bi iżnih. Yeâ’lemu ma beyne eydiyhim vema xælfehum. Vela yuĥiyŧũne bişey’in min îlmihĩ illa bimaşãe, vesiâ kursiyyuhus-semavati vel ærđ. Vela yeũduhũ ĥifẑuhuma, vehuvel âliyyul âẑiym. 256. Lã ikrahe fid-diyni qæd tebeyyener-ruşdu minel ğæyyi. Femen yekfur biŧ-ŧağũti ve yu’min billahi fe qædistemseke bil ûrvetil vuṡqa lenfiŝame leha. Vællahu semiyûn âliym. 257. Ællahu veliyyulleżiyne amenũ yuxricuhum mineẑ-ẑulumati ilen-nũr. Velleżiyne keferũ evliyãuhumuŧ-ŧağũtu yuxricũnehum minen-nũri ileẑ-ẑulumat. Ulãike eŝĥabun-nar. Hum fiyha xalidũn.",
  "284. Lillahi ma fis-semavati vema fil ærđ. Vein tubdũ mafiy enfusikum ev tuxfũhu yuĥasibkum bihillah. Fe yeğfiru limen yeşãu ve yuâżżibu men yeşãu. Vællahu âla kulli şey’in qædiyr.285. Amener-ræsũlu bimã unzile ileyhi min ræbbihiy vel mu’minũn. Kullun amene billahi ve melãiketihiy ve kutubihiy ve rusulih. La nuferriqu beyne eĥædin min rusulih. Ve qalũ semî’na ve eŧâ’na ğufraneke ræbbena ve ileykel mæsiyr.286. La yukellifullahu nefsen illa vus’âha. Leha ma kesebet ve âleyha mektesebet. Ræbbena la tuaxiżna innesiyna ev exŧæ’na. Ræbbena ve la teĥmil âleyna iŝræn kema ĥameltehũ âlelleżiyne min qæblina. Ræbbena vela tuĥæmmilna ma la ŧaqæte lena bih. Veâ’fu ânna, veâğ’fir lena, verĥæmna, ente mevlana fenŝurna âlel qævmil kafiriyn.",
  "Şehidællahu ennehũ lailaheilla huve vel melãiketu ve ulul îlmi qãimen bil qisŧ. Lailaheilla huvel âziyzul ĥækiym. İnneddiyne îndællahil islam. Qulillahumme malikel mulki tu’til mulke men teşãu ve tenziûl mulke mimmen teşãu. Ve tuîzzu men teşãu. Ve tużillu men teşãu biyedikel xæyr inneke âla kulli şey’in qædiyr, tũlicul-leyle finnehari ve tũlicun-neharæ fil leyli ve tuxricul ĥæyye minel meyyiti ve tuxricul meyyite minel ĥæyyi ve terzuqu men teşãu biğæyri ĥisab.",
  "154. Ṡumme enzele âleykum min beâ’dil-ğæmmi emeneten nuâasen yeğşa ŧãifeten minkum ve ŧẫifetun qæd ehemmethum enfusuhum yeẑunnũne billahi ğæyræl ĥæqqi ẑænnel cahiliyyeh. Yeqũlũne hel-lena minel emri min şeyin. Qul innel emræ kullehũ lillah. Yuxfũne fĩy enfusihim mala yubdũne leke. Yeqũlũne lev kane lena minel emri şey’un ma qutilna hahuna. Qul lev kuntum fiy buyũtikum le beræzelleżiyne kutibe âleyhimul qætlu ila međaci-îhim. Ve-liyeb’teliyællahu mafiy ŝudũrikum ve-li yumeĥĥiŝæ mafiy qulũbikum. Vællahu âliymun bi żatiŝ-ŝudũr.",
  "54.İnne ræbbekumullahulleżiy xæleqæs-semavati vel erđæ fiy sitteti eyyamin ṡummesteva âlel ârşi, yuğşil-leylen nehare yeŧlubuhũ ĥæṡiyṡen veş-şemse vel qemeræ ven-nucũme musexxæratin biemrihiy, ela lehul xælqu vel emru, tebarekællahu ræbbul âalemiyn. 55.Ud’ûu ræbbekum teđerruân ve xufyeten, innehũ la yuĥibbul mû’tediyn. 56.Vela tufsidû fil erđi beâ’de iŝlaĥiha ved’ûuhu xævfen ve ŧæmeân. İnne ræĥmetællahi qæriybun minel muĥsiniyn.",
  "128. Leqæd cãekum Ræsũlun min enfusikum âziyzun âleyhi ma ânittum ĥæriyŝun âleykum bil mu’miniyne ræũfur-ræĥiym. 129. Fein tevellev fequl ĥæsbiyællahu la ilahe illa huve. Âleyhi tevekkeltu vehuve Ræbbul ârşil âẑiym.",
  "110. Qulid’ûllahe evid’ûr-ræĥman, eyyen ma ted’û felehul esmãul ĥusna, vela tec’her bi ŝælatike vela tuxafit biha vebteği beyne żalike sebiyla. \n111. Ve qulil ĥæmdu lillahilleżiy lem yettexiż veleden velem yekun lehũ şeriykun fil mulki velem yekun lehũ veliyyun mineż-żulli ve kebbirhu tekbiyra.",
  "1.Veŝŝaffati ŝæffa.\n2.Fezzacirati zecra.\n3.Fettaliyati żikra.4.İnne ilahekum levaĥid.\n5.Ræbbus-semavati vel erđi vema beynehuma ve ræbbul meşariq.\n 6.İnna zeyyennes-semãed-dunya bi ziynetinil kevakib.\n 7.Ve ĥifẑæn min kulli şeyŧanin marid.\n 8.La yessemmeûune ilel meleil eâ’la ve yuqżefũne min kulli canib.\n9.Duĥuran velehum âżabun vaŝib.\n10.İlla men xæŧifel xæŧfete fe etbeâhũ şihabun ṡaqib.\n11.Festeftihim ehum eşeddu xælqen emmen xæleqna inna xæleqnahum min ŧiynillazib.",
  "27. Le qæd ŝædeqællahu ræsũlehur-ru’ya bil ĥæqqi. Le ted’xulunnel mescidel ĥærame inşãællahu aminiyne muĥælliqiyne ru-ũsekum ve muqæŝŝiriyne la texafũne. Feâlime ma lem teâ’lemũ feceâle min dũni żalike fetĥæn qæriybaen.\n28. Huvelleżĩy ersele ræsũlehũ bil huda ve diynil ĥæqqi liyuẑhiræhũ âled-diyni kullihiy. Ve kefa billahi şehiydan.\n29. Muĥæmmedun ræsũlullah. Velleżiyne meâhũ eşiddãu âlel kuffari ruĥæmãu beynehum terahum rukkeân succeden yeb’teğũne feđlen minællahi ve riđvanan. Siymahum fiy vucũhihim min eṡeris-sucũdi. Żalike meṡeluhum fit-tevrati ve meṡeluhum fil inciyli. Kezer’în exræce şeŧ’ehũ fe azeræhũ festeğleẑæ festeva âla sũqihiy yu’cibuz-zurrã-â li yeğiyẑæ bihimul kuffaræ. Ve âdællahulleżiyne amenũ ve âmiluŝ-ŝaliĥati minhum meğfiræten ve ec’ræn âẑiyma.",
  "31. Senefruğu lekum eyyuheṡ-ṡeqælan.\n32. Febieyyi alã-i ræbbikuma tukeżżiban.\n33.Ya meâ’şeræl cinni vel insi inisteŧâ’tum en tenfużũ min eqŧaris-semavati vel erđi fenfużũ la tenfużũne illa bi-sulŧan.\n34. Febieyyi alã-i ræbbikuma tukeżżiban.\n35.Yurselu âleykuma şuvaẑun minnarin ve nuĥasun fela tenteŝiran.",
  "Sebbeĥæ lillahi ma fis-semavati vel ærđ. Ve huvel âziyzul ĥækiym. Lehũ mulkus-semavati vel ærđ. Yuĥyiy ve yumit. Ve huve âla kulli şey'in qædiyr. Huvel evvelu vel axiru veẑ-ẑahiru vel baŧinu. Ve huve bi kulli şey'in âliym. Huvelleżi xæleqæs semavati vel ærđæ fi sitteti eyyamin ṡummes teva âlel ârşi. Yeâ'lemu ma yelicu fil ærđi vema yexrucu minha vema yenzilu mines-semãi vema yeâ'rucu fiyha. Ve huve meâkum eynema kuntum. Vællahu bima teâ'melũne beŝiyr. Lehũ mulkus-semavati vel ærđ. Ve ilællahi turceûl umũr. Yũlicul-leyle fin-nehari ve yũlicun-neharæ fil-leyl. Vehuve âliymun bi żatiŝ-ŝudũr.",
  "21.Lev enzelna hażel qur’ane âla cebelin leræeytehũ xæşi’ân muteŝæddiân min xæşyetillah. Ve tilkel emṡalu nađribuha linnasi le’âllehum yetefekkerũne.\n22. Huvællahulleżiy lã ilahe illa huve âlimul ğæybi veşşehadeti huver-ræĥmanurræhiymu.\n23. Huvællahulleżiy lã ilahe illa huve, el-melikul quddũsus-selamul mu’minul muheyminul âziyzul cebbarul mutekebbiru. Subĥanællahi âmma yuşrikune.\n24. Huvællahul xaliqul bari-ul muŝævviru lehul esmãul ĥusna. Yusebbiĥu lehũ ma fissemavati vel’ærđi. Vehuvel âziyzul ĥækiym.",
  "1. Qul ũĥiye ileyye enne hustemeâ neferun minel-cinni feqalũ inna semiî’na qur’anen âceben.\n2.Yehdĩy ilerruşdi feamenna bihiy velen-nuşrike biræbbinã eĥadan.\n3. Ve ennehũ te’âla ceddu ræbbina mettexæże ŝaĥibeten vela veledan.\n4. Ve ennehũ kane yeqũlu sefiyhuna âlællahi şeŧæŧa.",
  "Bismillahirrahmânirrahîm.\n1- Kul hüvellâhü ehad\n2- Allâhüssamed\n3- Lem yelid ve lem yûled\n4- Ve lem yekün lehû küfüven ehad",
  "Bismillahirrahmânirrahîm.\n1.	Kul e'ûzü birabbil felak\n2.	Min şerri mâ halak\n3.	Ve min şerri ğasikın izâ vekab\n4.	Ve min şerrinneffâsâti fil'ukad\n5.	Ve min şerri hâsidin izâ hased",
  "Bismillahirrahmânirrahîm.\n1.	Kul e'ûżu birabbinnâs.\n2.	Melikinnâs.\n3.	İlâhinnâs.\n4.	Min şerrilvesvâsil ḣannâs.\n5.	Elleżî yuvesvisu fî sudûrinnâs.\n6.	Minelcinneti vennâs.",
  "Subĥanællah33",
  "Elĥæmdulillah33",
  "Ællahuekber33",
  "Ællahuekberu Kebiyra velĥæmdulillahi keṡiyra fesubĥanællahi bukræten ve eŝiyla. Lailaheillællahu  ĥæqqæn, Lailaheillællahu ŝidqæn,Lailaheillællahu veĥdehũ la şeriyke leh, lehul mulku ve lehul ĥæmdu yuĥyi ve yumiytu biyedihil xæyru vehuve âla kulli şeyin qædiyr...Subĥane ræbbiyel âliyyil eâ'lel vehhab. (diyerek dua edilir.)",
];
Map<List<dynamic>, List<String>> listofayath = {
  arabicfs: Thurkis,
  secondarabicfs: secondarturki,
  threadarabic: threadturkki,
};

List<String> farzname = [
  "Meleklerin Tesbihatı",
  "Sabah ve Akşam Namazı Zikri",
  "Beş Vakit Namaz  Ardı  Zikirler"
];

