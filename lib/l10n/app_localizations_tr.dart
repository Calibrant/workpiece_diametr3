// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get main_title => 'İş Parçası Çapı';

  @override
  String get appbar_title => 'İş Parçası Çapı Hesaplayıcı';

  @override
  String get appbar_table => 'İş parçası çapları tablosu (mm)';

  @override
  String get hinttext_square => 'kare';

  @override
  String get hinttext_hexagon => 'altıgen';

  @override
  String get drawer_header => 'İş Parçası Çapı';

  @override
  String get drawer_title_rate => 'Bu uygulamayı değerlendir';

  @override
  String get drawer_title_privacy => 'Gizlilik politikası';

  @override
  String get history => 'Geçmiş:';

  @override
  String get clear => 'Temizle';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Nasıl Çalışır';

  @override
  String get menu_glossary => 'Terimler Sözlüğü';

  @override
  String get title_how_it_works => 'Nasıl Çalışır';

  @override
  String get title_glossary => 'Terimler Sözlüğü';

  @override
  String get select_language => 'Dil Seç';

  @override
  String get hint_change_language => 'Dili değiştirmek için dokunun';

  @override
  String get btn_open_calculator => 'Hesap Makinesini Aç →';

  @override
  String get section_square_title => 'Kare Şekillendirme — Adım Adım';

  @override
  String get section_square_body => 'Adım 1: Karenizin kenar uzunluğunu (a) mm cinsinden ölçün\nAdım 2: Formülü uygulayın: D = a × 1.414\nAdım 3: Sonuç minimum iş parçası çapıdır\n\nÖrnek: a = 10 mm → D = 14.14 mm\n\nNeden 1.414?\nBu √2 — birim karenin köşegeni.\nİş parçası karenin köşegenini tamamen içermelidir.';

  @override
  String get section_hex_title => 'Altıgen Şekillendirme — Adım Adım';

  @override
  String get section_hex_body => 'Adım 1: Düz yüzeyler arası mesafeyi (b) mm cinsinden ölçün\nAdım 2: Formülü uygulayın: D = b × 1.155\nAdım 3: Sonuç minimum iş parçası çapıdır\n\nÖrnek: b = 10 mm → D = 11.55 mm\n\nNeden 1.155?\nBu 2/√3 — altıgen geometrisinden türetilmiştir.\nİş parçası altıgenin tam genişliğini içermelidir.';

  @override
  String get section_mistakes_title => 'Yaygın Hatalar';

  @override
  String get section_mistakes_body => '• Çapı yarıçapla karıştırmayın\n• Her zaman düz yüzeyler arası ölçün, köşe-köşe değil\n• Sonuca işleme payı (0,5–2 mm) ekleyin\n• Formül minimum çapı verir — her zaman yukarı yuvarlayın';

  @override
  String get term_01_title => 'İş parçası';

  @override
  String get term_01_body => 'Herhangi bir işlemden önce ham malzeme (genellikle silindirik).';

  @override
  String get term_02_title => 'Çap (D)';

  @override
  String get term_02_body => 'Merkezinden geçen daire mesafesi.';

  @override
  String get term_03_title => 'Kare Şekillendirme';

  @override
  String get term_03_body => 'Yuvarlak iş parçasını kare enine kesite dönüştüren işlem.';

  @override
  String get term_04_title => 'Altıgen Şekillendirme';

  @override
  String get term_04_body => 'Yuvarlak iş parçasını düzenli altıgen enine kesite dönüştüren işlem.';

  @override
  String get term_05_title => 'Pay';

  @override
  String get term_05_body => 'Son işlem kesimleri için kasıtlı olarak bırakılan ekstra malzeme.';

  @override
  String get term_06_title => 'Tolerans';

  @override
  String get term_06_body => 'Boyut varyasyonunun izin verilen aralığı. Örnek: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Tornalama';

  @override
  String get term_07_body => 'İş parçasının torna tezgahında sabit kesici takıma karşı döndüğü işlem.';

  @override
  String get term_08_title => 'Torna Tezgahı';

  @override
  String get term_08_body => 'İş parçasını döndürerek tornalama ve çap azaltma yapan makine.';

  @override
  String get term_09_title => 'İlerleme Hızı';

  @override
  String get term_09_body => 'Kesici takımı ilerletme hızı (mm/dev).';

  @override
  String get term_10_title => 'Kesme Derinliği';

  @override
  String get term_10_body => 'Tek geçişte kaldırılan malzeme kalınlığı.';

  @override
  String get term_11_title => 'Yüzey Kalitesi';

  @override
  String get term_11_body => 'İşlenmiş yüzeyin dokusu ve pürüzsüzlüğü (Ra mikrometre).';

  @override
  String get term_12_title => '√2 (2\'nin karekökü)';

  @override
  String get term_12_body => 'Matematiksel sabit ≈ 1.414, kare formülünde kullanılır.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Matematiksel sabit ≈ 1.155, altıgen formülünde kullanılır.';

  @override
  String get term_14_title => 'İşleme Payı';

  @override
  String get term_14_body => 'Takım aşınmasını telafi etmek için eklenen çap (0,5–2,0 mm).';

  @override
  String get units_label => 'Ölçü birimleri';

  @override
  String get units_mm => 'Milimetre (mm)';

  @override
  String get units_inch => 'İnç (inch)';

  @override
  String get units_select => 'Hesaplamalar ve görüntüleme için ölçü birimi seçin:';

  @override
  String get appbar_table_inch => 'İnç cinsinden parça çapları tablosu';

  @override
  String get history_cleared => 'Geçmiş temizlendi';

  @override
  String get history_clear_confirm_title => 'Geçmiş temizlensin mi?';

  @override
  String get history_clear_confirm_body => 'Tüm kayıtlar kalıcı olarak silinecektir.';

  @override
  String get history_cancel => 'İptal';

  @override
  String get history_clear_confirm => 'Temizle';
}
