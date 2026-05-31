import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';
import 'package:workpiece_diametr/unit_provider.dart';

/// Инженерная база данных материалов ЧПУ
class CncMaterialData {
  final String name;
  final double targetSfm;
  final double targetVc;
  final double defaultChiploadInch;
  final double defaultChiploadMm;
  final double materialFactor;
  final double kc;

  const CncMaterialData({
    required this.name,
    required this.targetSfm,
    required this.targetVc,
    required this.defaultChiploadInch,
    required this.defaultChiploadMm,
    required this.materialFactor,
    required this.kc,
  });
}

/// Инженерные данные для пяти материалов
const List<CncMaterialData> kMaterials = [
  CncMaterialData(name: 'Aluminum', targetSfm: 800, targetVc: 240, defaultChiploadInch: 0.003, defaultChiploadMm: 0.08, materialFactor: 0.25, kc: 700),
  CncMaterialData(name: 'Steel', targetSfm: 300, targetVc: 90, defaultChiploadInch: 0.002, defaultChiploadMm: 0.05, materialFactor: 0.8, kc: 1900),
  CncMaterialData(name: 'Brass', targetSfm: 500, targetVc: 150, defaultChiploadInch: 0.0025, defaultChiploadMm: 0.06, materialFactor: 0.35, kc: 800),
  CncMaterialData(name: 'Hardwood', targetSfm: 1000, targetVc: 300, defaultChiploadInch: 0.005, defaultChiploadMm: 0.12, materialFactor: 0.15, kc: 300),
  CncMaterialData(name: 'Acrylic', targetSfm: 600, targetVc: 180, defaultChiploadInch: 0.004, defaultChiploadMm: 0.10, materialFactor: 0.2, kc: 400),
];

/// Результаты расчета ЧПУ
class CncCalculationResult {
  final double rpm;
  final double vc;
  final double feedRate;
  final double mrr;
  final double power;

  CncCalculationResult({
    required this.rpm,
    required this.vc,
    required this.feedRate,
    required this.mrr,
    required this.power,
  });
}

/// Ядро математических расчетов ЧПУ
class CncCalculatorEngine {
  static CncCalculationResult calculate({
    required bool isMm,
    required double diameter,
    required int flutes,
    required double doc,
    required double woc,
    required double chiploadInput,
    required double manualRpm,
    required double targetSpeedInput,
    required CalculationMode mode,
    required CncMaterialData material,
  }) {
    if (diameter <= 0) {
      return CncCalculationResult(rpm: 0, vc: 0, feedRate: 0, mrr: 0, power: 0);
    }

    // Расчет подачи на зуб (Chipload)
    double chipload = chiploadInput > 0 ? chiploadInput : (isMm ? material.defaultChiploadMm : material.defaultChiploadInch);

    double rpm = 0.0;
    double vc = 0.0;

    if (mode == CalculationMode.targetSpeed) {
      double targetSpeed = targetSpeedInput > 0 ? targetSpeedInput : (isMm ? material.targetVc : material.targetSfm);

      vc = targetSpeed;
      if (isMm) {
        rpm = (vc * 1000) / (pi * diameter);
      } else {
        rpm = (vc * 12) / (pi * diameter);
      }
    } else {
      rpm = manualRpm;
      if (isMm) {
        vc = (pi * diameter * rpm) / 1000;
      } else {
        vc = (pi * diameter * rpm) / 12;
      }
    }

    double feedRate = rpm * flutes * chipload;
    double mrr = 0.0;
    double power = 0.0;

    if (isMm) {
      mrr = (doc * woc * feedRate) / 1000; // cm³/min
      power = (mrr * material.kc) / (60 * 1000 * 0.8); // kW (efficiency 0.8)
    } else {
      mrr = doc * woc * feedRate; // in³/min
      power = mrr * material.materialFactor; // HP
    }

    return CncCalculationResult(
      rpm: rpm,
      vc: vc,
      feedRate: feedRate,
      mrr: mrr,
      power: power,
    );
  }
}

