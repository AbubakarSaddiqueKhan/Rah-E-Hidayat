import 'dart:math';

import 'package:flutter/material.dart';

final List<String> cardinalNames = <String>["N", "E", "S", "W"];

class QiblaPageCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final radius = min(width, height) / 2;
    final centerOffset = Offset(width / 2, height / 2);

    Paint outerBorderPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(centerOffset, radius, outerBorderPaint);

    canvas.save();

    canvas.translate(centerOffset.dx, centerOffset.dy);

    Paint cardinalPaint = Paint()
      ..color = Colors.cyan
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    for (var i = 0; i < 4; i++) {
      canvas.drawLine(
          Offset(0, -radius + 10), Offset(0, -radius + 22), cardinalPaint);

      const textStyle = TextStyle(
          color: Colors.lime, fontSize: 16, fontStyle: FontStyle.italic);

      final textSpan = TextSpan(
        text: cardinalNames[i].toString(),
        style: textStyle,
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout(
        minWidth: 0,
        maxWidth: size.width,
      );
      final offset = Offset(-5, -radius + 32);
      textPainter.paint(canvas, offset);
      canvas.rotate(2 * pi / 4);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(QiblaPageCustomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(QiblaPageCustomPainter oldDelegate) => false;
}
