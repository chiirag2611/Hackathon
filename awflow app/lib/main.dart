import 'package:awflow/airTurbidity.dart';
import 'package:awflow/guide.dart';
import 'package:awflow/waterTurbidity.dart';
import 'package:awflow/weather.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AWFlow',
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/background.jpg')
          )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: height/4.75, left: width/3.5),
                child: Text('AWFlow', style: TextStyle(fontSize: 64, color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: height/3, left: width/5, right: width/5),
              child: TextButton(
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Air()),
                ); },
                child: Text(
                  'Air Turbidity',
                  style: TextStyle(fontSize: 26),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Color(0xFFA12D5A)
                )
              ),),
              Padding(padding: EdgeInsets.only(top: 25.0, left: width/5, right: width/5),
                child: TextButton(
                    onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Water()),
                    ); },
                    child: Text(
                      'Water Turbidity',
                      style: TextStyle(fontSize: 26),
                    ),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xFFA12D5A)
                    )
                ),),
              Padding(padding: EdgeInsets.only(top: 25.0, left: width/5, right: width/5),
                child: TextButton(
                    onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Weather()),
                    ); },
                    child: Text(
                      'Weather',
                      style: TextStyle(fontSize: 26),
                    ),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xFFA12D5A)
                    )
                ),),
              Padding(padding: EdgeInsets.only(top: 25.0, left: width/5, right: width/5),
                child: TextButton(
                    onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Guide()),
                    ); },
                    child: Text(
                      'Guide',
                      style: TextStyle(fontSize: 26),
                    ),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xFFA12D5A)
                    )
                ),),
            ],
          )),
    );
  }
}