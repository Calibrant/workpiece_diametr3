// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get main_title => 'Diameter benda kerja';

  @override
  String get appbar_title => 'Kalkulator Diameter Benda Kerja';

  @override
  String get appbar_table => 'Jadual diameter benda kerja dalam mm';

  @override
  String get hinttext_square => 'segi empat sama';

  @override
  String get hinttext_hexagon => 'segi enam';

  @override
  String get drawer_header => 'Diameter benda kerja';

  @override
  String get drawer_title_rate => 'Nilai aplikasi ini';

  @override
  String get drawer_title_privacy => 'Dasar privasi';

  @override
  String get history => 'Sejarah:';

  @override
  String get clear => 'Kosongkan';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Cara ia berfungsi';

  @override
  String get menu_glossary => 'Glosari';

  @override
  String get title_how_it_works => 'Cara Ia Berfungsi';

  @override
  String get title_glossary => 'Glosari';

  @override
  String get select_language => 'Pilih Bahasa';

  @override
  String get hint_change_language => 'Ketuk untuk tukar bahasa';

  @override
  String get btn_open_calculator => 'Buka Kalkulator →';

  @override
  String get section_square_title => 'Pembentukan Segi Empat — Langkah demi Langkah';

  @override
  String get section_square_body => 'Langkah 1: Ukur sisi (a) segi empat anda dalam mm\nLangkah 2: Gunakan formula: D = a × 1.414\nLangkah 3: Keputusan adalah diameter minimum benda kerja\n\nContoh: a = 10 mm → D = 14.14 mm\n\nMengapa 1.414?\nIni ialah √2 — pepenjuru segi empat unit.\nBenda kerja mesti mengandungi pepenjuru segi empat sepenuhnya.';

  @override
  String get section_hex_title => 'Pembentukan Heksagon — Langkah demi Langkah';

  @override
  String get section_hex_body => 'Langkah 1: Ukur jarak rata-ke-rata (b) dalam mm\nLangkah 2: Gunakan formula: D = b × 1.155\nLangkah 3: Keputusan adalah diameter minimum benda kerja\n\nContoh: b = 10 mm → D = 11.55 mm\n\nMengapa 1.155?\nIni ialah 2/√3 — daripada geometri heksagon.\nBenda kerja mesti mengandungi lebar heksagon penuh.';

  @override
  String get section_mistakes_title => 'Kesilapan Biasa';

  @override
  String get section_mistakes_body => '• Jangan kelirukan diameter dengan jejari\n• Sentiasa ukur flat-to-flat, bukan sudut ke sudut\n• Tambah elaun pemesinan (0.5–2 mm) kepada keputusan\n• Formula memberikan diameter minimum — sentiasa bulatkan ke atas';

  @override
  String get term_01_title => 'Benda Kerja';

  @override
  String get term_01_body => 'Bahan mentah (biasanya silinder) sebelum sebarang operasi pemesinan.';

  @override
  String get term_02_title => 'Diameter (D)';

  @override
  String get term_02_body => 'Jarak merentasi bulatan melalui pusatnya.';

  @override
  String get term_03_title => 'Pembentukan Segi Empat';

  @override
  String get term_03_body => 'Proses memotong benda bulat kepada keratan rentas segi empat.';

  @override
  String get term_04_title => 'Pembentukan Heksagon';

  @override
  String get term_04_body => 'Proses memotong benda bulat kepada keratan rentas heksagon biasa.';

  @override
  String get term_05_title => 'Elaun';

  @override
  String get term_05_body => 'Bahan tambahan yang sengaja ditinggalkan untuk pemotongan kemasan.';

  @override
  String get term_06_title => 'Toleransi';

  @override
  String get term_06_body => 'Julat variasi yang dibenarkan. Contoh: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Turning';

  @override
  String get term_07_body => 'Operasi di mana benda kerja berputar terhadap alat pemotong tetap.';

  @override
  String get term_08_title => 'Mesin Larik';

  @override
  String get term_08_body => 'Mesin yang memutar benda kerja untuk operasi larik dan pengurangan diameter.';

  @override
  String get term_09_title => 'Kadar Suapan';

  @override
  String get term_09_body => 'Kelajuan alat pemotong maju (mm setiap putaran).';

  @override
  String get term_10_title => 'Kedalaman Potongan';

  @override
  String get term_10_body => 'Ketebalan bahan yang dikeluarkan dalam satu laluan.';

  @override
  String get term_11_title => 'Kemasan Permukaan';

  @override
  String get term_11_body => 'Tekstur dan kehalusan permukaan yang dimesin (Ra mikrometer).';

  @override
  String get term_12_title => '√2 (Punca kuasa dua 2)';

  @override
  String get term_12_body => 'Pemalar matematik ≈ 1.414 untuk formula segi empat.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Pemalar matematik ≈ 1.155 untuk formula heksagon.';

  @override
  String get term_14_title => 'Elaun Pemesinan';

  @override
  String get term_14_body => 'Diameter tambahan untuk mengimbangi haus alat (0.5–2.0 mm).';

  @override
  String get units_label => 'Unit pengukuran';

  @override
  String get units_mm => 'Milimeter (mm)';

  @override
  String get units_inch => 'Inci (inch)';

  @override
  String get units_select => 'Pilih unit pengukuran untuk pengiraan dan paparan:';

  @override
  String get appbar_table_inch => 'Jadual diameter bahan kerja dalam inci';

  @override
  String get history_cleared => 'Sejarah dibersihkan';

  @override
  String get history_clear_confirm_title => 'Bersihkan sejarah?';

  @override
  String get history_clear_confirm_body => 'Semua rekod akan dipadamkan secara kekal.';

  @override
  String get history_cancel => 'Batal';

  @override
  String get history_clear_confirm => 'Bersihkan';
}
