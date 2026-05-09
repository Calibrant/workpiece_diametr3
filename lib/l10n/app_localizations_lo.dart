// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get main_title => 'ແນວຜ່ານສູນຂອງຊິ້ນງານ';

  @override
  String get appbar_title => 'ເຄື່ອງຄຳນວນແນວຜ່ານສູນຂອງຊິ້ນງານ';

  @override
  String get appbar_table => 'ຕາຕະລາງແນວຜ່ານສູນຂອງຊິ້ນງານ (mm)';

  @override
  String get hinttext_square => 'ສີ່ຫຼ່ຽມ';

  @override
  String get hinttext_hexagon => 'ຫົກຫຼ່ຽມ';

  @override
  String get drawer_header => 'ແນວຜ່ານສູນຂອງຊິ້ນງານ';

  @override
  String get drawer_title_rate => 'ໃຫ້ຄະແນນແອັບນີ້';

  @override
  String get drawer_title_privacy => 'ນະໂຍບາຍຄວາມປອດໄພ';

  @override
  String get history => 'ປະຫວັດ:';

  @override
  String get clear => 'ລ້າງ';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'ວິທີການເຮັດວຽກ';

  @override
  String get menu_glossary => 'ຄຳສັບຕ່າງໆ';

  @override
  String get title_how_it_works => 'ວິທີການເຮັດວຽກ';

  @override
  String get title_glossary => 'ຄຳສັບຕ່າງໆ';

  @override
  String get select_language => 'ເລືອກພາສາ';

  @override
  String get hint_change_language => 'ກົດເພື່ອປ່ຽນພາສາ';

  @override
  String get btn_open_calculator => 'ເປີດໂຕຄິດໄລ່ →';

  @override
  String get section_square_title => 'ການສ້າງຮູບສີ່ຫຼ່ຽມ — ຂັ້ນຕອນເທື່ອລະຂັ້ນ';

  @override
  String get section_square_body => 'ຂັ້ນຕອນ 1: ວັດຄວາມຍາວຂອງຂ້າງ (a) ຂອງສີ່ຫຼ່ຽມຂອງທ່ານໃນ mm\nຂັ້ນຕອນ 2: ນຳໃຊ້ສູດ: D = a × 1.414\nຂັ້ນຕອນ 3: ຜົນໄດ້ຮັບຄືເສັ້ນຜ່າສູນກາງຕ່ຳສຸດຂອງ workpiece\n\nຕົວຢ່າງ: a = 10 mm → D = 14.14 mm\n\nເປັນຫຍັງ 1.414?\nນີ້ຄື √2 — ເສັ້ນຂວາງຂອງສີ່ຫຼ່ຽມຫົວໜ່ວຍ.\nWorkpiece ຕ້ອງບັງຄັບເສັ້ນຂວາງທັງໝົດຂອງສີ່ຫຼ່ຽມ.';

  @override
  String get section_hex_title => 'ການສ້າງຮູບຫົກຫຼ່ຽມ — ຂັ້ນຕອນເທື່ອລະຂັ້ນ';

  @override
  String get section_hex_body => 'ຂັ້ນຕອນ 1: ວັດຄວາມຫ່າງລະຫວ່າງໜ້າຮາບພຽງ (b) ໃນ mm\nຂັ້ນຕອນ 2: ນຳໃຊ້ສູດ: D = b × 1.155\nຂັ້ນຕອນ 3: ຜົນໄດ້ຮັບຄືເສັ້ນຜ່າສູນກາງຕ່ຳສຸດ\n\nຕົວຢ່າງ: b = 10 mm → D = 11.55 mm\n\nເປັນຫຍັງ 1.155?\nນີ້ຄື 2/√3 — ມາຈາກເລຂາຄະນິດຫົກຫຼ່ຽມ.\nWorkpiece ຕ້ອງບັງຄັບຄວາມກວ້າງເຕັມຂອງຫົກຫຼ່ຽມ.';

  @override
  String get section_mistakes_title => 'ຄວາມຜິດພາດທົ່ວໄປ';

  @override
  String get section_mistakes_body => '• ຢ່າສັບສົນເສັ້ນຜ່າສູນກາງກັບລັງສີ\n• ວັດ flat-to-flat ເສມອ, ບໍ່ແມ່ນແຈຕໍ່ແຈ\n• ເພີ່ມ machining allowance (0.5–2 mm)\n• ສູດໃຫ້ເສັ້ນຜ່າຕ່ຳສຸດ — ຕ້ອງປັດຂຶ້ນເສມອ';

  @override
  String get term_01_title => 'Workpiece';

  @override
  String get term_01_body => 'ວັດຖຸດິບ (ປົກກະຕິເປັນຮູບກະບອງ) ກ່ອນຂັ້ນຕອນເຄື່ອງຈັກ.';

  @override
  String get term_02_title => 'ເສັ້ນຜ່າສູນກາງ (D)';

  @override
  String get term_02_body => 'ຄວາມຫ່າງຂ້າມວົງມົນກາງຈຸດສູນກາງ.';

  @override
  String get term_03_title => 'Square Shaping';

  @override
  String get term_03_body => 'ການຕັດ workpiece ມົນເປັນຮູບຕັດສີ່ຫຼ່ຽມ.';

  @override
  String get term_04_title => 'Hexagon Shaping';

  @override
  String get term_04_body => 'ການຕັດ workpiece ມົນເປັນຮູບຕັດຫົກຫຼ່ຽມປົກກະຕິ.';

  @override
  String get term_05_title => 'Allowance';

  @override
  String get term_05_body => 'ວັດຖຸເພີ່ມເຕີມທີ່ປະຕິບັດຕາມເພື່ອການຕັດສຳເລັດຮູບ.';

  @override
  String get term_06_title => 'Tolerance';

  @override
  String get term_06_body => 'ຊ່ວງການປ່ຽນແປງທີ່ອະນຸຍາດ. ຕົວຢ່າງ: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Turning';

  @override
  String get term_07_body => 'ການຫມຸນ workpiece ກັບເຄື່ອງຕັດຄົງທີ່ໃນເຄື່ອງຫມຸນ.';

  @override
  String get term_08_title => 'Lathe';

  @override
  String get term_08_body => 'ເຄື່ອງມືທີ່ຫມຸນ workpiece ເພື່ອ turning ແລະຫຼຸດເສັ້ນຜ່າ.';

  @override
  String get term_09_title => 'Feed Rate';

  @override
  String get term_09_body => 'ຄວາມໄວຂອງເຄື່ອງຕັດ (mm ຕໍ່ການຫມຸນ).';

  @override
  String get term_10_title => 'Cutting Depth';

  @override
  String get term_10_body => 'ຄວາມຫນາກັບຖືກເອົາອອກໃນ pass ດຽວ.';

  @override
  String get term_11_title => 'Surface Finish';

  @override
  String get term_11_body => 'ໂຄງສ້າງແລະຄວາມລຽບຂອງຫນ້າສຳເລັດ (Ra ໄມໂຄມິເຕີ).';

  @override
  String get term_12_title => '√2 (ຮາກສີ່ຂອງ 2)';

  @override
  String get term_12_body => 'ຄວາມຄົງທີ່ຄະນິດສາດ ≈ 1.414.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'ຄວາມຄົງທີ່ຄະນິດສາດ ≈ 1.155.';

  @override
  String get term_14_title => 'Machining Allowance';

  @override
  String get term_14_body => 'ເສັ້ນຜ່າເພີ່ມເຕີມເພື່ອຊົດເຊີຍການສວມໃຊ້ (0.5–2.0 mm).';
}
