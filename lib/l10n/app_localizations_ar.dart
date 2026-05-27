// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get main_title => 'قطر الشغلة';

  @override
  String get appbar_title => 'حاسبة قطر الشغلة';

  @override
  String get appbar_table => 'جدول أقطار الشغلات بالمليمتر';

  @override
  String get hinttext_square => 'مربع';

  @override
  String get hinttext_hexagon => 'سداسي';

  @override
  String get drawer_header => 'قطر الشغلة';

  @override
  String get drawer_title_rate => 'قيّم هذا التطبيق';

  @override
  String get drawer_title_privacy => 'سياسة الخصوصية';

  @override
  String get history => 'السجل:';

  @override
  String get clear => 'مسح';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'كيفية العمل';

  @override
  String get menu_glossary => 'المصطلحات';

  @override
  String get title_how_it_works => 'كيفية العمل';

  @override
  String get title_glossary => 'المصطلحات';

  @override
  String get select_language => 'اختر اللغة';

  @override
  String get hint_change_language => 'اضغط لتغيير اللغة';

  @override
  String get btn_open_calculator => 'افتح الحاسبة →';

  @override
  String get section_square_title => 'تشكيل المربع — خطوة بخطوة';

  @override
  String get section_square_body => 'الخطوة 1: قيس طول ضلع المربع (a) بالملم\nالخطوة 2: طبق الصيغة: D = a × 1.414\nالخطوة 3: النتيجة هي الحد الأدنى لقطر الشغلة\n\nمثال: a = 10 ملم → D = 14.14 ملم\n\nلماذا 1.414؟\nهذا √2 — القطري لمربع الوحدة.\nيجب أن تحتوي الشغلة على القطري الكامل للمربع.';

  @override
  String get section_hex_title => 'تشكيل السداسي — خطوة بخطوة';

  @override
  String get section_hex_body => 'الخطوة 1: قيس المسافة بين الوجوه المسطحة (b) بالملم\nالخطوة 2: طبق الصيغة: D = b × 1.155\nالخطوة 3: النتيجة هي الحد الأدنى لقطر الشغلة\n\nمثال: b = 10 ملم → D = 11.55 ملم\n\nلماذا 1.155؟\nهذا 2/√3 — مشتق من هندسة السداسي.\nيجب أن تحتوي الشغلة على العرض الكامل للسداسي.';

  @override
  String get section_mistakes_title => 'الأخطاء الشائعة';

  @override
  String get section_mistakes_body => '• لا تخلط بين القطر والنصف قطر\n• قس دائمًا بين الوجوه المسطحة، وليس من ركن إلى ركن\n• أضف هامش التصنيع (0.5–2 ملم) إلى النتيجة\n• الصيغة تعطي القطر الأدنى — قم دائمًا بالتقريب للأعلى';

  @override
  String get term_01_title => 'الشغلة';

  @override
  String get term_01_body => 'قطعة المادة الخام (عادة أسطوانية) قبل إجراء أي عملية تشغيل.';

  @override
  String get term_02_title => 'القطر (D)';

  @override
  String get term_02_body => 'المسافة عبر الدائرة تمر من مركزها. تستخدم لتحديد حجم الشغلة.';

  @override
  String get term_03_title => 'تشكيل المربع';

  @override
  String get term_03_body => 'عملية تشغيل تحول الشغلة الدائرية إلى مقطع عرضي مربع.';

  @override
  String get term_04_title => 'تشكيل السداسي';

  @override
  String get term_04_body => 'عملية تشغيل تحول الشغلة الدائرية إلى مقطع عرضي سداسي منتظم.';

  @override
  String get term_05_title => 'الهامش';

  @override
  String get term_05_body => 'مادة إضافية تُترك عمدًا على سطح الشغلة للقطع التشطيبية اللاحقة.';

  @override
  String get term_06_title => 'التسامح';

  @override
  String get term_06_body => 'النطاق المسموح للاختلاف في البعد. مثال: 10ملم ± 0.1ملم يعني 9.9–10.1ملم مقبول.';

  @override
  String get term_07_title => 'التفريز الدوراني';

  @override
  String get term_07_body => 'عملية تشغيل يدور فيها الشغل مقابل أداة قاطعة ثابتة على المخرطة.';

  @override
  String get term_08_title => 'المخرطة';

  @override
  String get term_08_body => 'آلة تشغيل تدور الشغلة لإجراء عمليات التفريز والتسطيح وتقليل القطر.';

  @override
  String get term_09_title => 'معدل التغذية';

  @override
  String get term_09_body => 'سرعة تقدم الأداة القاطعة على طول الشغلة، مقاسة بالملم لكل دورة.';

  @override
  String get term_10_title => 'عمق القطع';

  @override
  String get term_10_body => 'سمك المادة المزالة في مرور واحد للأداة القاطعة.';

  @override
  String get term_11_title => 'جودة السطح';

  @override
  String get term_11_body => 'ملمس وسلامة السطح المشغول، مقاسة بـ Ra (متوسط الخشونة) بالميكرومتر.';

  @override
  String get term_12_title => '√2 (الجذر التربيعي لـ 2)';

  @override
  String get term_12_body => 'ثابت رياضي ≈ 1.414. يُستخدم في صيغة تشكيل المربع: D = a × √2.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'ثابت رياضي ≈ 1.155. يُستخدم في صيغة تشكيل السداسي: D = b × 2/√3.';

  @override
  String get term_14_title => 'هامش التصنيع';

  @override
  String get term_14_body => 'قطر إضافي يُضاف إلى الحد الأدنى المحسوب لتعويض تآكل الأداة وعيوب السطح. عادة 0.5–2.0 ملم.';

  @override
  String get units_label => 'وحدات القياس';

  @override
  String get units_mm => 'مليمتر (mm)';

  @override
  String get units_inch => 'إنش (inch)';

  @override
  String get units_select => 'اختر وحدة القياس للحسابات والعرض:';

  @override
  String get appbar_table_inch => 'جدول أقطار القطع بالإنش';

  @override
  String get history_cleared => 'تم مسح التاريخ';

  @override
  String get history_clear_confirm_title => 'مسح التاريخ؟';

  @override
  String get history_clear_confirm_body => 'سيتم حذف جميع السجلات نهائياً.';

  @override
  String get history_cancel => 'إلغاء';

  @override
  String get history_clear_confirm => 'مسح';
}