enum CalculationMode {
  fixedRPM,
  targetSpeed
}

class CNCCalculatorScreen extends StatefulWidget {
  const CNCCalculatorScreen({super.key});

  @override
  State<CNCCalculatorScreen> createState() => _CNCCalculatorScreenState();
}

class _CNCCalculatorScreenState extends State<CNCCalculatorScreen> {
  // Состояние ввода
  CalculationMode _mode = CalculationMode.targetSpeed;
  CncMaterialData _selectedMaterial = kMaterials.first;
  AppUnit? _lastUnit;

  final TextEditingController _diameterController = TextEditingController(text: '10');
  final TextEditingController _flutesController = TextEditingController(text: '2');
  final TextEditingController _chiploadController = TextEditingController();
  final TextEditingController _rpmController = TextEditingController(text: '1000');
  final TextEditingController _cuttingSpeedController = TextEditingController();
  final TextEditingController _docController = TextEditingController(text: '2');
  final TextEditingController _wocController = TextEditingController(text: '5');

  // Результаты
  double _resRPM = 0;
  double _resFeedRate = 0;
  double _resMRR = 0;
  double _resPower = 0;
  double _resVc = 0;

  // Smart Status Banner state
  String _statusMessage = "Enter tool geometry and parameters to see safety analysis.";
  Color _statusColor = Colors.grey;
  IconData _statusIcon = Icons.info_outline;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateInitialValues();
      calculateResults();
    });
  }

  @override
  void dispose() {
    _diameterController.dispose();
    _flutesController.dispose();
    _chiploadController.dispose();
    _rpmController.dispose();
    _cuttingSpeedController.dispose();
    _docController.dispose();
    _wocController.dispose();
    super.dispose();
  }

  void _updateInitialValues() {
    final unitProvider = context.read<UnitProvider>();
    if (_mode == CalculationMode.targetSpeed) {
      _cuttingSpeedController.text = unitProvider.currentUnit == AppUnit.mm ? _selectedMaterial.targetVc.toString() : _selectedMaterial.targetSfm.toString();
    }
  }

  /// Функция расчетов по инженерным формулам
  void calculateResults() {
    final unitProvider = context.read<UnitProvider>();
    final bool isMm = unitProvider.currentUnit == AppUnit.mm;

    // Безопасный парсинг данных
    final double diameter = double.tryParse(_diameterController.text) ?? 0.0;
    final int flutes = int.tryParse(_flutesController.text) ?? 0;
    final double doc = double.tryParse(_docController.text) ?? 0.0;
    final double woc = double.tryParse(_wocController.text) ?? 0.0;

    final result = CncCalculatorEngine.calculate(
      isMm: isMm,
      diameter: diameter,
      flutes: flutes,
      doc: doc,
      woc: woc,
      chiploadInput: double.tryParse(_chiploadController.text) ?? 0.0,
      manualRpm: double.tryParse(_rpmController.text) ?? 0.0,
      targetSpeedInput: double.tryParse(_cuttingSpeedController.text) ?? 0.0,
      mode: _mode,
      material: _selectedMaterial,
    );

    // Анализ режимов резания (Smart Status Banner)
    final double targetValue = isMm ? _selectedMaterial.targetVc : _selectedMaterial.targetSfm;
    String statusMessage;
    Color statusColor;
    IconData statusIcon;

    if (result.vc == 0) {
      statusMessage = "Enter tool geometry and parameters to see safety analysis.";
      statusColor = Colors.grey;
      statusIcon = Icons.info_outline;
    } else {
      final double ratio = result.vc / targetValue;
      if (ratio < 0.8) {
        statusMessage = "Surface speed is low. This is safe for the machine, but tool might rub. Consider increasing RPM or Speed.";
        statusColor = Colors.orange;
        statusIcon = Icons.warning_amber_rounded;
      } else if (ratio <= 1.15) {
        statusMessage = "Parameters are within the safe range for standard hobby and professional CNC setups.";
        statusColor = Colors.green;
        statusIcon = Icons.check_circle_outline;
      } else {
        statusMessage = "Warning: High surface speed! Excessive heat buildup may cause rapid tool wear, melting (for plastics) or breakage.";
        statusColor = Colors.red;
        statusIcon = Icons.gavel_rounded;
      }
    }

    setState(() {
      _resRPM = result.rpm;
      _resVc = result.vc;
      _resFeedRate = result.feedRate;
      _resMRR = result.mrr;
      _resPower = result.power;
      _statusMessage = statusMessage;
      _statusColor = statusColor;
      _statusIcon = statusIcon;
    });
  }

  @override
  Widget build(BuildContext context) {
    final unitProvider = context.watch<UnitProvider>();
    final bool isInch = unitProvider.currentUnit == AppUnit.inch;
    final l10n = AppLocalizations.of(context)!;

    // Синхронизация единиц измерения и очистка полей
    if (_lastUnit != null && _lastUnit != unitProvider.currentUnit) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _diameterController.clear();
        _chiploadController.clear();
        _docController.clear();
        _wocController.clear();
        _updateInitialValues();
        calculateResults();
      });
    }
    _lastUnit = unitProvider.currentUnit;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.menu_cnc_calculator),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SegmentedButton<AppUnit>(
              segments: [
                ButtonSegment(value: AppUnit.mm, label: Text(l10n.units_mm.split(' ').last.replaceAll(RegExp(r'[()]'), ''))),
                ButtonSegment(value: AppUnit.inch, label: Text(l10n.units_inch.split(' ').last.replaceAll(RegExp(r'[()]'), ''))),
              ],
              selected: {
                unitProvider.currentUnit
              },
              onSelectionChanged: (val) {
                unitProvider.setUnit(val.first);
                _updateInitialValues();
                calculateResults();
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSectionTitle(l10n.cnc_calculator_material),
            _buildMaterialChips(),
            const SizedBox(height: 20),
            _buildSectionTitle(l10n.cnc_calculator_tool_geometry),
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    _diameterController,
                    isInch ? "Diameter (in)" : "Diameter (mm)",
                    hint: isInch ? "Diameter (in)" : "Diameter (mm)",
                    suffix: isInch ? "in" : "mm",
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(child: _buildTextField(_flutesController, l10n.cnc_calculator_flutes)),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    _chiploadController,
                    isInch ? "Chipload (in/tooth)" : "Chipload (mm/tooth)",
                    hint: isInch ? _selectedMaterial.defaultChiploadInch.toString() : _selectedMaterial.defaultChiploadMm.toString(),
                    suffix: isInch ? "in/t" : "mm/t",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildSectionTitle(l10n.cnc_calculator_calculation_approach),
            _buildModeToggle(),
            const SizedBox(height: 12),
            _mode == CalculationMode.fixedRPM
                ? _buildTextField(_rpmController, "Manual RPM", suffix: "RPM")
                : _buildTextField(
                    _cuttingSpeedController,
                    isInch ? "Target SFM (ft/min)" : "Target Vc (m/min)",
                    suffix: isInch ? "ft/min" : "m/min",
                  ),
            const SizedBox(height: 20),
            _buildSectionTitle(l10n.cnc_calculator_cut_depth_width),
            Row(
              children: [
                Expanded(
                  child: _buildTextField(_docController, "DOC (ap)", hint: isInch ? "in" : "mm", suffix: isInch ? "in" : "mm"),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildTextField(_wocController, "WOC (ae)", hint: isInch ? "in" : "mm", suffix: isInch ? "in" : "mm"),
                ),
              ],
            ),
            const SizedBox(height: 30),
            _buildResultsGrid(unitProvider.currentUnit, l10n),
            const SizedBox(height: 20),
            _buildStatusBanner(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBanner() {
    return Container(
      decoration: BoxDecoration(
        color: _statusColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(_statusIcon, color: _statusColor, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              _statusMessage,
              style: TextStyle(color: _statusColor, fontWeight: FontWeight.w500, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
    );
  }

  String _getLocalizedMaterialName(String name, AppLocalizations l10n) {
    switch (name) {
      case 'Aluminum':
        return l10n.mat_aluminum;
      case 'Steel':
        return l10n.mat_steel;
      case 'Brass':
        return l10n.mat_brass;
      case 'Hardwood':
        return l10n.mat_hardwood;
      case 'Acrylic':
        return l10n.mat_acrylic;
      default:
        return name;
    }
  }

  Widget _buildMaterialChips() {
    final l10n = AppLocalizations.of(context)!;
    return Wrap(
      spacing: 8,
      children: kMaterials.map((m) {
        final isSelected = _selectedMaterial == m;
        return ChoiceChip(
          label: Text(_getLocalizedMaterialName(m.name, l10n)),
          selected: isSelected,
          onSelected: (_) {
            setState(() => _selectedMaterial = m);
            _updateInitialValues();
            calculateResults();
          },
        );
      }).toList(),
    );
  }

  Widget _buildModeToggle() {
    final l10n = AppLocalizations.of(context)!;
    return SizedBox(
      width: double.infinity,
      child: SegmentedButton<CalculationMode>(
        segments: [
          ButtonSegment(value: CalculationMode.targetSpeed, label: Text(l10n.cnc_calculator_by_speed), icon: const Icon(Icons.bolt)),
          ButtonSegment(value: CalculationMode.fixedRPM, label: Text(l10n.cnc_calculator_by_rpm), icon: const Icon(Icons.settings_backup_restore)),
        ],
        selected: {
          _mode
        },
        onSelectionChanged: (val) {
          setState(() => _mode = val.first);
          _updateInitialValues();
          calculateResults();
        },
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, {String? hint, String? suffix}) {
    return TextFormField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^\d*[\.,]?\d*')),
      ],
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixText: suffix,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      onChanged: (_) => calculateResults(),
    );
  }

  Widget _buildResultsGrid(AppUnit unit, AppLocalizations l10n) {
    final bool isMetric = unit == AppUnit.mm;
    return Column(
      children: [
        Row(
          children: [
            _buildResultCard(l10n.cnc_calculator_spindle_speed, '${_resRPM.toStringAsFixed(0)} ${l10n.cnc_calculator_rpm_unit}', Colors.blue),
            const SizedBox(width: 12),
            _buildResultCard(l10n.cnc_calculator_feed_rate, '${_resFeedRate.toStringAsFixed(1)} ${isMetric ? l10n.cnc_calculator_feed_rate_metric_unit : l10n.cnc_calculator_feed_rate_imperial_unit}', Colors.green),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            _buildResultCard(l10n.cnc_calculator_mrr, '${_resMRR.toStringAsFixed(2)} ${isMetric ? l10n.cnc_calculator_mrr_metric_unit : l10n.cnc_calculator_mrr_imperial_unit}', Colors.orange),
            const SizedBox(width: 12),
            _buildResultCard(l10n.cnc_calculator_required_power, '${_resPower.toStringAsFixed(2)} ${isMetric ? l10n.cnc_calculator_power_metric_unit : l10n.cnc_calculator_power_imperial_unit}', Colors.red),
          ],
        ),
        if (_mode == CalculationMode.fixedRPM) ...[
          const SizedBox(height: 12),
          _buildResultCard(l10n.cnc_calculator_surface_speed, '${_resVc.toStringAsFixed(1)} ${isMetric ? l10n.cnc_calculator_surface_speed_metric_unit : l10n.cnc_calculator_surface_speed_imperial_unit}', Colors.blueGrey, fullWidth: true),
        ]
      ],
    );
  }

  Widget _buildResultCard(String label, String value, Color color, {bool fullWidth = false}) {
    final card = Card(
      elevation: 0,
      color: color.withOpacity(0.1),
      shape: RoundedRectangleBorder(side: BorderSide(color: color.withOpacity(0.5)), borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyle(fontSize: 12, color: color.withOpacity(0.8), fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color)),
          ],
        ),
      ),
    );

    return fullWidth ? SizedBox(width: double.infinity, child: card) : Expanded(child: card);
  }
}
