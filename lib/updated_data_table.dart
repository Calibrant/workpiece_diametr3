import 'package:flutter/material.dart';

class UpdatedDataTable extends StatelessWidget {
  const UpdatedDataTable({super.key});

  final txtStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            key: super.key,
            child: DataTable(
              border: TableBorder.all(),
              headingRowColor: WidgetStateProperty.all(Colors.amber),
              columns: const [
                DataColumn(label: HeadingTitle('S')),
                DataColumn(label: HeadingTitle('D₁')),
                DataColumn(label: HeadingTitle('D₂')),
              ],
              rows: [
                ...dataList.map(
                  (data) => DataRow(
                    cells: [
                      DataCell(Text(data.number.toStringAsFixed(1),
                          style: txtStyle)),
                      DataCell(Text(data.diameterOne.toStringAsFixed(2),
                          style: txtStyle)),
                      DataCell(Text(data.diameterTwo.toStringAsFixed(2),
                          style: txtStyle)),
                    ],
                  ),
                ),
              ],
            )));
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
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
final dataList = List<Data>.generate(
    length, (n) => Data(n.toDouble(), n * 1.414, n * 1.155));
