import 'package:flutter/material.dart';
import 'gradient_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Igor Mikheev Test",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: GradientHomePage());
  }
}

