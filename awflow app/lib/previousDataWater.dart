import 'package:flutter/material.dart';

class PreviousDataWater extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF474787),
      appBar: AppBar(
        title: Text('Previous Data',
          style: TextStyle(fontSize: 28,
              color: Color(0xFFF7F1E3)),),
        backgroundColor: Color(0xFF706FD3),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Time',
                    style: TextStyle(fontSize: 22,
                        color: Color(0xFFF7F1E3)),)),
                  DataColumn(label: Text('Turbidity',
                    style: TextStyle(fontSize: 22,
                        color: Color(0xFFF7F1E3)),))
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('23:21',
                      style: TextStyle(fontSize: 18,
                          color: Color(0xFFF7F1E3)),)),
                    DataCell(Text('0.9 NTU',
                      style: TextStyle(fontSize: 18,
                          color: Color(0xFFF7F1E3)),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('21:38',
                      style: TextStyle(fontSize: 18,
                          color: Color(0xFFF7F1E3)),)),
                    DataCell(Text('1 NTU',
                      style: TextStyle(fontSize: 18,
                          color: Color(0xFFF7F1E3)),))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('11:29',
                      style: TextStyle(fontSize: 18,
                          color: Color(0xFFF7F1E3)),)),
                    DataCell(Text('0.4 NTU',
                      style: TextStyle(fontSize: 18,
                          color: Color(0xFFF7F1E3)),))
                  ])
                ],
              )
          )
        ],
      ),
    );
  }
}