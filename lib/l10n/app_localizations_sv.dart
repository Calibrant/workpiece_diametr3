// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get main_title => 'Arbetsstyckets diameter';

  @override
  String get appbar_title => 'Kalkylator för svarv bearbetning diameter';

  @override
  String get appbar_table => 'Tabell över arbetsstyckets diametrar i mm';

  @override
  String get hinttext_square => 'fyrkantig';

  @override
  String get hinttext_hexagon => 'hexagon';

  @override
  String get drawer_header => 'Workpiece Diameter';

  @override
  String get drawer_title_rate => 'Rate this app';

  @override
  String get drawer_title_privacy => 'Privacy policy';

  @override
  String get history => 'Historia:';

  @override
  String get clear => 'Klar';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Hur det fungerar';

  @override
  String get menu_glossary => 'Ordlista';

  @override
  String get title_how_it_works => 'Hur det fungerar';

  @override
  String get title_glossary => 'Ordlista';

  @override
  String get select_language => 'Välj språk';

  @override
  String get hint_change_language => 'Tryck för att byta språk';

  @override
  String get btn_open_calculator => 'Öppna kalkylator →';

  @override
  String get section_square_title => 'Fyrkantformning — Steg för steg';

  @override
  String get section_square_body => 'Steg 1: Mät sidan (a) på din fyrkant i mm\nSteg 2: Använd formeln: D = a × 1.414\nSteg 3: Resultatet är minsta ämnesdiameter\n\nExempel: a = 10 mm → D = 14.14 mm\n\nVarför 1.414?\nDet är √2 — diagonalen i en enhetskvadrat.\nÄmnet måste fullt ut rymma fyrkantens diagonal.';

  @override
  String get section_hex_title => 'Sexkantformning — Steg för steg';

  @override
  String get section_hex_body => 'Steg 1: Mät platt-till-platt avstånd (b) i mm\nSteg 2: Använd formeln: D = b × 1.155\nSteg 3: Resultatet är minsta ämnesdiameter\n\nExempel: b = 10 mm → D = 11.55 mm\n\nVarför 1.155?\nDet är 2/√3 — härlett från hexagonens geometri.\nÄmnet måste rymma hela hexagonens bredd.';

  @override
  String get section_mistakes_title => 'Vanliga misstag';

  @override
  String get section_mistakes_body => '• Blanda inte ihop diameter med radie\n• Mät alltid platt-till-platt, inte hörn-till-hörn\n• Lägg till bearbetningstillägg (0,5–2 mm)\n• Formeln ger minsta diameter — avrunda alltid uppåt';

  @override
  String get term_01_title => 'Ämne';

  @override
  String get term_01_body => 'Råmaterialet (vanligtvis cylindriskt) före bearbetning.';

  @override
  String get term_02_title => 'Diameter (D)';

  @override
  String get term_02_body => 'Avståndet genom cirkelns centrum.';

  @override
  String get term_03_title => 'Fyrkantformning';

  @override
  String get term_03_body => 'Bearbetningsprocess som formar ett runt ämne till kvadratiskt tvärsnitt.';

  @override
  String get term_04_title => 'Sexkantformning';

  @override
  String get term_04_body => 'Bearbetningsprocess som formar ett runt ämne till regelbundet sexkantigt tvärsnitt.';

  @override
  String get term_05_title => 'Tillägg';

  @override
  String get term_05_body => 'Extra material som lämnas för efterföljande finbearbetning.';

  @override
  String get term_06_title => 'Tolerans';

  @override
  String get term_06_body => 'Tillåten variationsintervall. Exempel: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Svarvning';

  @override
  String get term_07_body => 'Operation där ämnet roterar mot ett stationärt skärverktyg.';

  @override
  String get term_08_title => 'Svarv';

  @override
  String get term_08_body => 'Maskin som roterar ämnet för svarvning och diameterreduktion.';

  @override
  String get term_09_title => 'Matning';

  @override
  String get term_09_body => 'Hastighet som verktyget matas fram (mm per varv).';

  @override
  String get term_10_title => 'Skärdjup';

  @override
  String get term_10_body => 'Materialtjocklek som tas bort i ett pass.';

  @override
  String get term_11_title => 'Ytfinhet';

  @override
  String get term_11_body => 'Textur och jämnhet på den bearbetade ytan (Ra mikrometer).';

  @override
  String get term_12_title => '√2 (Kvadratroten ur 2)';

  @override
  String get term_12_body => 'Matematisk konstant ≈ 1.414 för fyrkantsformeln.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Matematisk konstant ≈ 1.155 för sexkantsformeln.';

  @override
  String get term_14_title => 'Bearbetningstillägg';

  @override
  String get term_14_body => 'Extra diameter för att kompensera verktygsslitage (0,5–2,0 mm).';

  @override
  String get units_label => 'Måttenheter';

  @override
  String get units_mm => 'Millimeter (mm)';

  @override
  String get units_inch => 'Tum (inch)';

  @override
  String get units_select => 'Välj måttenhet för beräkningar och visning:';

  @override
  String get appbar_table_inch => 'Tabell över arbetsstyckenas diameter i tum';

  @override
  String get history_cleared => 'Historik rensad';

  @override
  String get history_clear_confirm_title => 'Rensa historik?';

  @override
  String get history_clear_confirm_body => 'Alla poster kommer att raderas permanent.';

  @override
  String get history_cancel => 'Avbryt';

  @override
  String get history_clear_confirm => 'Rensa';
}
