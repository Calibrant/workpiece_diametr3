// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get main_title => 'ワークピースの直径';

  @override
  String get appbar_title => 'ワークピース直径計算機';

  @override
  String get appbar_table => 'ワークピース直径の表（mm）';

  @override
  String get menu_cnc_calculator => 'CNC Calculator';

  @override
  String get hinttext_square => '正方形';

  @override
  String get hinttext_hexagon => '六角形';

  @override
  String get drawer_header => 'ワークピースの直径';

  @override
  String get drawer_title_rate => 'このアプリを評価する';

  @override
  String get drawer_title_privacy => 'プライバシーポリシー';

  @override
  String get history => '履歴：';

  @override
  String get clear => 'クリア';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => '仕組み';

  @override
  String get menu_glossary => '用語集';

  @override
  String get title_how_it_works => '仕組み';

  @override
  String get title_glossary => '用語集';

  @override
  String get select_language => '言語を選択';

  @override
  String get hint_change_language => 'タップして言語を変更';

  @override
  String get btn_open_calculator => '電卓を開く →';

  @override
  String get section_square_title => '四角加工 — ステップバイステップ';

  @override
  String get section_square_body => 'ステップ1: 正方形の一辺(a)をmm単位で測定\nステップ2: 公式を適用: D = a × 1.414\nステップ3: 結果は最小ワーク直径\n\n例: a = 10 mm → D = 14.14 mm\n\n1.414とは？\n√2 — 単位正方形の対角線。\nワークは正方形の対角線全体を収容する必要があります。';

  @override
  String get section_hex_title => '六角加工 — ステップバイステップ';

  @override
  String get section_hex_body => 'ステップ1: 平行面間距離(b)をmm単位で測定\nステップ2: 公式を適用: D = b × 1.155\nステップ3: 結果は最小ワーク直径\n\n例: b = 10 mm → D = 11.55 mm\n\n1.155とは？\n2/√3 — 六角形の幾何学から導出。\nワークは六角形の全幅を収容する必要があります。';

  @override
  String get section_mistakes_title => 'よくある間違い';

  @override
  String get section_mistakes_body => '• 直径と半径を混同しない\n• 常に面間距離を測定（角間ではない）\n• 結果に加工代（0.5–2 mm）を追加\n• 公式は最小直径を与える — 常に切り上げ';

  @override
  String get term_01_title => 'ワーク';

  @override
  String get term_01_body => '機械加工前の原材料（通常円筒形）。';

  @override
  String get term_02_title => '直径 (D)';

  @override
  String get term_02_body => '中心を通る円の距離。ワークサイズの定義に使用。';

  @override
  String get term_03_title => '四角加工';

  @override
  String get term_03_body => '丸いワークを四角断面に加工する工程。';

  @override
  String get term_04_title => '六角加工';

  @override
  String get term_04_body => '丸いワークを正六角形断面に加工する工程。';

  @override
  String get term_05_title => 'アローワンス';

  @override
  String get term_05_body => '仕上げ切削のために意図的に残す余分な材料。';

  @override
  String get term_06_title => '公差';

  @override
  String get term_06_body => '寸法の許容変動範囲。例: 10mm ± 0.1mm。';

  @override
  String get term_07_title => '旋削';

  @override
  String get term_07_body => 'ワークが回転し、固定工具で切削する加工。';

  @override
  String get term_08_title => '旋盤';

  @override
  String get term_08_body => 'ワークを回転させて旋削・面削・直径削減を行う工作機械。';

  @override
  String get term_09_title => '送り速度';

  @override
  String get term_09_body => '工具の1回転あたりの送り量（mm/rev）。';

  @override
  String get term_10_title => '切込み深さ';

  @override
  String get term_10_body => '1パスで除去される材料の厚さ。';

  @override
  String get term_11_title => '表面粗さ';

  @override
  String get term_11_body => '加工面のテクスチャと平滑度（Raマイクロメートル）。';

  @override
  String get term_12_title => '√2（2の平方根）';

  @override
  String get term_12_body => '数学定数 ≈ 1.414。四角加工公式で使用。';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => '数学定数 ≈ 1.155。六角加工公式で使用。';

  @override
  String get term_14_title => '加工代';

  @override
  String get term_14_body => '工具摩耗補正のための追加直径（通常0.5–2.0 mm）。';

  @override
  String get units_label => '測定単位';

  @override
  String get units_mm => 'ミリメートル (mm)';

  @override
  String get units_inch => 'インチ (inch)';

  @override
  String get units_select => '計算と表示の測定単位を選択してください：';

  @override
  String get appbar_table_inch => 'インチ表記の workpiece 直径表';

  @override
  String get history_cleared => '履歴を消去しました';

  @override
  String get history_clear_confirm_title => '履歴を消去しますか？';

  @override
  String get history_clear_confirm_body => 'すべての記録が完全に削除されます。';

  @override
  String get history_cancel => 'キャンセル';

  @override
  String get history_clear_confirm => '消去';

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
