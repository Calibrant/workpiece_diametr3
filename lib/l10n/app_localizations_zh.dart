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
  String get menu_how_it_works => '工作原理';

  @override
  String get menu_glossary => '术语表';

  @override
  String get title_how_it_works => '工作原理';

  @override
  String get title_glossary => '术语表';

  @override
  String get select_language => '选择语言';

  @override
  String get hint_change_language => '点击更改语言';

  @override
  String get btn_open_calculator => '打开计算器 →';

  @override
  String get section_square_title => '方形加工 — 步骤详解';

  @override
  String get section_square_body => '步骤 1：测量正方形边长 (a)（单位：mm）\n步骤 2：应用公式：D = a × 1.414\n步骤 3：结果为最小工件直径\n\n示例：a = 10 mm → D = 14.14 mm\n\n为什么是 1.414？\n这是 √2 — 单位正方形的对角线。\n工件必须完全包含正方形的对角线长度。';

  @override
  String get section_hex_title => '六边形加工 — 步骤详解';

  @override
  String get section_hex_body => '步骤 1：测量对边距离 (b)（单位：mm）\n步骤 2：应用公式：D = b × 1.155\n步骤 3：结果为最小工件直径\n\n示例：b = 10 mm → D = 11.55 mm\n\n为什么是 1.155？\n这是 2/√3 — 源自六边形几何学。\n工件必须包含六边形的完整宽度。';

  @override
  String get section_mistakes_title => '常见错误';

  @override
  String get section_mistakes_body => '• 不要混淆直径与半径\n• 始终测量对边距离，而非角到角\n• 在结果中加上加工余量（0.5–2 mm）\n• 公式给出最小直径 — 务必向上取整';

  @override
  String get term_01_title => '工件';

  @override
  String get term_01_body => '加工前的原材料（通常为圆柱形）。';

  @override
  String get term_02_title => '直径 (D)';

  @override
  String get term_02_body => '通过圆心的距离，用于定义工件尺寸。';

  @override
  String get term_03_title => '方形加工';

  @override
  String get term_03_body => '将圆形工件加工成正方形截面的工艺。';

  @override
  String get term_04_title => '六边形加工';

  @override
  String get term_04_body => '将圆形工件加工成正六边形截面的工艺。';

  @override
  String get term_05_title => '余量';

  @override
  String get term_05_body => '为后续精加工有意留出的额外材料。';

  @override
  String get term_06_title => '公差';

  @override
  String get term_06_body => '尺寸允许的变动范围。例如：10mm ± 0.1mm 表示 9.9–10.1mm 均可接受。';

  @override
  String get term_07_title => '车削';

  @override
  String get term_07_body => '工件旋转、刀具固定的车床加工操作。';

  @override
  String get term_08_title => '车床';

  @override
  String get term_08_body => '使工件旋转以进行车削、端面加工和直径缩小的机床。';

  @override
  String get term_09_title => '进给率';

  @override
  String get term_09_body => '刀具沿工件前进的速度（mm/转）。';

  @override
  String get term_10_title => '切削深度';

  @override
  String get term_10_body => '单次走刀去除的材料厚度。';

  @override
  String get term_11_title => '表面粗糙度';

  @override
  String get term_11_body => '加工表面的纹理与平滑度，以 Ra（粗糙度平均值）微米为单位。';

  @override
  String get term_12_title => '√2（2的平方根）';

  @override
  String get term_12_body => '数学常数 ≈ 1.414，用于方形加工公式。';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => '数学常数 ≈ 1.155，用于六边形加工公式。';

  @override
  String get term_14_title => '加工余量';

  @override
  String get term_14_body => '为补偿刀具磨损和表面缺陷而增加的直径。通常 0.5–2.0 mm。';
}
