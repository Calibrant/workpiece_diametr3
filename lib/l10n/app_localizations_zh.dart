// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get main_title => '工件直径';

  @override
  String get appbar_title => '工件直径计算器';

  @override
  String get appbar_table => '工件直径表（毫米）';

  @override
  String get hinttext_square => '正方形';

  @override
  String get hinttext_hexagon => '六边形';

  @override
  String get drawer_header => '工件直径';

  @override
  String get drawer_title_rate => '评价此应用';

  @override
  String get drawer_title_privacy => '隐私政策';

  @override
  String get history => '历史记录：';

  @override
  String get clear => '清除';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'How it works';

  @override
  String get menu_glossary => 'Glossary';

  @override
  String get title_how_it_works => 'How It Works';

  @override
  String get title_glossary => 'Glossary';

  @override
  String get select_language => 'Select Language';

  @override
  String get hint_change_language => 'Tap to change language';

  @override
  String get btn_open_calculator => 'Open Calculator →';

  @override
  String get section_square_title => 'Square Shaping — Step by Step';

  @override
  String get section_square_body => 'Step 1: Measure the side (a) of your square in mm\nStep 2: Apply formula: D = a × 1.414\nStep 3: Result is the minimum workpiece diameter\n\nExample: a = 10 mm → D = 14.14 mm\n\nWhy 1.414?\nThis is √2 — the diagonal of a unit square.\nThe workpiece must fully contain the square diagonal.';

  @override
  String get section_hex_title => 'Hexagon Shaping — Step by Step';

  @override
  String get section_hex_body => 'Step 1: Measure flat-to-flat distance (b) in mm\nStep 2: Apply formula: D = b × 1.155\nStep 3: Result is the minimum workpiece diameter\n\nExample: b = 10 mm → D = 11.55 mm\n\nWhy 1.155?\nThis is 2/√3 — derived from hexagon geometry.\nThe workpiece must contain the full hexagon width.';

  @override
  String get section_mistakes_title => 'Common Mistakes';

  @override
  String get section_mistakes_body => '• Do not confuse diameter with radius\n• Always measure flat-to-flat, not corner-to-corner\n• Add machining allowance (0.5–2 mm) to result\n• Formula gives minimum diameter — always round up';

  @override
  String get term_01_title => 'Workpiece';

  @override
  String get term_01_body => 'The raw material piece (usually cylindrical) before any machining operation is performed.';

  @override
  String get term_02_title => 'Diameter (D)';

  @override
  String get term_02_body => 'The distance across a circle measured through its center. Used to define workpiece size.';

  @override
  String get term_03_title => 'Square Shaping';

  @override
  String get term_03_body => 'A machining process that cuts a round workpiece into a square cross-section profile.';

  @override
  String get term_04_title => 'Hexagon Shaping';

  @override
  String get term_04_body => 'A machining process that cuts a round workpiece into a regular hexagonal cross-section profile.';

  @override
  String get term_05_title => 'Allowance';

  @override
  String get term_05_body => 'Extra material intentionally left on the workpiece surface for subsequent finishing cuts.';

  @override
  String get term_06_title => 'Tolerance';

  @override
  String get term_06_body => 'The permissible range of variation in a dimension. Example: 10mm ± 0.1mm means 9.9–10.1mm is acceptable.';

  @override
  String get term_07_title => 'Turning';

  @override
  String get term_07_body => 'A machining operation where the workpiece rotates against a stationary cutting tool on a lathe.';

  @override
  String get term_08_title => 'Lathe';

  @override
  String get term_08_body => 'A machine tool that rotates the workpiece to perform turning, facing, and diameter reduction operations.';

  @override
  String get term_09_title => 'Feed Rate';

  @override
  String get term_09_body => 'The speed at which the cutting tool advances along the workpiece, measured in mm per revolution.';

  @override
  String get term_10_title => 'Cutting Depth';

  @override
  String get term_10_body => 'The thickness of material removed in a single pass of the cutting tool.';

  @override
  String get term_11_title => 'Surface Finish';

  @override
  String get term_11_body => 'The texture and smoothness of a machined surface, measured in Ra (roughness average) micrometers.';

  @override
  String get term_12_title => '√2 (Square root of 2)';

  @override
  String get term_12_body => 'Mathematical constant ≈ 1.414. Used in square shaping formula: D = a × √2.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Mathematical constant ≈ 1.155. Used in hexagon shaping formula: D = b × 2/√3.';

  @override
  String get term_14_title => 'Machining Allowance';

  @override
  String get term_14_body => 'Additional diameter added to the calculated minimum to compensate for tool wear and surface imperfections. Typically 0.5–2.0 mm.';
}
