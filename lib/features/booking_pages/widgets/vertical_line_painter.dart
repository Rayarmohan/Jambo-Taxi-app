import 'package:flutter/material.dart';

class VerticalLinePainter extends CustomPainter {
  final Color color;
  final double thickness;

  VerticalLinePainter({required this.color, required this.thickness});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke;
    canvas.drawLine(const Offset(0, 0), Offset(0, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}