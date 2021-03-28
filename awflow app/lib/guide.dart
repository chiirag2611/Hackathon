import 'package:flutter/material.dart';

class Guide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF474787),
      appBar: AppBar(
        title: Text(
          'Guide',
          style: TextStyle(fontSize: 28, color: Color(0xFFF7F1E3)),
        ),
        backgroundColor: Color(0xFF706FD3),
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Air Turbidity',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 26, color: Color(0xFFF7F1E3)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                      child: Text(
                        'Below 15 NTU means no transparency',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFF7F1E3)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                      child: Text(
                        '5-15 NTU is Safe',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFF7F1E3)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                      child: Text(
                        '15-23 NTU means air may be visible',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFF7F1E3)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                      child: Text(
                        'Above 23 NTU means there may be extreme atmospheric pressure',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFF7F1E3)),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xFF706FD3),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              )),
          Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Water Turbidity',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(fontSize: 26, color: Color(0xFFF7F1E3)),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                      child: Text(
                        'Between 1-5 NTU is critical',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(fontSize: 18, color: Color(0xFFF7F1E3)),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                      child: Text(
                        '5-15 NTU is Safe',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(fontSize: 18, color: Color(0xFFF7F1E3)),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                      child: Text(
                        'Above 15 NTU is not safe for consumption',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(fontSize: 18, color: Color(0xFFF7F1E3)),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xFF706FD3),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              )),
        ],
      ),
    );
  }
}
