import 'package:flutter/material.dart';
//import 'package:geolocator/geolocator.dart';

class Weather extends StatefulWidget {
  Weather({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  //Position _currentPosition;
  //bool search = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF474787),
      appBar: AppBar(
        title: Text('Weather',
          style: TextStyle(fontSize: 28,
              color: Color(0xFFF7F1E3)),),
        backgroundColor: Color(0xFF706FD3),
      ),
      body: ListView(
        children: [
          /*
          Padding(padding: EdgeInsets.only(top: 25.0, left: 25.0),
            child: _getCurrentLocation()),
           */
          Padding(padding: EdgeInsets.only(top: height/4, left: 25.0, right: 25.0),
              child: Text(
                'Neemrana',
                textAlign: TextAlign.center,
                style:
                TextStyle(fontSize: 48, color: Color(0xFFF7F1E3), fontWeight: FontWeight.w500),
              )
          ),
          Padding(padding: EdgeInsets.only(top: 15.0, left: 25.0, right: 25.0),
              child: Text(
                'Mostly Sunny',
                textAlign: TextAlign.center,
                style:
                TextStyle(fontSize: 36, color: Color(0xFFF7F1E3)),
              )
          ),
         Padding(padding: EdgeInsets.only(top: height*0.1, left: 25.0, right: 25.0),
         child: Text(
           '40° C',
           textAlign: TextAlign.center,
           style:
           TextStyle(fontSize: 36, color: Color(0xFFF7F1E3)),
         )
         ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(top: height*0.1, left: width/4, right: 25.0),
                  child: Text(
                    'Max \n 41° C',
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: 28, color: Color(0xFFF7F1E3)),
                  )
              ),
              Padding(padding: EdgeInsets.only(top: height*0.1, left: width*0.2, right: 25.0),
                  child: Text(
                    'Min \n 19° C',
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: 28, color: Color(0xFFF7F1E3)),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }

  /*
  _getCurrentLocation() {
    if(search){
      Geolocator
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
          .then((Position position) {
        setState(() {
          print(position);
          _currentPosition = position;
          search = false;
        });
      }).catchError((e) {
        print(e);
      });
    }
  }

  _retLocation(){
    if (_currentPosition != null)
      {
        return Text(
            "LAT: ${_currentPosition.latitude}, LNG: ${_currentPosition.longitude}"
        );
      }
      else{
        return null;
    }
  }
   */
}