// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get main_title => 'Диаметр заготовки';

  @override
  String get appbar_title => 'Обтачивание под квадрат и шестигранник по наименьшему диаметру';

  @override
  String get appbar_table => 'Таблица диаметров заготовок под квадрат и шестигранник в мм';

  @override
  String get menu_cnc_calculator => 'ЧПУ Калькулятор';

  @override
  String get hinttext_square => 'квадрат';

  @override
  String get hinttext_hexagon => 'шестигранник';

  @override
  String get drawer_header => 'Workpiece Diameter';

  @override
  String get drawer_title_rate => 'Rate this app';

  @override
  String get drawer_title_privacy => 'Privacy policy';

  @override
  String get history => 'История:';

  @override
  String get clear => 'Очистить';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Как это работает';

  @override
  String get menu_glossary => 'Глоссарий';

  @override
  String get title_how_it_works => 'Как это работает';

  @override
  String get title_glossary => 'Глоссарий';

  @override
  String get select_language => 'Выбрать язык';

  @override
  String get hint_change_language => 'Нажмите, чтобы сменить язык';

  @override
  String get btn_open_calculator => 'Открыть калькулятор →';

  @override
  String get section_square_title => 'Формирование квадрата — Пошагово';

  @override
  String get section_square_body => 'Шаг 1: Измерьте сторону (a) вашего квадрата в мм\nШаг 2: Примените формулу: D = a × 1.414\nШаг 3: Результат — минимальный диаметр заготовки\n\nПример: a = 10 мм → D = 14.14 мм\n\nПочему 1.414?\nЭто √2 — диагональ единичного квадрата.\nЗаготовка должна полностью содержать диагональ квадрата.';

  @override
  String get section_hex_title => 'Формирование шестигранника — Пошагово';

  @override
  String get section_hex_body => 'Шаг 1: Измерьте расстояние «от грани до грани» (b) в мм\nШаг 2: Примените формулу: D = b × 1.155\nШаг 3: Результат — минимальный диаметр заготовки\n\nПример: b = 10 мм → D = 11.55 мм\n\nПочему 1.155?\nЭто 2/√3 — получено из геометрии шестиугольника.\nЗаготовка должна содержать полную ширину шестигранника.';

  @override
  String get section_mistakes_title => 'Частые ошибки';

  @override
  String get section_mistakes_body => '• Не путайте диаметр с радиусом\n• Всегда измеряйте «от грани до грани», а не от угла до угла\n• Добавляйте припуск на обработку (0,5–2 мм)\n• Формула даёт минимальный диаметр — всегда округляйте в большую сторону';

  @override
  String get term_01_title => 'Заготовка';

  @override
  String get term_01_body => 'Исходный материал (обычно цилиндрический) до любой механической обработки.';

  @override
  String get term_02_title => 'Диаметр (D)';

  @override
  String get term_02_body => 'Расстояние через центр окружности.';

  @override
  String get term_03_title => 'Формирование квадрата';

  @override
  String get term_03_body => 'Процесс обработки, превращающий круглую заготовку в квадратный профиль.';

  @override
  String get term_04_title => 'Формирование шестигранника';

  @override
  String get term_04_body => 'Процесс обработки, превращающий круглую заготовку в правильный шестигранный профиль.';

  @override
  String get term_05_title => 'Припуск';

  @override
  String get term_05_body => 'Дополнительный материал, оставленный специально для чистовых проходов.';

  @override
  String get term_06_title => 'Допуск';

  @override
  String get term_06_body => 'Допустимый диапазон отклонения размера. Пример: 10мм ± 0.1мм.';

  @override
  String get term_07_title => 'Токарная обработка';

  @override
  String get term_07_body => 'Операция, при которой заготовка вращается относительно неподвижного резца.';

  @override
  String get term_08_title => 'Токарный станок';

  @override
  String get term_08_body => 'Станок, вращающий заготовку для токарной обработки и уменьшения диаметра.';

  @override
  String get term_09_title => 'Подача';

  @override
  String get term_09_body => 'Скорость продвижения резца вдоль заготовки (мм/оборот).';

  @override
  String get term_10_title => 'Глубина резания';

  @override
  String get term_10_body => 'Толщина материала, снимаемого за один проход.';

  @override
  String get term_11_title => 'Шероховатость поверхности';

  @override
  String get term_11_body => 'Текстура и гладкость обработанной поверхности (Ra в микрометрах).';

  @override
  String get term_12_title => '√2 (Квадратный корень из 2)';

  @override
  String get term_12_body => 'Математическая константа ≈ 1.414 для формулы квадрата.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Математическая константа ≈ 1.155 для формулы шестигранника.';

  @override
  String get term_14_title => 'Припуск на обработку';

  @override
  String get term_14_body => 'Дополнительный диаметр для компенсации износа инструмента (0,5–2,0 мм).';

  @override
  String get units_label => 'Единицы измерения';

  @override
  String get units_mm => 'Миллиметры (мм)';

  @override
  String get units_inch => 'Дюймы (inch)';

  @override
  String get units_select => 'Выберите единицу измерения для расчётов и отображения:';

  @override
  String get appbar_table_inch => 'Таблица диаметров заготовок в дюймах';

  @override
  String get history_cleared => 'История очищена';

  @override
  String get history_clear_confirm_title => 'Очистить историю?';

  @override
  String get history_clear_confirm_body => 'Все записи будут безвозвратно удалены.';

  @override
  String get history_cancel => 'Отмена';

  @override
  String get history_clear_confirm => 'Очистить';

  @override
  String get cnc_calculator_material => 'Материал';

  @override
  String get cnc_calculator_tool_geometry => 'Геометрия инструмента';

  @override
  String get cnc_calculator_diameter => 'Диаметр';

  @override
  String get cnc_calculator_flutes => 'Количество зубьев (z)';

  @override
  String get cnc_calculator_calculation_approach => 'Подход к расчету';

  @override
  String get cnc_calculator_by_speed => 'По скорости (Vc/SFM)';

  @override
  String get cnc_calculator_by_rpm => 'По оборотам (RPM)';

  @override
  String get cnc_calculator_manual_rpm => 'Ручные обороты';

  @override
  String get cnc_calculator_target => 'Целевая';

  @override
  String get cnc_calculator_vc_unit => 'Vc (м/мин)';

  @override
  String get cnc_calculator_sfm_unit => 'SFM (фут/мин)';

  @override
  String get cnc_calculator_cut_depth_width => 'Глубина и ширина резания';

  @override
  String get cnc_calculator_doc => 'Осевая глубина (ap)';

  @override
  String get cnc_calculator_woc => 'Радиальная ширина (ae)';

  @override
  String get cnc_calculator_spindle_speed => 'Обороты шпинделя';

  @override
  String get cnc_calculator_rpm_unit => 'об/мин';

  @override
  String get cnc_calculator_feed_rate => 'Минутная подача';

  @override
  String get cnc_calculator_feed_rate_metric_unit => 'мм/мин';

  @override
  String get cnc_calculator_feed_rate_imperial_unit => 'дюйм/мин';

  @override
  String get cnc_calculator_mrr => 'Объем съема материала';

  @override
  String get cnc_calculator_mrr_metric_unit => 'см³/мин';

  @override
  String get cnc_calculator_mrr_imperial_unit => 'дюйм³/мин';

  @override
  String get cnc_calculator_required_power => 'Требуемая мощность';

  @override
  String get cnc_calculator_power_metric_unit => 'кВт';

  @override
  String get cnc_calculator_power_imperial_unit => 'л.с.';

  @override
  String get cnc_calculator_surface_speed => 'Скорость резания';

  @override
  String get cnc_calculator_surface_speed_metric_unit => 'м/мин';

  @override
  String get cnc_calculator_surface_speed_imperial_unit => 'SFM';

  @override
  String get mat_aluminum => 'Алюминий';

  @override
  String get mat_steel => 'Сталь';

  @override
  String get mat_brass => 'Латунь';

  @override
  String get mat_hardwood => 'Твердое дерево';

  @override
  String get mat_acrylic => 'Акрил';
}
