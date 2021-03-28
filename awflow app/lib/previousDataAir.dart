import 'package:flutter/material.dart';

class PreviousDataAir extends StatelessWidget {
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
                  DataCell(Text('21:09',
                    style: TextStyle(fontSize: 18,
                        color: Color(0xFFF7F1E3)),)),
                  DataCell(Text('11.1 NTU',
                    style: TextStyle(fontSize: 18,
                        color: Color(0xFFF7F1E3)),))
                ]),
                DataRow(cells: [
                  DataCell(Text('20:15',
                    style: TextStyle(fontSize: 18,
                        color: Color(0xFFF7F1E3)),)),
                  DataCell(Text('14.6 NTU',
                    style: TextStyle(fontSize: 18,
                        color: Color(0xFFF7F1E3)),))
                ]),
                DataRow(cells: [
                  DataCell(Text('15:01',
                    style: TextStyle(fontSize: 18,
                        color: Color(0xFFF7F1E3)),)),
                  DataCell(Text('9.2 NTU',
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