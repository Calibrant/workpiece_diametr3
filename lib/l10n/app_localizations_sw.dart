// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get main_title => 'Đường kính phôi';

  @override
  String get appbar_title => 'Máy tính đường kính phôi';

  @override
  String get appbar_table => 'Bảng đường kính phôi (mm)';

  @override
  String get hinttext_square => 'hình vuông';

  @override
  String get hinttext_hexagon => 'hình lục giác';

  @override
  String get drawer_header => 'Đường kính phôi';

  @override
  String get drawer_title_rate => 'Đánh giá ứng dụng này';

  @override
  String get drawer_title_privacy => 'Chính sách quyền riêng tư';

  @override
  String get history => 'Lịch sử:';

  @override
  String get clear => 'Xóa';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Inavyofanya kazi';

  @override
  String get menu_glossary => 'Kamusi';

  @override
  String get title_how_it_works => 'Inavyofanya Kazi';

  @override
  String get title_glossary => 'Kamusi';

  @override
  String get select_language => 'Chagua Lugha';

  @override
  String get hint_change_language => 'Gusa kubadilisha lugha';

  @override
  String get btn_open_calculator => 'Fungua Kikokotoo →';

  @override
  String get section_square_title => 'Kutengeneza Mraba — Hatua kwa Hatua';

  @override
  String get section_square_body => 'Hatua 1: Pima upande (a) wa mraba wako kwa mm\nHatua 2: Tumia fomula: D = a × 1.414\nHatua 3: Matokeo ni kipenyo cha chini cha workpiece\n\nMfano: a = 10 mm → D = 14.14 mm\n\nKwa nini 1.414?\nHii ni √2 — diagonal ya mraba wa kitengo.\nWorkpiece lazima iwe na diagonal kamili ya mraba.';

  @override
  String get section_hex_title => 'Kutengeneza Pembesita — Hatua kwa Hatua';

  @override
  String get section_hex_body => 'Hatua 1: Pima umbali kati ya nyuso tambarare (b) kwa mm\nHatua 2: Tumia fomula: D = b × 1.155\nHatua 3: Matokeo ni kipenyo cha chini cha workpiece\n\nMfano: b = 10 mm → D = 11.55 mm\n\nKwa nini 1.155?\nHii ni 2/√3 — kutoka jiometri ya pembesita.\nWorkpiece lazima iwe na upana kamili wa pembesita.';

  @override
  String get section_mistakes_title => 'Makosa ya Kawaida';

  @override
  String get section_mistakes_body => '• Usichanganye kipenyo na radius\n• Pima daima flat-to-flat, si kona hadi kona\n• Ongeza machining allowance (0.5–2 mm)\n• Fomula inatoa kipenyo cha chini — daima zungusha juu';

  @override
  String get term_01_title => 'Workpiece';

  @override
  String get term_01_body => 'Nyenzo ghafi (kawaida silinda) kabla ya operesheni yoyote ya machining.';

  @override
  String get term_02_title => 'Kipenyo (D)';

  @override
  String get term_02_body => 'Umbali kupitia katikati ya mduara.';

  @override
  String get term_03_title => 'Square Shaping';

  @override
  String get term_03_body => 'Mchakato wa kukata workpiece ya mviringo kuwa mraba.';

  @override
  String get term_04_title => 'Hexagon Shaping';

  @override
  String get term_04_body => 'Mchakato wa kukata workpiece ya mviringo kuwa pembesita ya kawaida.';

  @override
  String get term_05_title => 'Allowance';

  @override
  String get term_05_body => 'Nyenzo ya ziada iliyoachwa kwa ajili ya kumalizia.';

  @override
  String get term_06_title => 'Toleransi';

  @override
  String get term_06_body => 'Kiwango kinachoruhusiwa cha tofauti. Mfano: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Turning';

  @override
  String get term_07_body => 'Operesheni ambapo workpiece inazunguka dhidi ya zana iliyosimama.';

  @override
  String get term_08_title => 'Lathe';

  @override
  String get term_08_body => 'Mashine inayozungusha workpiece kwa turning na kupunguza kipenyo.';

  @override
  String get term_09_title => 'Feed Rate';

  @override
  String get term_09_body => 'Kasi ya zana kusonga (mm kwa mapinduzi).';

  @override
  String get term_10_title => 'Cutting Depth';

  @override
  String get term_10_body => 'Unene wa nyenzo inayoondolewa katika pass moja.';

  @override
  String get term_11_title => 'Surface Finish';

  @override
  String get term_11_body => 'Muundo na laini ya uso uliochakatwa (Ra micromita).';

  @override
  String get term_12_title => '√2 (Mzizi wa pili wa 2)';

  @override
  String get term_12_body => 'Kigezo cha hisabati ≈ 1.414.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Kigezo cha hisabati ≈ 1.155.';

  @override
  String get term_14_title => 'Machining Allowance';

  @override
  String get term_14_body => 'Kipenyo cha ziada ili kufidia kuvaa kwa zana (0.5–2.0 mm).';
}
