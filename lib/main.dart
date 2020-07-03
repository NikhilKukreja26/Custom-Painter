import 'package:flutter/material.dart';
import 'custom_painter_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Painter Demo',
      debugShowCheckedModeBanner: false,
      home: CustomPainterDemo(),
    );
  }
}
