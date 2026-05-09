// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get main_title => 'वर्कपीस का व्यास';

  @override
  String get appbar_title => 'वर्कपीस व्यास कैलकुलेटर';

  @override
  String get appbar_table => 'मिमी में वर्कपीस व्यास की तालिका';

  @override
  String get hinttext_square => 'वर्ग';

  @override
  String get hinttext_hexagon => 'षट्भुज';

  @override
  String get drawer_header => 'वर्कपीस का व्यास';

  @override
  String get drawer_title_rate => 'इस ऐप को रेट करें';

  @override
  String get drawer_title_privacy => 'गोपनीयता नीति';

  @override
  String get history => 'इतिहास:';

  @override
  String get clear => 'साफ़ करें';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'यह कैसे काम करता है';

  @override
  String get menu_glossary => 'शब्दावली';

  @override
  String get title_how_it_works => 'यह कैसे काम करता है';

  @override
  String get title_glossary => 'शब्दावली';

  @override
  String get select_language => 'भाषा चुनें';

  @override
  String get hint_change_language => 'भाषा बदलने के लिए टैप करें';

  @override
  String get btn_open_calculator => 'कैलकुलेटर खोलें →';

  @override
  String get section_square_title => 'वर्ग आकार — चरणबद्ध तरीके से';

  @override
  String get section_square_body => 'चरण 1: अपने वर्ग की भुजा (a) mm में मापें\nचरण 2: सूत्र लागू करें: D = a × 1.414\nचरण 3: परिणाम न्यूनतम workpiece व्यास है\n\nउदाहरण: a = 10 mm → D = 14.14 mm\n\n1.414 क्यों?\nयह √2 है — यूनिट वर्ग की विकर्ण.\nWorkpiece को वर्ग की पूरी विकर्ण समाहित करनी चाहिए.';

  @override
  String get section_hex_title => 'षट्कोण आकार — चरणबद्ध तरीके से';

  @override
  String get section_hex_body => 'चरण 1: सपाट सतह से सपाट सतह की दूरी (b) mm में मापें\nचरण 2: सूत्र लागू करें: D = b × 1.155\nचरण 3: परिणाम न्यूनतम workpiece व्यास है\n\nउदाहरण: b = 10 mm → D = 11.55 mm\n\n1.155 क्यों?\nयह 2/√3 है — षट्कोण ज्यामिति से प्राप्त.\nWorkpiece को पूर्ण षट्कोण चौड़ाई समाहित करनी चाहिए.';

  @override
  String get section_mistakes_title => 'सामान्य गलतियाँ';

  @override
  String get section_mistakes_body => '• व्यास को त्रिज्या से भ्रमित न करें\n• हमेशा flat-to-flat मापें, कोने से कोने नहीं\n• परिणाम में मशीनिंग allowance (0.5–2 mm) जोड़ें\n• सूत्र न्यूनतम व्यास देता है — हमेशा ऊपर की ओर पूर्णांक करें';

  @override
  String get term_01_title => 'कार्यपीस';

  @override
  String get term_01_body => 'कच्चा मटेरियल (आमतौर पर बेलनाकार) किसी भी मशीनिंग से पहले.';

  @override
  String get term_02_title => 'व्यास (D)';

  @override
  String get term_02_body => 'केंद्र से होकर वृत्त की दूरी.';

  @override
  String get term_03_title => 'वर्ग आकार';

  @override
  String get term_03_body => 'गोल workpiece को वर्गाकार क्रॉस-सेक्शन में काटने की प्रक्रिया.';

  @override
  String get term_04_title => 'षट्कोण आकार';

  @override
  String get term_04_body => 'गोल workpiece को नियमित षट्कोणीय प्रोफाइल में काटने की प्रक्रिया.';

  @override
  String get term_05_title => 'Allowance';

  @override
  String get term_05_body => 'फिनिशिंग कट के लिए जानबूझकर छोड़ा गया अतिरिक्त मटेरियल.';

  @override
  String get term_06_title => 'टॉलरेंस';

  @override
  String get term_06_body => 'आयाम में अनुमेय विचलन की सीमा. उदाहरण: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Turning';

  @override
  String get term_07_body => 'Lathe पर workpiece का घूमना और stationary tool से कटाई.';

  @override
  String get term_08_title => 'Lathe';

  @override
  String get term_08_body => 'Workpiece को घुमाने वाली मशीन टूल.';

  @override
  String get term_09_title => 'Feed Rate';

  @override
  String get term_09_body => 'प्रति revolution टूल की आगे बढ़ने की गति (mm).';

  @override
  String get term_10_title => 'Cutting Depth';

  @override
  String get term_10_body => 'एक पास में हटाया गया मटेरियल की मोटाई.';

  @override
  String get term_11_title => 'Surface Finish';

  @override
  String get term_11_body => 'मशीनी सतह की बनावट और चिकनाई (Ra माइक्रोमीटर).';

  @override
  String get term_12_title => '√2 (2 का वर्गमूल)';

  @override
  String get term_12_body => 'गणितीय स्थिरांक ≈ 1.414, वर्ग सूत्र के लिए.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'गणितीय स्थिरांक ≈ 1.155, षट्कोण सूत्र के लिए.';

  @override
  String get term_14_title => 'Machining Allowance';

  @override
  String get term_14_body => 'टूल वियर के लिए अतिरिक्त व्यास (0.5–2.0 mm).';
}
