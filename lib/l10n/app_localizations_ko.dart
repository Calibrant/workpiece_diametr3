// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get main_title => '워크피스 지름';

  @override
  String get appbar_title => '워크피스 지름 계산기';

  @override
  String get appbar_table => '워크피스 지름 표 (mm)';

  @override
  String get hinttext_square => '정사각형';

  @override
  String get hinttext_hexagon => '육각형';

  @override
  String get drawer_header => '워크피스 지름';

  @override
  String get drawer_title_rate => '이 앱 평가하기';

  @override
  String get drawer_title_privacy => '개인정보 처리방침';

  @override
  String get history => '기록:';

  @override
  String get clear => '지우기';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => '작동 방식';

  @override
  String get menu_glossary => '용어집';

  @override
  String get title_how_it_works => '작동 방식';

  @override
  String get title_glossary => '용어집';

  @override
  String get select_language => '언어 선택';

  @override
  String get hint_change_language => '언어 변경을 위해 탭하세요';

  @override
  String get btn_open_calculator => '계산기 열기 →';

  @override
  String get section_square_title => '사각 가공 — 단계별';

  @override
  String get section_square_body => '단계 1: 정사각형의 한 변(a)을 mm 단위로 측정\n단계 2: 공식 적용: D = a × 1.414\n단계 3: 결과는 최소 workpiece 직경\n\n예시: a = 10 mm → D = 14.14 mm\n\n왜 1.414인가?\n√2 — 단위 정사각형의 대각선.\nWorkpiece는 정사각형의 대각선을 완전히 포함해야 합니다.';

  @override
  String get section_hex_title => '육각 가공 — 단계별';

  @override
  String get section_hex_body => '단계 1: 평면간 거리(b)를 mm 단위로 측정\n단계 2: 공식 적용: D = b × 1.155\n단계 3: 결과는 최소 workpiece 직경\n\n예시: b = 10 mm → D = 11.55 mm\n\n왜 1.155인가?\n2/√3 — 육각형 기하학에서 유도.\nWorkpiece는 육각형의 전체 폭을 포함해야 합니다.';

  @override
  String get section_mistakes_title => '흔한 실수';

  @override
  String get section_mistakes_body => '• 직경과 반경을 혼동하지 마세요\n• 항상 평면간 측정, 모서리간 아님\n• 결과에 가공여유(0.5–2 mm) 추가\n• 공식은 최소 직경 — 항상 올림';

  @override
  String get term_01_title => '워크피스';

  @override
  String get term_01_body => '가공 전 원재료(보통 원통형).';

  @override
  String get term_02_title => '직경 (D)';

  @override
  String get term_02_body => '중심을 통과하는 원의 거리.';

  @override
  String get term_03_title => '사각 가공';

  @override
  String get term_03_body => '원형 workpiece를 사각 단면으로 가공하는 과정.';

  @override
  String get term_04_title => '육각 가공';

  @override
  String get term_04_body => '원형 workpiece를 정육각 단면으로 가공하는 과정.';

  @override
  String get term_05_title => '여유량';

  @override
  String get term_05_body => '후속 마무리 가공을 위해 의도적으로 남겨둔 여분 재료.';

  @override
  String get term_06_title => '공차';

  @override
  String get term_06_body => '치수의 허용 오차 범위. 예: 10mm ± 0.1mm.';

  @override
  String get term_07_title => '선삭';

  @override
  String get term_07_body => '워크피스가 회전하며 고정 절삭공구로 가공.';

  @override
  String get term_08_title => '선반';

  @override
  String get term_08_body => '워크피스를 회전시켜 선삭, 면삭, 직경 축소하는 기계.';

  @override
  String get term_09_title => '이송 속도';

  @override
  String get term_09_body => '절삭공구의 1회전당 진행 속도(mm/rev).';

  @override
  String get term_10_title => '절삭 깊이';

  @override
  String get term_10_body => '한 번의 패스에서 제거되는 재료 두께.';

  @override
  String get term_11_title => '표면 조도';

  @override
  String get term_11_body => '가공면의 질감과 평활도(Ra 마이크로미터).';

  @override
  String get term_12_title => '√2 (2의 제곱근)';

  @override
  String get term_12_body => '수학 상수 ≈ 1.414. 사각 공식에 사용.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => '수학 상수 ≈ 1.155. 육각 공식에 사용.';

  @override
  String get term_14_title => '가공 여유량';

  @override
  String get term_14_body => '공구 마모 보상을 위한 추가 직경(보통 0.5–2.0 mm).';

  @override
  String get units_label => '측정 단위';

  @override
  String get units_mm => '밀리미터 (mm)';

  @override
  String get units_inch => '인치 (inch)';

  @override
  String get units_select => '계산 및 표시를 위한 측정 단위를 선택하세요:';

  @override
  String get appbar_table_inch => '인치 단위 공작물 직경 표';

  @override
  String get history_cleared => '기록이 지워졌습니다';

  @override
  String get history_clear_confirm_title => '기록을 지우시겠습니까?';

  @override
  String get history_clear_confirm_body => '모든 기록이 영구적으로 삭제됩니다.';

  @override
  String get history_cancel => '취소';

  @override
  String get history_clear_confirm => '지우기';
}
