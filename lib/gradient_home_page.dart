import 'package:flutter/material.dart';
import 'package:testtask/unique_color_generator_page.dart';

class GradientHomePage extends StatefulWidget {
  @override
  createState() => GradientHomeState();
}

class GradientHomeState extends State<GradientHomePage> {
  Color _backgroundColor = UniqueColorGenerator.generateColor();
  Color _textColor = Colors.black;
  double _textFontSize = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        setState(() {
          _backgroundColor = UniqueColorGenerator.generateColor();
        });
      },
      child: Container(
        color: _backgroundColor,
        child: Align(
            alignment: Alignment.center,
            child: Text(
              "Hey there",
              style: TextStyle(color: _textColor, fontSize: _textFontSize),
            )),
      ),
    ));
  }
}
