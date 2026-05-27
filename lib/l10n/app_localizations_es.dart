// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get main_title => 'Calculadora Diámetro de la pieza de trabajo';

  @override
  String get appbar_title => 'Calculadora de diámetro de pieza de trabajo';

  @override
  String get appbar_table => 'Tabla de diámetros de piezas de trabajo en mm';

  @override
  String get hinttext_square => 'cuadrado';

  @override
  String get hinttext_hexagon => 'hexágono';

  @override
  String get drawer_header => 'Workpiece Diameter';

  @override
  String get drawer_title_rate => 'Rate this app';

  @override
  String get drawer_title_privacy => 'Privacy policy';

  @override
  String get history => 'Historia:';

  @override
  String get clear => 'Claro';

  @override
  String get feedback => 'Feedback';

  @override
  String get menu_how_it_works => 'Cómo funciona';

  @override
  String get menu_glossary => 'Glosario';

  @override
  String get title_how_it_works => 'Cómo funciona';

  @override
  String get title_glossary => 'Glosario';

  @override
  String get select_language => 'Seleccionar idioma';

  @override
  String get hint_change_language => 'Toca para cambiar el idioma';

  @override
  String get btn_open_calculator => 'Abrir calculadora →';

  @override
  String get section_square_title => 'Conformado de Cuadrado — Paso a paso';

  @override
  String get section_square_body => 'Paso 1: Mida el lado (a) de su cuadrado en mm\nPaso 2: Aplique la fórmula: D = a × 1.414\nPaso 3: El resultado es el diámetro mínimo de la pieza en bruto\n\nEjemplo: a = 10 mm → D = 14.14 mm\n\n¿Por qué 1.414?\nEs √2 — la diagonal de un cuadrado unitario.\nLa pieza debe contener completamente la diagonal del cuadrado.';

  @override
  String get section_hex_title => 'Conformado de Hexágono — Paso a paso';

  @override
  String get section_hex_body => 'Paso 1: Mida la distancia cara a cara (b) en mm\nPaso 2: Aplique la fórmula: D = b × 1.155\nPaso 3: El resultado es el diámetro mínimo de la pieza en bruto\n\nEjemplo: b = 10 mm → D = 11.55 mm\n\n¿Por qué 1.155?\nEs 2/√3 — derivado de la geometría hexagonal.\nLa pieza debe contener el ancho completo del hexágono.';

  @override
  String get section_mistakes_title => 'Errores comunes';

  @override
  String get section_mistakes_body => '• No confunda diámetro con radio\n• Mida siempre cara a cara, no esquina a esquina\n• Agregue margen de mecanizado (0.5–2 mm) al resultado\n• La fórmula da el diámetro mínimo — redondee siempre hacia arriba';

  @override
  String get term_01_title => 'Pieza en bruto';

  @override
  String get term_01_body => 'La pieza de material crudo (generalmente cilíndrica) antes de cualquier operación de mecanizado.';

  @override
  String get term_02_title => 'Diámetro (D)';

  @override
  String get term_02_body => 'La distancia a través de un círculo medida por su centro. Se usa para definir el tamaño de la pieza.';

  @override
  String get term_03_title => 'Conformado de cuadrado';

  @override
  String get term_03_body => 'Proceso de mecanizado que corta una pieza redonda en un perfil de sección cuadrada.';

  @override
  String get term_04_title => 'Conformado de hexágono';

  @override
  String get term_04_body => 'Proceso de mecanizado que corta una pieza redonda en un perfil de sección hexagonal regular.';

  @override
  String get term_05_title => 'Margen';

  @override
  String get term_05_body => 'Material extra dejado intencionalmente para cortes de acabado posteriores.';

  @override
  String get term_06_title => 'Tolerancia';

  @override
  String get term_06_body => 'Rango permitido de variación en una dimensión. Ejemplo: 10mm ± 0.1mm significa que 9.9–10.1mm es aceptable.';

  @override
  String get term_07_title => 'Torneado';

  @override
  String get term_07_body => 'Operación donde la pieza gira contra una herramienta de corte fija en un torno.';

  @override
  String get term_08_title => 'Torno';

  @override
  String get term_08_body => 'Máquina herramienta que hace girar la pieza para torneado, enfrentado y reducción de diámetro.';

  @override
  String get term_09_title => 'Avance';

  @override
  String get term_09_body => 'Velocidad a la que avanza la herramienta a lo largo de la pieza, medida en mm por revolución.';

  @override
  String get term_10_title => 'Profundidad de corte';

  @override
  String get term_10_body => 'Espesor de material removido en un solo pase de la herramienta.';

  @override
  String get term_11_title => 'Acabado superficial';

  @override
  String get term_11_body => 'Textura y suavidad de la superficie mecanizada, medida en Ra (rugosidad media) micrómetros.';

  @override
  String get term_12_title => '√2 (Raíz cuadrada de 2)';

  @override
  String get term_12_body => 'Constante matemática ≈ 1.414. Usada en la fórmula de cuadrado: D = a × √2.';

  @override
  String get term_13_title => '2/√3';

  @override
  String get term_13_body => 'Constante matemática ≈ 1.155. Usada en la fórmula de hexágono: D = b × 2/√3.';

  @override
  String get term_14_title => 'Margen de mecanizado';

  @override
  String get term_14_body => 'Diámetro adicional añadido al mínimo calculado para compensar desgaste de herramienta e imperfecciones. Típicamente 0.5–2.0 mm.';

  @override
  String get units_label => 'Unidades de medida';

  @override
  String get units_mm => 'Milímetros (mm)';

  @override
  String get units_inch => 'Pulgadas (inch)';

  @override
  String get units_select => 'Selecciona la unidad de medida para cálculos y visualización:';

  @override
  String get appbar_table_inch => 'Tabla de diámetros de piezas en pulgadas';

  @override
  String get history_cleared => 'Historial borrado';

  @override
  String get history_clear_confirm_title => '¿Borrar historial?';

  @override
  String get history_clear_confirm_body => 'Todos los registros se eliminarán permanentemente.';

  @override
  String get history_cancel => 'Cancelar';

  @override
  String get history_clear_confirm => 'Borrar';
}
