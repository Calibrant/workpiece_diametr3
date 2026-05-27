// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get main_title => 'De diameter van het werkstuk';

  @override
  String get appbar_title => 'Werkstuk Diameter Calculator';

  @override
  String get appbar_table => 'Tabel met werkstuk diameter in mm';

  @override
  String get hinttext_square => 'vierkant';

  @override
  String get hinttext_hexagon => 'zeshoek';

  @override
  String get drawer_header => 'Workpiece Diameter';

  @override
  String get drawer_title_rate => 'Rate this app';

  @override
  String get drawer_title_privacy => 'Privacy policy';

  @override
  String get history => 'Geschiedenis:';

  @override
  String get clear => 'Duidelijk';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Hoe het werkt';

  @override
  String get menu_glossary => 'Woordenlijst';

  @override
  String get title_how_it_works => 'Hoe het werkt';

  @override
  String get title_glossary => 'Woordenlijst';

  @override
  String get select_language => 'Selecteer taal';

  @override
  String get hint_change_language => 'Tik om taal te wijzigen';

  @override
  String get btn_open_calculator => 'Open rekenmachine →';

  @override
  String get section_square_title => 'Vierkant bewerken — Stap voor stap';

  @override
  String get section_square_body => 'Stap 1: Meet de zijde (a) van uw vierkant in mm\nStap 2: Pas de formule toe: D = a × 1.414\nStap 3: Resultaat is de minimale grondstofdiameter\n\nVoorbeeld: a = 10 mm → D = 14.14 mm\n\nWaarom 1.414?\nDit is √2 — de diagonaal van een eenheidsvierkant.\nHet werkstuk moet de volledige diagonaal bevatten.';

  @override
  String get section_hex_title => 'Zeskant bewerken — Stap voor stap';

  @override
  String get section_hex_body => 'Stap 1: Meet de vlak-op-vlak afstand (b) in mm\nStap 2: Pas de formule toe: D = b × 1.155\nStap 3: Resultaat is de minimale grondstofdiameter\n\nVoorbeeld: b = 10 mm → D = 11.55 mm\n\nWaarom 1.155?\nDit is 2/√3 — afgeleid van zeshoekige geometrie.\nHet werkstuk moet de volledige zeshoekbreedte bevatten.';

  @override
  String get section_mistakes_title => 'Veelgemaakte fouten';

  @override
  String get section_mistakes_body => '• Verwar diameter niet met straal\n• Meet altijd vlak-op-vlak, niet hoek-tot-hoek\n• Voeg bewerkings toeslag (0,5–2 mm) toe aan het resultaat\n• Formule geeft minimale diameter — altijd naar boven afronden';

  @override
  String get term_01_title => 'Werkstuk';

  @override
  String get term_01_body => 'Het ruwe materiaal (meestal cilindrisch) vóór enige bewerking.';

  @override
  String get term_02_title => 'Diameter (D)';

  @override
  String get term_02_body => 'De afstand door het midden van een cirkel.';

  @override
  String get term_03_title => 'Vierkant bewerken';

  @override
  String get term_03_body => 'Bewerkingsproces waarbij een rond werkstuk een vierkante doorsnede krijgt.';

  @override
  String get term_04_title => 'Zeskant bewerken';

  @override
  String get term_04_body => 'Bewerkingsproces waarbij een rond werkstuk een regelmatige zeshoekige doorsnede krijgt.';

  @override
  String get term_05_title => 'Toeslag';

  @override
  String get term_05_body => 'Extra materiaal dat opzettelijk wordt achtergelaten voor afwerkingsbewerkingen.';

  @override
  String get term_06_title => 'Tolerantie';

  @override
  String get term_06_body => 'Toegestane variatie in een afmeting. Voorbeeld: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Draaien';

  @override
  String get term_07_body => 'Bewerking waarbij het werkstuk roteert tegen een vast gereedschap.';

  @override
  String get term_08_title => 'Draaibank';

  @override
  String get term_08_body => 'Machine die het werkstuk laat draaien voor draaien, vlakken en diameterreductie.';

  @override
  String get term_09_title => 'Voedingssnelheid';

  @override
  String get term_09_body => 'Snelheid waarmee het gereedschap voortbeweegt (mm per omwenteling).';

  @override
  String get term_10_title => 'Snedediepte';

  @override
  String get term_10_body => 'Dikte van het verwijderde materiaal in één doorgang.';

  @override
  String get term_11_title => 'Oppervlakteafwerking';

  @override
  String get term_11_body => 'Textuur en gladheid van het bewerkte oppervlak (Ra micrometer).';

  @override
  String get term_12_title => '√2 (Wortel van 2)';

  @override
  String get term_12_body => 'Wiskundige constante ≈ 1.414 voor vierkantsformule.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Wiskundige constante ≈ 1.155 voor zeshoeksformule.';

  @override
  String get term_14_title => 'Bewerkingstoeslag';

  @override
  String get term_14_body => 'Extra diameter om slijtage en imperfecties te compenseren (0,5–2,0 mm).';

  @override
  String get units_label => 'Maateenheden';

  @override
  String get units_mm => 'Millimeters (mm)';

  @override
  String get units_inch => 'Inches (inch)';

  @override
  String get units_select => 'Selecteer de maateenheid voor berekeningen en weergave:';

  @override
  String get appbar_table_inch => 'Tabel met diameters van werkstukken in inches';

  @override
  String get history_cleared => 'Geschiedenis gewist';

  @override
  String get history_clear_confirm_title => 'Geschiedenis wissen?';

  @override
  String get history_clear_confirm_body => 'Alle records worden permanent verwijderd.';

  @override
  String get history_cancel => 'Annuleren';

  @override
  String get history_clear_confirm => 'Wissen';
}
