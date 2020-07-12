
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Colortile();
  }
}

class Colortile extends StatefulWidget {
  @override
  createState() => new ColortileState();
}

class ColortileState extends State<Colortile> {
  Color myColor = UniqueColorGenerator.getColor();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            myColor = UniqueColorGenerator.getColor();
          });
        },
        child: Container(
          color: myColor,
         child: Center(
               child: Text("Hey there", textDirection: TextDirection.ltr),
         )
        ));
  }
}

class UniqueColorGenerator {
  static Random random = new Random();

  static Color getColor() {
    return Color.fromARGB(
        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}



