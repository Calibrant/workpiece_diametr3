// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get main_title => 'Der Durchmesser des Werkstücks';

  @override
  String get appbar_title => 'Rechner für Werkstückdurchmesser';

  @override
  String get appbar_table => 'Tabelle der Werkstückdurchmesser in mm';

  @override
  String get hinttext_square => 'Quadrat';

  @override
  String get hinttext_hexagon => 'Sechseck';

  @override
  String get drawer_header => 'Workpiece Diameter';

  @override
  String get drawer_title_rate => 'Rate this app';

  @override
  String get drawer_title_privacy => 'Privacy policy';

  @override
  String get history => 'Geschichte:';

  @override
  String get clear => 'Klar';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'So funktioniert es';

  @override
  String get menu_glossary => 'Glossar';

  @override
  String get title_how_it_works => 'So funktioniert es';

  @override
  String get title_glossary => 'Glossar';

  @override
  String get select_language => 'Sprache auswählen';

  @override
  String get hint_change_language => 'Tippen zum Ändern der Sprache';

  @override
  String get btn_open_calculator => 'Rechner öffnen →';

  @override
  String get section_square_title => 'Vierkant-Bearbeitung — Schritt für Schritt';

  @override
  String get section_square_body => 'Schritt 1: Messen Sie die Seitenlänge (a) Ihres Quadrats in mm\nSchritt 2: Formel anwenden: D = a × 1.414\nSchritt 3: Ergebnis ist der minimale Rohlingsdurchmesser\n\nBeispiel: a = 10 mm → D = 14.14 mm\n\nWarum 1.414?\nDas ist √2 — die Diagonale eines Einheitsquadrats.\nDer Rohling muss die gesamte Quadratdiagonale aufnehmen.';

  @override
  String get section_hex_title => 'Sechskant-Bearbeitung — Schritt für Schritt';

  @override
  String get section_hex_body => 'Schritt 1: Messen Sie den Schlüsselweite (b) in mm\nSchritt 2: Formel anwenden: D = b × 1.155\nSchritt 3: Ergebnis ist der minimale Rohlingsdurchmesser\n\nBeispiel: b = 10 mm → D = 11.55 mm\n\nWarum 1.155?\nDas ist 2/√3 — abgeleitet aus der Sechskantgeometrie.\nDer Rohling muss die volle Sechskantbreite aufnehmen.';

  @override
  String get section_mistakes_title => 'Häufige Fehler';

  @override
  String get section_mistakes_body => '• Verwechseln Sie nicht Durchmesser mit Radius\n• Immer Schlüsselweite messen, nicht Ecke zu Ecke\n• Bearbeitungszugabe (0,5–2 mm) zum Ergebnis addieren\n• Formel gibt Mindestdurchmesser — immer aufrunden';

  @override
  String get term_01_title => 'Rohling';

  @override
  String get term_01_body => 'Das Rohteil (meist zylindrisch) vor jeder Bearbeitung.';

  @override
  String get term_02_title => 'Durchmesser (D)';

  @override
  String get term_02_body => 'Die Strecke durch den Mittelpunkt eines Kreises. Definiert die Rohlingsgröße.';

  @override
  String get term_03_title => 'Vierkant-Bearbeitung';

  @override
  String get term_03_body => 'Bearbeitungsverfahren, das einen runden Rohling in ein quadratisches Profil umformt.';

  @override
  String get term_04_title => 'Sechskant-Bearbeitung';

  @override
  String get term_04_body => 'Bearbeitungsverfahren, das einen runden Rohling in ein regelmäßiges sechseckiges Profil umformt.';

  @override
  String get term_05_title => 'Zugabe';

  @override
  String get term_05_body => 'Absichtlich belassenes Material für nachfolgende Schlichtschnitte.';

  @override
  String get term_06_title => 'Toleranz';

  @override
  String get term_06_body => 'Zulässiger Variationsbereich einer Abmessung. Beispiel: 10 mm ± 0,1 mm bedeutet 9,9–10,1 mm sind akzeptabel.';

  @override
  String get term_07_title => 'Drehen';

  @override
  String get term_07_body => 'Bearbeitung, bei der sich das Werkstück gegen ein feststehendes Werkzeug dreht.';

  @override
  String get term_08_title => 'Drehmaschine';

  @override
  String get term_08_body => 'Werkzeugmaschine, die das Werkstück dreht für Drehen, Planen und Durchmesserreduzierung.';

  @override
  String get term_09_title => 'Vorschub';

  @override
  String get term_09_body => 'Geschwindigkeit, mit der das Werkzeug entlang des Werkstücks vorschiebt (mm/Umdrehung).';

  @override
  String get term_10_title => 'Schnittiefe';

  @override
  String get term_10_body => 'Materialdicke, die in einem Durchgang abgetragen wird.';

  @override
  String get term_11_title => 'Oberflächenbeschaffenheit';

  @override
  String get term_11_body => 'Textur und Glätte der bearbeiteten Oberfläche, gemessen in Ra (Mittenrauwert) Mikrometer.';

  @override
  String get term_12_title => '√2 (Quadratwurzel aus 2)';

  @override
  String get term_12_body => 'Mathematische Konstante ≈ 1,414. Wird in der Vierkant-Formel verwendet: D = a × √2.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Mathematische Konstante ≈ 1,155. Wird in der Sechskant-Formel verwendet: D = b × 2/√3.';

  @override
  String get term_14_title => 'Bearbeitungszugabe';

  @override
  String get term_14_body => 'Zusätzlicher Durchmesser zum berechneten Minimum, um Werkzeugverschleiß und Oberflächenfehler auszugleichen. Typisch 0,5–2,0 mm.';
}
