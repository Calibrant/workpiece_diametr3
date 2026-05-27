// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get main_title => 'Średnica przedmiotu obrabianego';

  @override
  String get appbar_title => 'Kalkulator średnicy przedmiotu obrabianego';

  @override
  String get appbar_table => 'Tabela średnic przedmiotów obrabianych (mm)';

  @override
  String get hinttext_square => 'kwadrat';

  @override
  String get hinttext_hexagon => 'sześciokąt';

  @override
  String get drawer_header => 'Średnica przedmiotu obrabianego';

  @override
  String get drawer_title_rate => 'Oceń tę aplikację';

  @override
  String get drawer_title_privacy => 'Polityka prywatności';

  @override
  String get history => 'Historia:';

  @override
  String get clear => 'Wyczyść';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Jak to działa';

  @override
  String get menu_glossary => 'Słownik';

  @override
  String get title_how_it_works => 'Jak to działa';

  @override
  String get title_glossary => 'Słownik';

  @override
  String get select_language => 'Wybierz język';

  @override
  String get hint_change_language => 'Dotknij, aby zmienić język';

  @override
  String get btn_open_calculator => 'Otwórz kalkulator →';

  @override
  String get section_square_title => 'Kształtowanie kwadratu — Krok po kroku';

  @override
  String get section_square_body => 'Krok 1: Zmierz bok (a) kwadratu w mm\nKrok 2: Zastosuj wzór: D = a × 1.414\nKrok 3: Wynik to minimalna średnica półfabrykatu\n\nPrzykład: a = 10 mm → D = 14.14 mm\n\nDlaczego 1.414?\nTo √2 — przekątna kwadratu jednostkowego.\nPółfabrykat musi w pełni zawierać przekątną kwadratu.';

  @override
  String get section_hex_title => 'Kształtowanie sześciokąta — Krok po kroku';

  @override
  String get section_hex_body => 'Krok 1: Zmierz odległość płaszczyzna do płaszczyzny (b) w mm\nKrok 2: Zastosuj wzór: D = b × 1.155\nKrok 3: Wynik to minimalna średnica półfabrykatu\n\nPrzykład: b = 10 mm → D = 11.55 mm\n\nDlaczego 1.155?\nTo 2/√3 — pochodna geometrii sześciokąta.\nPółfabrykat musi zawierać pełną szerokość sześciokąta.';

  @override
  String get section_mistakes_title => 'Typowe błędy';

  @override
  String get section_mistakes_body => '• Nie myl średnicy z promieniem\n• Zawsze mierz płaszczyzna do płaszczyzny, nie narożnik do narożnika\n• Dodaj naddatek obróbkowy (0,5–2 mm)\n• Wzór daje średnicę minimalną — zawsze zaokrąglaj w górę';

  @override
  String get term_01_title => 'Półfabrykat';

  @override
  String get term_01_body => 'Surowiec (zazwyczaj cylindryczny) przed obróbką.';

  @override
  String get term_02_title => 'Średnica (D)';

  @override
  String get term_02_body => 'Odległość przez środek okręgu.';

  @override
  String get term_03_title => 'Kształtowanie kwadratu';

  @override
  String get term_03_body => 'Proces obróbki zmieniający okrągły półfabrykat na profil kwadratowy.';

  @override
  String get term_04_title => 'Kształtowanie sześciokąta';

  @override
  String get term_04_body => 'Proces obróbki zmieniający okrągły półfabrykat na profil sześciokątny regularny.';

  @override
  String get term_05_title => 'Naddatek';

  @override
  String get term_05_body => 'Dodatkowy materiał pozostawiony celowo do obróbki wykańczającej.';

  @override
  String get term_06_title => 'Tolerancja';

  @override
  String get term_06_body => 'Dopuszczalny zakres odchylenia wymiaru. Przykład: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Tokarkowanie';

  @override
  String get term_07_body => 'Operacja, w której obrabiany przedmiot obraca się względem nieruchomego narzędzia.';

  @override
  String get term_08_title => 'Tokarka';

  @override
  String get term_08_body => 'Maszyna obracająca przedmiot do toczenia i redukcji średnicy.';

  @override
  String get term_09_title => 'Posuw';

  @override
  String get term_09_body => 'Prędkość posuwu narzędzia (mm na obrót).';

  @override
  String get term_10_title => 'Głębokość skrawania';

  @override
  String get term_10_body => 'Grubość materiału usuniętego w jednym przejściu.';

  @override
  String get term_11_title => 'Chropowatość powierzchni';

  @override
  String get term_11_body => 'Tekstura i gładkość powierzchni obrabianej (Ra w mikrometrach).';

  @override
  String get term_12_title => '√2 (Pierwiastek kwadratowy z 2)';

  @override
  String get term_12_body => 'Stała matematyczna ≈ 1.414 używana w formule kwadratu.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Stała matematyczna ≈ 1.155 używana w formule sześciokąta.';

  @override
  String get term_14_title => 'Naddatek obróbkowy';

  @override
  String get term_14_body => 'Dodatkowa średnica kompensująca zużycie narzędzia (0,5–2,0 mm).';

  @override
  String get units_label => 'Jednostki miary';

  @override
  String get units_mm => 'Milimetry (mm)';

  @override
  String get units_inch => 'Cale (inch)';

  @override
  String get units_select => 'Wybierz jednostkę miary do obliczeń i wyświetlania:';

  @override
  String get appbar_table_inch => 'Tabela średnic detali w calach';

  @override
  String get history_cleared => 'Historia wyczyszczona';

  @override
  String get history_clear_confirm_title => 'Wyczyścić historię?';

  @override
  String get history_clear_confirm_body => 'Wszystkie rekordy zostaną trwale usunięte.';

  @override
  String get history_cancel => 'Anuluj';

  @override
  String get history_clear_confirm => 'Wyczyść';
}
