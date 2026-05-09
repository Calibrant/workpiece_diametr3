// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get main_title => 'O diâmetro da peça de trabalho';

  @override
  String get appbar_title => 'Calculadora de Diâmetro da Peça';

  @override
  String get appbar_table => 'Tabela de diâmetros de peças em mm';

  @override
  String get hinttext_square => 'quadrado';

  @override
  String get hinttext_hexagon => 'hexágono';

  @override
  String get drawer_header => 'Workpiece Diameter';

  @override
  String get drawer_title_rate => 'Rate this app';

  @override
  String get drawer_title_privacy => 'Privacy policy';

  @override
  String get history => 'História:';

  @override
  String get clear => 'Claro';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Como funciona';

  @override
  String get menu_glossary => 'Glossário';

  @override
  String get title_how_it_works => 'Como Funciona';

  @override
  String get title_glossary => 'Glossário';

  @override
  String get select_language => 'Selecionar Idioma';

  @override
  String get hint_change_language => 'Toque para alterar o idioma';

  @override
  String get btn_open_calculator => 'Abrir Calculadora →';

  @override
  String get section_square_title => 'Conformação Quadrada — Passo a Passo';

  @override
  String get section_square_body => 'Passo 1: Meça o lado (a) do seu quadrado em mm\nPasso 2: Aplique a fórmula: D = a × 1.414\nPasso 3: O resultado é o diâmetro mínimo da peça bruta\n\nExemplo: a = 10 mm → D = 14.14 mm\n\nPor que 1.414?\nÉ √2 — a diagonal de um quadrado unitário.\nA peça deve conter completamente a diagonal do quadrado.';

  @override
  String get section_hex_title => 'Conformação Hexagonal — Passo a Passo';

  @override
  String get section_hex_body => 'Passo 1: Meça a distância face a face (b) em mm\nPasso 2: Aplique a fórmula: D = b × 1.155\nPasso 3: O resultado é o diâmetro mínimo da peça bruta\n\nExemplo: b = 10 mm → D = 11.55 mm\n\nPor que 1.155?\nÉ 2/√3 — derivado da geometria hexagonal.\nA peça deve conter a largura completa do hexágono.';

  @override
  String get section_mistakes_title => 'Erros Comuns';

  @override
  String get section_mistakes_body => '• Não confunda diâmetro com raio\n• Meça sempre face a face, não canto a canto\n• Adicione margem de usinagem (0,5–2 mm) ao resultado\n• A fórmula dá o diâmetro mínimo — sempre arredonde para cima';

  @override
  String get term_01_title => 'Peça bruta';

  @override
  String get term_01_body => 'O material bruto (geralmente cilíndrico) antes de qualquer operação de usinagem.';

  @override
  String get term_02_title => 'Diâmetro (D)';

  @override
  String get term_02_body => 'A distância através de um círculo passando pelo centro.';

  @override
  String get term_03_title => 'Conformação Quadrada';

  @override
  String get term_03_body => 'Processo que corta uma peça redonda em perfil de seção quadrada.';

  @override
  String get term_04_title => 'Conformação Hexagonal';

  @override
  String get term_04_body => 'Processo que corta uma peça redonda em perfil hexagonal regular.';

  @override
  String get term_05_title => 'Margem';

  @override
  String get term_05_body => 'Material extra deixado intencionalmente para cortes de acabamento.';

  @override
  String get term_06_title => 'Tolerância';

  @override
  String get term_06_body => 'Faixa de variação permitida. Exemplo: 10mm ± 0.1mm.';

  @override
  String get term_07_title => 'Torneamento';

  @override
  String get term_07_body => 'Operação onde a peça gira contra uma ferramenta estacionária no torno.';

  @override
  String get term_08_title => 'Torno';

  @override
  String get term_08_body => 'Máquina que gira a peça para torneamento e redução de diâmetro.';

  @override
  String get term_09_title => 'Avanço';

  @override
  String get term_09_body => 'Velocidade de avanço da ferramenta (mm por revolução).';

  @override
  String get term_10_title => 'Profundidade de corte';

  @override
  String get term_10_body => 'Espessura de material removida em uma única passada.';

  @override
  String get term_11_title => 'Acabamento superficial';

  @override
  String get term_11_body => 'Textura e suavidade da superfície usinada (Ra micrômetros).';

  @override
  String get term_12_title => '√2 (Raiz quadrada de 2)';

  @override
  String get term_12_body => 'Constante matemática ≈ 1.414 para fórmula do quadrado.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Constante matemática ≈ 1.155 para fórmula do hexágono.';

  @override
  String get term_14_title => 'Margem de usinagem';

  @override
  String get term_14_body => 'Diâmetro adicional para compensar desgaste da ferramenta (0,5–2,0 mm).';
}
