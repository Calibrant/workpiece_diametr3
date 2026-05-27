// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get main_title => 'Đường kính phôi';

  @override
  String get appbar_title => 'Máy tính đường kính phôi';

  @override
  String get appbar_table => 'Bảng đường kính phôi (mm)';

  @override
  String get hinttext_square => 'hình vuông';

  @override
  String get hinttext_hexagon => 'hình lục giác';

  @override
  String get drawer_header => 'Đường kính phôi';

  @override
  String get drawer_title_rate => 'Đánh giá ứng dụng này';

  @override
  String get drawer_title_privacy => 'Chính sách quyền riêng tư';

  @override
  String get history => 'Lịch sử:';

  @override
  String get clear => 'Xóa';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Cách hoạt động';

  @override
  String get menu_glossary => 'Bảng chú giải';

  @override
  String get title_how_it_works => 'Cách Hoạt Động';

  @override
  String get title_glossary => 'Bảng Chú Giải';

  @override
  String get select_language => 'Chọn Ngôn Ngữ';

  @override
  String get hint_change_language => 'Nhấn để thay đổi ngôn ngữ';

  @override
  String get btn_open_calculator => 'Mở Máy Tính →';

  @override
  String get section_square_title => 'Tạo Hình Vuông — Từng Bước';

  @override
  String get section_square_body => 'Bước 1: Đo cạnh (a) của hình vuông theo mm\nBước 2: Áp dụng công thức: D = a × 1.414\nBước 3: Kết quả là đường kính tối thiểu của phôi\n\nVí dụ: a = 10 mm → D = 14.14 mm\n\nTại sao 1.414?\nĐây là √2 — đường chéo của hình vuông đơn vị.\nPhôi phải chứa toàn bộ đường chéo của hình vuông.';

  @override
  String get section_hex_title => 'Tạo Hình Lục Giác — Từng Bước';

  @override
  String get section_hex_body => 'Bước 1: Đo khoảng cách mặt phẳng đến mặt phẳng (b) theo mm\nBước 2: Áp dụng công thức: D = b × 1.155\nBước 3: Kết quả là đường kính tối thiểu của phôi\n\nVí dụ: b = 10 mm → D = 11.55 mm\n\nTại sao 1.155?\nĐây là 2/√3 — xuất phát từ hình học lục giác.\nPhôi phải chứa toàn bộ chiều rộng lục giác.';

  @override
  String get section_mistakes_title => 'Lỗi Thường Gặp';

  @override
  String get section_mistakes_body => '• Đừng nhầm lẫn đường kính với bán kính\n• Luôn đo mặt phẳng đến mặt phẳng, không phải góc đến góc\n• Thêm lượng dư gia công (0.5–2 mm) vào kết quả\n• Công thức cho đường kính tối thiểu — luôn làm tròn lên';

  @override
  String get term_01_title => 'Phôi';

  @override
  String get term_01_body => 'Vật liệu thô (thường hình trụ) trước khi gia công.';

  @override
  String get term_02_title => 'Đường kính (D)';

  @override
  String get term_02_body => 'Khoảng cách qua tâm của hình tròn.';

  @override
  String get term_03_title => 'Tạo Hình Vuông';

  @override
  String get term_03_body => 'Quy trình cắt phôi tròn thành tiết diện vuông.';

  @override
  String get term_04_title => 'Tạo Hình Lục Giác';

  @override
  String get term_04_body => 'Quy trình cắt phôi tròn thành tiết diện lục giác đều.';

  @override
  String get term_05_title => 'Lượng dư';

  @override
  String get term_05_body => 'Vật liệu thừa cố ý để lại cho các lần cắt hoàn thiện.';

  @override
  String get term_06_title => 'Độ dung sai';

  @override
  String get term_06_body => 'Khoảng biến thiên cho phép. Ví dụ: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Tiện';

  @override
  String get term_07_body => 'Quy trình phôi quay đối với dụng cụ cắt cố định trên máy tiện.';

  @override
  String get term_08_title => 'Máy tiện';

  @override
  String get term_08_body => 'Máy quay phôi để tiện, chuốt mặt và giảm đường kính.';

  @override
  String get term_09_title => 'Tốc độ tiến dao';

  @override
  String get term_09_body => 'Tốc độ dụng cụ di chuyển dọc phôi (mm/vòng quay).';

  @override
  String get term_10_title => 'Chiều sâu cắt';

  @override
  String get term_10_body => 'Độ dày vật liệu được loại bỏ trong một lần chạy.';

  @override
  String get term_11_title => 'Độ nhám bề mặt';

  @override
  String get term_11_body => 'Kết cấu và độ mịn của bề mặt đã gia công (Ra micromet).';

  @override
  String get term_12_title => '√2 (Căn bậc hai của 2)';

  @override
  String get term_12_body => 'Hằng số toán học ≈ 1.414 dùng trong công thức vuông.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Hằng số toán học ≈ 1.155 dùng trong công thức lục giác.';

  @override
  String get term_14_title => 'Lượng dư gia công';

  @override
  String get term_14_body => 'Đường kính bổ sung để bù hao mòn dụng cụ (0.5–2.0 mm).';

  @override
  String get units_label => 'Đơn vị đo lường';

  @override
  String get units_mm => 'Milimét (mm)';

  @override
  String get units_inch => 'Inch (inch)';

  @override
  String get units_select => 'Chọn đơn vị đo lường cho tính toán và hiển thị:';

  @override
  String get appbar_table_inch => 'Bảng đường kính chi tiết theo inch';

  @override
  String get history_cleared => 'Lịch sử đã xóa';

  @override
  String get history_clear_confirm_title => 'Xóa lịch sử?';

  @override
  String get history_clear_confirm_body => 'Tất cả bản ghi sẽ bị xóa vĩnh viễn.';

  @override
  String get history_cancel => 'Hủy';

  @override
  String get history_clear_confirm => 'Xóa';
}
