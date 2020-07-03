import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color mainBGColor = Color(0xFF652A78);
Color redColor = Color(0xFFDE3C10);
Color purpleColor = Color(0xFF8132AD);
Color cyan = Color(0xFF99D5E5);
Color orange = Color(0xFFE97A4D);

class CustomPainterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomPaint(
            painter: MyCustomPainter(),
            child: Container(
              height: 500.0,
            ),
          ),
          Positioned(
            top: 250.0,
            left: 110,
            child: Text(
              'Customer Painter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path mainBGPath = Path();
    mainBGPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    paint.color = mainBGColor;
    canvas.drawPath(mainBGPath, paint);

    Path purplePath = Path();
    purplePath.lineTo(size.width * 0.45, 0);
    purplePath.quadraticBezierTo(
        size.width * 0.35, size.height * 0.35, 0, size.height * 0.55);
    purplePath.close();
    paint.color = purpleColor;
    canvas.drawPath(purplePath, paint);

    Path redPath = Path();
    redPath.moveTo(size.width * 0.9, 0);
    redPath.quadraticBezierTo(
        size.width * 0.5, size.height * 0.1, 0, size.height * 0.85);
    redPath.lineTo(0, size.height);
    redPath.lineTo(size.width * 0.25, size.height);
    redPath.quadraticBezierTo(
        size.width * 0.5, size.height * 0.6, size.width, size.height * 0.6);
    redPath.lineTo(size.width, 0);
    redPath.close();
    paint.color = redColor;
    canvas.drawPath(redPath, paint);

    Path orangePath = Path();
    orangePath.moveTo(0, size.height * 0.75);
    orangePath.quadraticBezierTo(
        size.width * 0.3, size.height * 0.78, size.width * 0.45, size.height);
    orangePath.lineTo(0, size.height);
    orangePath.close();
    paint.color = orange;
    canvas.drawPath(orangePath, paint);

    Path trianglePath = Path();
    trianglePath.lineTo(size.width * 0.25, 0);
    trianglePath.lineTo(0, size.height * 0.25);
    trianglePath.close();
    paint.color = cyan;
    canvas.drawPath(trianglePath, paint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) => oldDelegate != this;

  @override
  bool shouldRebuildSemantics(MyCustomPainter oldDelegate) => false;
}
