import 'package:flutter/material.dart';
import 'package:workpiece_diametr/unit_provider.dart';

class UpdatedDataTable extends StatelessWidget {
  final UnitProvider unitProvider;

  const UpdatedDataTable({super.key, required this.unitProvider});

  final txtStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  // Форматирование значения с учётом единицы измерения
  String _formatValue(double mmValue, {bool isHeader = false}) {
    if (unitProvider.currentUnit == AppUnit.inch) {
      final inches = unitProvider.convertValueForDisplay(mmValue);
      return inches.toStringAsFixed(4); // дюймы — 4 знака
    }
    // Для S (isHeader) показываем 1 знак, для D1/D2 — 2 знака
    return isHeader ? mmValue.toStringAsFixed(1) : mmValue.toStringAsFixed(2);
  }

  // Заголовок колонки зависит от единицы
  String get _unit => unitProvider.currentUnit == AppUnit.inch ? ' (in)' : ' (mm)';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        key: super.key,
        child: DataTable(
          border: TableBorder.all(),
          headingRowColor: WidgetStateProperty.all(Colors.amber),
          columns: [
            DataColumn(label: HeadingTitle('S$_unit')),
            DataColumn(label: HeadingTitle('D₁$_unit')),
            DataColumn(label: HeadingTitle('D₂$_unit')),
          ],
          rows: [
            ...dataList.map(
              (data) => DataRow(
                cells: [
                  DataCell(Text(_formatValue(data.number, isHeader: true), style: txtStyle)),
                  DataCell(Text(_formatValue(data.diameterOne), style: txtStyle)),
                  DataCell(Text(_formatValue(data.diameterTwo), style: txtStyle)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeadingTitle extends StatelessWidget {
  final String title;
  const HeadingTitle(
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ));
  }
}

class Data {
  final double number;
  final double diameterOne;
  final double diameterTwo;

  Data(this.number, this.diameterOne, this.diameterTwo);
}

const int length = 101;
final dataList = List<Data>.generate(length, (n) => Data(n.toDouble(), n * 1.414, n * 1.155));
