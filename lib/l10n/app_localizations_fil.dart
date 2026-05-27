// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get main_title => 'Diameter ng piraso ng trabaho';

  @override
  String get appbar_title => 'Kalkulador ng Diameter ng Piraso ng Trabaho';

  @override
  String get appbar_table => 'Talaan ng mga diameter ng piraso ng trabaho (mm)';

  @override
  String get hinttext_square => 'parisukat';

  @override
  String get hinttext_hexagon => 'hexagon';

  @override
  String get drawer_header => 'Diameter ng piraso ng trabaho';

  @override
  String get drawer_title_rate => 'I-rate ang app na ito';

  @override
  String get drawer_title_privacy => 'Patakaran sa privacy';

  @override
  String get history => 'Kasaysayan:';

  @override
  String get clear => 'I-clear';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Paano ito gumagana';

  @override
  String get menu_glossary => 'Glosaryo';

  @override
  String get title_how_it_works => 'Paano Ito Gumagana';

  @override
  String get title_glossary => 'Glosaryo';

  @override
  String get select_language => 'Piliin ang Wika';

  @override
  String get hint_change_language => 'I-tap para baguhin ang wika';

  @override
  String get btn_open_calculator => 'Buksan ang Calculator →';

  @override
  String get section_square_title => 'Paghubog ng Parisukat — Hakbang-hakbang';

  @override
  String get section_square_body => 'Hakbang 1: Sukatin ang gilid (a) ng iyong parisukat sa mm\nHakbang 2: Ilapat ang formula: D = a × 1.414\nHakbang 3: Ang resulta ay ang minimum na diameter ng workpiece\n\nHalimbawa: a = 10 mm → D = 14.14 mm\n\nBakit 1.414?\nIto ay √2 — ang dayagonal ng isang unit square.\nDapat ganap na ma-contain ng workpiece ang dayagonal ng parisukat.';

  @override
  String get section_hex_title => 'Paghubog ng Hexagon — Hakbang-hakbang';

  @override
  String get section_hex_body => 'Hakbang 1: Sukatin ang flat-to-flat distance (b) sa mm\nHakbang 2: Ilapat ang formula: D = b × 1.155\nHakbang 3: Ang resulta ay ang minimum na diameter ng workpiece\n\nHalimbawa: b = 10 mm → D = 11.55 mm\n\nBakit 1.155?\nIto ay 2/√3 — mula sa geometry ng hexagon.\nDapat ma-contain ng workpiece ang buong lapad ng hexagon.';

  @override
  String get section_mistakes_title => 'Mga Karaniwang Pagkakamali';

  @override
  String get section_mistakes_body => '• Huwag malito ang diameter sa radius\n• Laging sukatin flat-to-flat, hindi corner-to-corner\n• Magdagdag ng machining allowance (0.5–2 mm) sa resulta\n• Ang formula ay nagbibigay ng minimum diameter — laging i-round up';

  @override
  String get term_01_title => 'Workpiece';

  @override
  String get term_01_body => 'Ang hilaw na materyal (karaniwang cylindrical) bago ang anumang machining.';

  @override
  String get term_02_title => 'Diameter (D)';

  @override
  String get term_02_body => 'Ang distansya sa buong bilog na dumadaan sa gitna nito.';

  @override
  String get term_03_title => 'Square Shaping';

  @override
  String get term_03_body => 'Proseso ng pagputol ng round workpiece sa square cross-section.';

  @override
  String get term_04_title => 'Hexagon Shaping';

  @override
  String get term_04_body => 'Proseso ng pagputol ng round workpiece sa regular hexagonal profile.';

  @override
  String get term_05_title => 'Allowance';

  @override
  String get term_05_body => 'Dagdag na materyal na sadyang iniiwan para sa pagtatapos.';

  @override
  String get term_06_title => 'Tolerance';

  @override
  String get term_06_body => 'Pinapayagang saklaw ng pagkakaiba sa sukat. Hal: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Turning';

  @override
  String get term_07_body => 'Pag-ikot ng workpiece laban sa stationary cutting tool sa lathe.';

  @override
  String get term_08_title => 'Lathe';

  @override
  String get term_08_body => 'Makina na nagpapaikot sa workpiece para sa turning at diameter reduction.';

  @override
  String get term_09_title => 'Feed Rate';

  @override
  String get term_09_body => 'Bilis ng pagsulong ng cutting tool (mm bawat revolution).';

  @override
  String get term_10_title => 'Cutting Depth';

  @override
  String get term_10_body => 'Kapal ng materyal na tinanggal sa isang pass.';

  @override
  String get term_11_title => 'Surface Finish';

  @override
  String get term_11_body => 'Texture at smoothness ng machined surface (Ra micrometers).';

  @override
  String get term_12_title => '√2 (Square root of 2)';

  @override
  String get term_12_body => 'Mathematical constant ≈ 1.414 para sa square formula.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Mathematical constant ≈ 1.155 para sa hexagon formula.';

  @override
  String get term_14_title => 'Machining Allowance';

  @override
  String get term_14_body => 'Dagdag na diameter para sa tool wear at surface imperfections (0.5–2.0 mm).';

  @override
  String get units_label => 'Mittayksiköt';

  @override
  String get units_mm => 'Millimetrit (mm)';

  @override
  String get units_inch => 'Tuumat (inch)';

  @override
  String get units_select => 'Valitse mittayksikkö laskentoihin ja näyttöön:';

  @override
  String get appbar_table_inch => 'Työkappaleiden halkaisijataulukko tuumina';

  @override
  String get history_cleared => 'Historia tyhjennetty';

  @override
  String get history_clear_confirm_title => 'Tyhjentää historia?';

  @override
  String get history_clear_confirm_body => 'Kaikki merkinnät poistetaan pysyvästi.';

  @override
  String get history_cancel => 'Peruuta';

  @override
  String get history_clear_confirm => 'Tyhjennä';
}
