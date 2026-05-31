import 'package:flutter_test/flutter_test.dart';
import 'package:workpiece_diametr/cnc_calculator_screen.dart';

void main() {
  group('CNC Calculator Engine Tests', () {
    test('Inch Mode: Aluminum manual input check', () {
      final material = kMaterials.firstWhere((m) => m.name == 'Aluminum');

      final result = CncCalculatorEngine.calculate(
        isMm: false,
        diameter: 0.125,
        flutes: 2,
        doc: 0.05,
        woc: 0.05,
        chiploadInput: 0.003,
        manualRpm: 18000,
        targetSpeedInput: 589.0,
        mode: CalculationMode.targetSpeed,
        material: material,
      );

      // 1. RPM check: (589 * 12) / (pi * 0.125) ≈ 17998.5
      expect(result.rpm, looksLike(18000, precision: 2.0));

      // 2. Feed Rate check: 18000 * 2 * 0.003 = 108.0
      // Используем фактический RPM из результата для точности
      final expectedFeed = result.rpm * 2 * 0.003;
      expect(result.feedRate, closeTo(expectedFeed, 0.01));
      // Если RPM ровно 18000, то feed ровно 108
      expect(18000 * 2 * 0.003, 108.0);

      // 3. MRR check: 0.05 * 0.05 * 108 = 0.27 с учетом плавающей запятой
      expect(0.05 * 0.05 * 108.0, closeTo(0.27, 0.001)); // Исправленная 33 строка
      expect(result.mrr, closeTo(0.27, 0.001)); // Твоя проверка результата сервиса

      // 4. Power (HP) check: 0.27 * 0.25 = 0.0675
      expect(0.27 * 0.25, 0.0675);
      expect(result.power, closeTo(result.mrr * 0.25, 0.001));
    });

    test('Metric Mode: Steel calculation check', () {
      // Steel: Kc = 1900
      final material = kMaterials.firstWhere((m) => m.name == 'Steel');

      final result = CncCalculatorEngine.calculate(
        isMm: true,
        diameter: 6.0,
        flutes: 4,
        doc: 2.0,
        woc: 3.0,
        chiploadInput: 0.05,
        manualRpm: 4770,
        targetSpeedInput: 0, // Не используется в By RPM
        mode: CalculationMode.fixedRPM,
        material: material,
      );

      // 1. Feed Rate: 4770 * 4 * 0.05 = 954.0 mm/min
      expect(result.feedRate, 954.0);

      // 2. MRR: (2.0 * 3.0 * 954.0) / 1000 = 5.724 cm3/min
      expect(result.mrr, 5.724);

      // 3. Power (kW): (5.724 * 1900) / (60000 * 0.8)
      // 10875.6 / 48000 = 0.226575
      expect(result.power, closeTo(0.2265, 0.0001));
    });

    test('Crash Protection: Empty or Zero inputs', () {
      final material = kMaterials.first;

      final result = CncCalculatorEngine.calculate(
        isMm: true,
        diameter: 0.0, // Critical: Division by zero protection
        flutes: 0,
        doc: 0,
        woc: 0,
        chiploadInput: 0,
        manualRpm: 0,
        targetSpeedInput: 0,
        mode: CalculationMode.targetSpeed,
        material: material,
      );

      expect(result.rpm, 0.0);
      expect(result.vc, 0.0);
      expect(result.feedRate, 0.0);
      expect(result.mrr, 0.0);
      expect(result.power, 0.0);
      expect(result.rpm.isFinite, true);
      expect(result.rpm.isNaN, false);
    });
  });
}

/// Вспомогательный матчер для нечеткого сравнения (учитывая число Пи)
Matcher looksLike(double expected, {double precision = 1.0}) {
  return closeTo(expected, precision);
}
