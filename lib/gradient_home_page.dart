import 'package:flutter/material.dart';
import 'package:testtask/unique_color_generator_page.dart';

class GradientHomePage extends StatefulWidget {
  @override
  createState() => GradientHomeState();
}

class GradientHomeState extends State<GradientHomePage> {
  Color _colorGradientStart = UniqueColorGenerator.generateColor();
  Color _colorGradientEnd = UniqueColorGenerator.generateColor();
  Color _textColor = Colors.black;
  double _textFontSize = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: () {
            setState(() {
              _colorGradientStart = UniqueColorGenerator.generateColor();
              _colorGradientEnd = UniqueColorGenerator.generateColor();
            });
          },
          child: Container(
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Hey there",
                  style: TextStyle(color: _textColor, fontSize: _textFontSize),
                )),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[_colorGradientStart, _colorGradientEnd],
                )),
          ),
        ));
  }
}