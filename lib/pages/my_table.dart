import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class MyTable extends StatelessWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlutoGrid(columns: [
      PlutoColumn(title: 'Name', field: 'name', type: PlutoColumnType.text()),
      PlutoColumn(title: 'Age', field: 'age', type: PlutoColumnType.text()),
    ], rows: [
      PlutoRow(cells: {
        'name': PlutoCell(value: 'Josepth'),
        'age': PlutoCell(value: '25')
      })
    ]);
  }
}
