import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'circle_painter.dart';

class SemiCircle extends StatelessWidget {
  final double progress;
  final double width;
  final Color color;
  const SemiCircle({Key? key, required this.progress, required this.width, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CirclePainter(progress,width,color),
      size: const Size(300, 300),
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const[
            Text("Title",style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.w700),),
            Text("1st Day",style: TextStyle(fontSize: 25,color: primaryColor)),
          ],
        ),
      ),
    );
  }
}
