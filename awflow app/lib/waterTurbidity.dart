import 'dart:io';
import 'package:awflow/previousDataWater.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Water extends StatefulWidget {
  Water({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _WaterState createState() => _WaterState();
}


class _WaterState extends State<Water> {
  var image;
  bool im = false;
  void _uploadImage() async {
    final _picker = ImagePicker();
    var _pickedImage = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      image = _pickedImage.path;
      im = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF474787),
      appBar: AppBar(
        title: Text('Water',
          style: TextStyle(fontSize: 28,
              color: Color(0xFFF7F1E3)),),
        backgroundColor: Color(0xFF706FD3),
      ),
      body: ListView(
        children: [
          Center(
              child: image != null ? _displayData(image) : SizedBox(height: height/2.5,)
          ),
          Padding(padding: EdgeInsets.only(left: width/5, right: width/5),
            child: TextButton(
                onPressed: _uploadImage,
                child: Text('Analyze Image',
                  style: TextStyle(fontSize: 26),),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xFF706FD3)
                )
            ),),
          Padding(padding: EdgeInsets.only(top: 25.0, left: width/5, right: width/5),
            child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PreviousDataWater()),
                  );
                },
                child: Text('Previous Data',
                  style: TextStyle(fontSize: 26),),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xFF706FD3)
                )
            ),),
        ],
      ),
    );
  }
}

_displayData(var image){
  return ListView(
    shrinkWrap: true,
    physics: ScrollPhysics(),
    scrollDirection: Axis.vertical,
    children: [
      Padding(padding: EdgeInsets.only(top: 50.0, left: 25.0, right: 25.0, bottom: 25.0),
        child: Image.file(File(image)),
      ),
      Center(
        child: Text('Current Turbidity is', style: TextStyle(fontSize: 28,
            color: Color(0xFFF7F1E3)),),
      ),
      Center(
        child: Text('0.5 NTU', style: TextStyle(fontSize: 28,
            color: Color(0xFFF7F1E3)),),
      ),
      SizedBox(
        height: 20.0,
      ),
      Center(
        child: Text('Safe', style: TextStyle(fontSize: 28,
            color: Colors.lightGreen),),
      ),
      SizedBox(
        height: 25.0,
      )
    ],
  );
}