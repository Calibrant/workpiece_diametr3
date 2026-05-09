// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get main_title => 'Diameter benda kerja';

  @override
  String get appbar_title => 'Kalkulator Diameter Benda Kerja';

  @override
  String get appbar_table => 'Tabel diameter benda kerja dalam mm';

  @override
  String get hinttext_square => 'persegi';

  @override
  String get hinttext_hexagon => 'segi enam';

  @override
  String get drawer_header => 'Workpiece Diameter';

  @override
  String get drawer_title_rate => 'Rate this app';

  @override
  String get drawer_title_privacy => 'Privacy policy';

  @override
  String get history => 'Sejarah:';

  @override
  String get clear => 'Jelas';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Cara kerjanya';

  @override
  String get menu_glossary => 'Glosarium';

  @override
  String get title_how_it_works => 'Cara Kerja';

  @override
  String get title_glossary => 'Glosarium';

  @override
  String get select_language => 'Pilih Bahasa';

  @override
  String get hint_change_language => 'Ketuk untuk mengganti bahasa';

  @override
  String get btn_open_calculator => 'Buka Kalkulator →';

  @override
  String get section_square_title => 'Pembentukan Segi Empat — Langkah demi Langkah';

  @override
  String get section_square_body => 'Langkah 1: Ukur sisi (a) segi empat Anda dalam mm\nLangkah 2: Terapkan rumus: D = a × 1.414\nLangkah 3: Hasil adalah diameter minimum benda kerja\n\nContoh: a = 10 mm → D = 14.14 mm\n\nMengapa 1.414?\nIni adalah √2 — diagonal persegi satuan.\nBenda kerja harus sepenuhnya menampung diagonal segi empat.';

  @override
  String get section_hex_title => 'Pembentukan Segi Enam — Langkah demi Langkah';

  @override
  String get section_hex_body => 'Langkah 1: Ukur jarak bidang ke bidang (b) dalam mm\nLangkah 2: Terapkan rumus: D = b × 1.155\nLangkah 3: Hasil adalah diameter minimum benda kerja\n\nContoh: b = 10 mm → D = 11.55 mm\n\nMengapa 1.155?\nIni adalah 2/√3 — berasal dari geometri heksagon.\nBenda kerja harus menampung lebar penuh heksagon.';

  @override
  String get section_mistakes_title => 'Kesalahan Umum';

  @override
  String get section_mistakes_body => '• Jangan keliru antara diameter dan radius\n• Selalu ukur flat-to-flat, bukan corner-to-corner\n• Tambahkan allowance pemesinan (0.5–2 mm) ke hasil\n• Rumus memberikan diameter minimum — selalu bulatkan ke atas';

  @override
  String get term_01_title => 'Benda Kerja';

  @override
  String get term_01_body => 'Bahan mentah (biasanya silinder) sebelum operasi pemesinan.';

  @override
  String get term_02_title => 'Diameter (D)';

  @override
  String get term_02_body => 'Jarak melintasi lingkaran melalui pusatnya.';

  @override
  String get term_03_title => 'Pembentukan Segi Empat';

  @override
  String get term_03_body => 'Proses pemesinan yang memotong benda bulat menjadi profil segi empat.';

  @override
  String get term_04_title => 'Pembentukan Segi Enam';

  @override
  String get term_04_body => 'Proses pemesinan yang memotong benda bulat menjadi profil heksagon reguler.';

  @override
  String get term_05_title => 'Allowance';

  @override
  String get term_05_body => 'Material ekstra yang sengaja dibiarkan untuk pemotongan akhir.';

  @override
  String get term_06_title => 'Toleransi';

  @override
  String get term_06_body => 'Rentang variasi yang diizinkan. Contoh: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Turning';

  @override
  String get term_07_body => 'Operasi di mana benda kerja berputar terhadap alat potong tetap di bubut.';

  @override
  String get term_08_title => 'Bubut';

  @override
  String get term_08_body => 'Mesin yang memutar benda kerja untuk turning dan pengurangan diameter.';

  @override
  String get term_09_title => 'Feed Rate';

  @override
  String get term_09_body => 'Kecepatan gerak alat potong (mm per putaran).';

  @override
  String get term_10_title => 'Kedalaman Potong';

  @override
  String get term_10_body => 'Ketebalan material yang dihilangkan dalam satu pass.';

  @override
  String get term_11_title => 'Surface Finish';

  @override
  String get term_11_body => 'Tekstur dan kehalusan permukaan yang dimesin (Ra mikrometer).';

  @override
  String get term_12_title => '√2 (Akar kuadrat 2)';

  @override
  String get term_12_body => 'Konstanta matematika ≈ 1.414 untuk rumus segi empat.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Konstanta matematika ≈ 1.155 untuk rumus segi enam.';

  @override
  String get term_14_title => 'Machining Allowance';

  @override
  String get term_14_body => 'Diameter tambahan untuk mengkompensasi keausan alat (0.5–2.0 mm).';
}
