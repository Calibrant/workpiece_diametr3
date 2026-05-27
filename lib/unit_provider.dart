
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Перечисление для определения доступных единиц измерения
enum AppUnit {
  mm,
  inch,
}

// Расширение для удобного получения строкового представления и отображаемого имени
extension AppUnitExtension on AppUnit {
  String get name {
    switch (this) {
      case AppUnit.mm:
        return 'mm';
      case AppUnit.inch:
        return 'inch';
    }
  }

  String get displayName {
    switch (this) {
      case AppUnit.mm:
        return 'Миллиметры (mm)';
      case AppUnit.inch:
        return 'Дюймы (inch)';
    }
  }
}

class UnitProvider with ChangeNotifier {
  static const String _unitKey = 'selectedUnit';
  AppUnit _currentUnit = AppUnit.inch; // Единица измерения по умолчанию

  AppUnit get currentUnit => _currentUnit;

  UnitProvider() {
    _loadUnit();
  }

  // Загружает сохраненную единицу измерения из SharedPreferences
  Future<void> _loadUnit() async {
    final prefs = await SharedPreferences.getInstance();
    final unitString = prefs.getString(_unitKey);
    if (unitString == AppUnit.inch.toString()) {
      _currentUnit = AppUnit.inch;
    } else {
      _currentUnit = AppUnit.mm; // По умолчанию или если сохраненное значение недействительно
    }
    notifyListeners();
  }

  // Устанавливает новую единицу измерения и сохраняет ее
  Future<void> setUnit(AppUnit unit) async {
    if (_currentUnit != unit) {
      _currentUnit = unit;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_unitKey, unit.toString());
      notifyListeners();
    }
  }

  // Вспомогательная функция для конвертации значений
  // Предполагается, что все внутренние расчеты ведутся в миллиметрах (mm)
  double convertValueForDisplay(double valueInMm) {
    if (_currentUnit == AppUnit.inch) {
      return valueInMm / 25.4; // 1 дюйм = 25.4 мм
    }
    return valueInMm;
  }

  // Вспомогательная функция для конвертации входных значений в миллиметры
  double convertInputToMm(double inputValue, AppUnit inputUnit) {
    if (inputUnit == AppUnit.inch) {
      return inputValue * 25.4;
    }
    return inputValue;
  }
}
