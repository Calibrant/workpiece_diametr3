// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get main_title => 'Il diametro del pezzo';

  @override
  String get appbar_title => 'Calcolatore del diametro del pezzo';

  @override
  String get appbar_table => 'Tabella dei pezzi quadrati ed esagonali in mm';

  @override
  String get hinttext_square => 'quadrato';

  @override
  String get hinttext_hexagon => 'esagono';

  @override
  String get drawer_header => 'Workpiece Diameter';

  @override
  String get drawer_title_rate => 'Rate this app';

  @override
  String get drawer_title_privacy => 'Privacy policy';

  @override
  String get history => 'Storia:';

  @override
  String get clear => 'Chiaro';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Come funziona';

  @override
  String get menu_glossary => 'Glossario';

  @override
  String get title_how_it_works => 'Come Funziona';

  @override
  String get title_glossary => 'Glossario';

  @override
  String get select_language => 'Seleziona Lingua';

  @override
  String get hint_change_language => 'Tocca per cambiare lingua';

  @override
  String get btn_open_calculator => 'Apri Calcolatrice →';

  @override
  String get section_square_title => 'Formatura Quadrata — Passo per Passo';

  @override
  String get section_square_body => 'Passo 1: Misura il lato (a) del tuo quadrato in mm\nPasso 2: Applica la formula: D = a × 1.414\nPasso 3: Il risultato è il diametro minimo del grezzo\n\nEsempio: a = 10 mm → D = 14.14 mm\n\nPerché 1.414?\nÈ √2 — la diagonale di un quadrato unitario.\nIl grezzo deve contenere completamente la diagonale del quadrato.';

  @override
  String get section_hex_title => 'Formatura Esagonale — Passo per Passo';

  @override
  String get section_hex_body => 'Passo 1: Misura la distanza tra facce piane (b) in mm\nPasso 2: Applica la formula: D = b × 1.155\nPasso 3: Il risultato è il diametro minimo del grezzo\n\nEsempio: b = 10 mm → D = 11.55 mm\n\nPerché 1.155?\nÈ 2/√3 — derivato dalla geometria esagonale.\nIl grezzo deve contenere la larghezza completa dell\'esagono.';

  @override
  String get section_mistakes_title => 'Errori Comuni';

  @override
  String get section_mistakes_body => '• Non confondere diametro con raggio\n• Misura sempre faccia a faccia, non angolo ad angolo\n• Aggiungi sovrametallo di lavorazione (0,5–2 mm)\n• La formula dà il diametro minimo — arrotonda sempre per eccesso';

  @override
  String get term_01_title => 'Pezzo grezzo';

  @override
  String get term_01_body => 'Il materiale grezzo (solitamente cilindrico) prima di qualsiasi operazione.';

  @override
  String get term_02_title => 'Diametro (D)';

  @override
  String get term_02_body => 'Distanza attraverso il cerchio passando per il centro.';

  @override
  String get term_03_title => 'Formatura Quadrata';

  @override
  String get term_03_body => 'Processo che trasforma un pezzo rotondo in profilo quadrato.';

  @override
  String get term_04_title => 'Formatura Esagonale';

  @override
  String get term_04_body => 'Processo che trasforma un pezzo rotondo in profilo esagonale regolare.';

  @override
  String get term_05_title => 'Sovrametallo';

  @override
  String get term_05_body => 'Materiale extra lasciato intenzionalmente per le passate di finitura.';

  @override
  String get term_06_title => 'Tolleranza';

  @override
  String get term_06_body => 'Intervallo di variazione ammesso. Esempio: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Tornitura';

  @override
  String get term_07_body => 'Operazione in cui il pezzo ruota contro un utensile fisso al tornio.';

  @override
  String get term_08_title => 'Tornio';

  @override
  String get term_08_body => 'Macchina che fa ruotare il pezzo per tornitura e riduzione diametro.';

  @override
  String get term_09_title => 'Velocità di avanzamento';

  @override
  String get term_09_body => 'Velocità con cui l\'utensile avanza (mm/giro).';

  @override
  String get term_10_title => 'Profondità di taglio';

  @override
  String get term_10_body => 'Spessore di materiale rimosso in un singolo passaggio.';

  @override
  String get term_11_title => 'Finitura superficiale';

  @override
  String get term_11_body => 'Tessitura e levigatezza della superficie (Ra micrometri).';

  @override
  String get term_12_title => '√2 (Radice quadrata di 2)';

  @override
  String get term_12_body => 'Costante matematica ≈ 1.414 per la formula del quadrato.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Costante matematica ≈ 1.155 per la formula dell\'esagono.';

  @override
  String get term_14_title => 'Sovrametallo di lavorazione';

  @override
  String get term_14_body => 'Diametro aggiuntivo per compensare usura utensile (0,5–2,0 mm).';

  @override
  String get units_label => 'Unità di misura';

  @override
  String get units_mm => 'Millimetri (mm)';

  @override
  String get units_inch => 'Pollici (inch)';

  @override
  String get units_select => 'Seleziona l\'unità di misura per calcoli e visualizzazione:';

  @override
  String get appbar_table_inch => 'Tabella dei diametri dei pezzi in pollici';

  @override
  String get history_cleared => 'Cronologia cancellata';

  @override
  String get history_clear_confirm_title => 'Cancellare la cronologia?';

  @override
  String get history_clear_confirm_body => 'Tutti i record saranno eliminati permanentemente.';

  @override
  String get history_cancel => 'Annulla';

  @override
  String get history_clear_confirm => 'Cancella';
}
