import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jobtechnicaltest/constants.dart';

class CirclePainter extends CustomPainter {
  final double progress;
  final double width;
  final Color color;

  CirclePainter(this.progress,this.width,this.color);

  @override
  void paint(Canvas canvas,Size size){

    final rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);

    final fullCircle = Paint()
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..color = Colors.green
        ..strokeWidth = width;

    final main = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = primaryColor
      ..strokeWidth = width;

    final whiteIndicator = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = Colors.white
      ..strokeWidth = width-10;

    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = Color(0xFFF2F2F2)
      ..strokeWidth = width;

    final paint2 = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = Colors.red
      ..strokeWidth = width;

    final center = Offset(size.width/2, size.height/2);
    final radius = min(size.width/2, size.height/2) - (width/2);
    final startAngle = -pi/2;
    final sweepAngle = pi*progress;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle+1.9, sweepAngle+4.3, false, paint);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle+0.4, sweepAngle+1, false, main);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle+0.4, 0.01, false, whiteIndicator);



  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return false;
  }
}
