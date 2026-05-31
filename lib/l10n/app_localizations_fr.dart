// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get main_title => 'Diamètre de la pièce à usiner';

  @override
  String get appbar_title => 'Calculateur de diamètre de pièce';

  @override
  String get appbar_table => 'Tableau des diamètres de pièces en mm';

  @override
  String get menu_cnc_calculator => 'CNC Calculator';

  @override
  String get hinttext_square => 'carré';

  @override
  String get hinttext_hexagon => 'hexagone';

  @override
  String get drawer_header => 'Workpiece Diameter';

  @override
  String get drawer_title_rate => 'Rate this app';

  @override
  String get drawer_title_privacy => 'Privacy policy';

  @override
  String get history => 'Histoire:';

  @override
  String get clear => 'Clair';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Comment ça marche';

  @override
  String get menu_glossary => 'Glossaire';

  @override
  String get title_how_it_works => 'Comment ça marche';

  @override
  String get title_glossary => 'Glossaire';

  @override
  String get select_language => 'Sélectionner la langue';

  @override
  String get hint_change_language => 'Appuyez pour changer de langue';

  @override
  String get btn_open_calculator => 'Ouvrir la calculatrice →';

  @override
  String get section_square_title => 'Mise en forme carrée — Étape par étape';

  @override
  String get section_square_body => 'Étape 1 : Mesurez le côté (a) de votre carré en mm\nÉtape 2 : Appliquez la formule : D = a × 1.414\nÉtape 3 : Le résultat est le diamètre minimum de la pièce brute\n\nExemple : a = 10 mm → D = 14.14 mm\n\nPourquoi 1.414 ?\nC’est √2 — la diagonale d’un carré unitaire.\nLa pièce doit contenir entièrement la diagonale du carré.';

  @override
  String get section_hex_title => 'Mise en forme hexagonale — Étape par étape';

  @override
  String get section_hex_body => 'Étape 1 : Mesurez la distance plat à plat (b) en mm\nÉtape 2 : Appliquez la formule : D = b × 1.155\nÉtape 3 : Le résultat est le diamètre minimum de la pièce brute\n\nExemple : b = 10 mm → D = 11.55 mm\n\nPourquoi 1.155 ?\nC’est 2/√3 — issu de la géométrie de l’hexagone.\nLa pièce doit contenir la largeur complète de l’hexagone.';

  @override
  String get section_mistakes_title => 'Erreurs courantes';

  @override
  String get section_mistakes_body => '• Ne confondez pas diamètre et rayon\n• Mesurez toujours plat à plat, pas coin à coin\n• Ajoutez une surépaisseur d’usinage (0,5–2 mm) au résultat\n• La formule donne le diamètre minimum — arrondissez toujours vers le haut';

  @override
  String get term_01_title => 'Pièce brute';

  @override
  String get term_01_body => 'La pièce de matière première (généralement cylindrique) avant toute opération d’usinage.';

  @override
  String get term_02_title => 'Diamètre (D)';

  @override
  String get term_02_body => 'La distance à travers un cercle passant par son centre.';

  @override
  String get term_03_title => 'Mise en forme carrée';

  @override
  String get term_03_body => 'Procédé d’usinage transformant une pièce ronde en profil carré.';

  @override
  String get term_04_title => 'Mise en forme hexagonale';

  @override
  String get term_04_body => 'Procédé d’usinage transformant une pièce ronde en profil hexagonal régulier.';

  @override
  String get term_05_title => 'Surépaisseur';

  @override
  String get term_05_body => 'Matière supplémentaire laissée intentionnellement pour les passes de finition.';

  @override
  String get term_06_title => 'Tolérance';

  @override
  String get term_06_body => 'Plage de variation admissible. Exemple : 10 mm ± 0,1 mm.';

  @override
  String get term_07_title => 'Tournage';

  @override
  String get term_07_body => 'Opération où la pièce tourne contre un outil fixe sur un tour.';

  @override
  String get term_08_title => 'Tour';

  @override
  String get term_08_body => 'Machine qui fait tourner la pièce pour tournage, dressage et réduction de diamètre.';

  @override
  String get term_09_title => 'Avance';

  @override
  String get term_09_body => 'Vitesse d’avance de l’outil (mm par tour).';

  @override
  String get term_10_title => 'Profondeur de passe';

  @override
  String get term_10_body => 'Épaisseur de matière enlevée en un seul passage.';

  @override
  String get term_11_title => 'État de surface';

  @override
  String get term_11_body => 'Texture et rugosité de la surface usinée (Ra en micromètres).';

  @override
  String get term_12_title => '√2 (Racine carrée de 2)';

  @override
  String get term_12_body => 'Constante mathématique ≈ 1.414 utilisée pour le carré.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Constante mathématique ≈ 1.155 utilisée pour l’hexagone.';

  @override
  String get term_14_title => 'Surépaisseur d’usinage';

  @override
  String get term_14_body => 'Diamètre supplémentaire pour compenser l’usure d’outil (0,5–2,0 mm).';

  @override
  String get units_label => 'Unités de mesure';

  @override
  String get units_mm => 'Millimètres (mm)';

  @override
  String get units_inch => 'Pouces (inch)';

  @override
  String get units_select => 'Sélectionnez l\'unité de mesure pour les calculs et l\'affichage :';

  @override
  String get appbar_table_inch => 'Tableau des diamètres de pièces en pouces';

  @override
  String get history_cleared => 'Historique effacé';

  @override
  String get history_clear_confirm_title => 'Effacer l\'historique ?';

  @override
  String get history_clear_confirm_body => 'Tous les enregistrements seront supprimés définitivement.';

  @override
  String get history_cancel => 'Annuler';

  @override
  String get history_clear_confirm => 'Effacer';

  @override
  String get cnc_calculator_material => 'Material';

  @override
  String get cnc_calculator_tool_geometry => 'Tool Geometry';

  @override
  String get cnc_calculator_diameter => 'Diameter';

  @override
  String get cnc_calculator_flutes => 'Flutes (z)';

  @override
  String get cnc_calculator_calculation_approach => 'Calculation Approach';

  @override
  String get cnc_calculator_by_speed => 'By Speed (Vc/SFM)';

  @override
  String get cnc_calculator_by_rpm => 'By RPM';

  @override
  String get cnc_calculator_manual_rpm => 'Manual RPM';

  @override
  String get cnc_calculator_target => 'Target';

  @override
  String get cnc_calculator_vc_unit => 'Vc (m/min)';

  @override
  String get cnc_calculator_sfm_unit => 'SFM (ft/min)';

  @override
  String get cnc_calculator_cut_depth_width => 'Cut Depth & Width';

  @override
  String get cnc_calculator_doc => 'DOC (ap)';

  @override
  String get cnc_calculator_woc => 'WOC (ae)';

  @override
  String get cnc_calculator_spindle_speed => 'Spindle Speed';

  @override
  String get cnc_calculator_rpm_unit => 'RPM';

  @override
  String get cnc_calculator_feed_rate => 'Feed Rate';

  @override
  String get cnc_calculator_feed_rate_metric_unit => 'mm/min';

  @override
  String get cnc_calculator_feed_rate_imperial_unit => 'IPM';

  @override
  String get cnc_calculator_mrr => 'MRR';

  @override
  String get cnc_calculator_mrr_metric_unit => 'cm³/min';

  @override
  String get cnc_calculator_mrr_imperial_unit => 'in³/min';

  @override
  String get cnc_calculator_required_power => 'Req. Power';

  @override
  String get cnc_calculator_power_metric_unit => 'kW';

  @override
  String get cnc_calculator_power_imperial_unit => 'HP';

  @override
  String get cnc_calculator_surface_speed => 'Surface Speed';

  @override
  String get cnc_calculator_surface_speed_metric_unit => 'm/min';

  @override
  String get cnc_calculator_surface_speed_imperial_unit => 'SFM';

  @override
  String get mat_aluminum => 'Aluminum';

  @override
  String get mat_steel => 'Steel';

  @override
  String get mat_brass => 'Brass';

  @override
  String get mat_hardwood => 'Hardwood';

  @override
  String get mat_acrylic => 'Acrylic';
}
