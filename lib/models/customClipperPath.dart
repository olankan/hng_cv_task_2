import 'package:flutter/material.dart';
class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = Color(0xFF2196F3)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
     
         
    Path path_0 = Path();
    path_0.moveTo(0,size.height*1.0007639);
    path_0.quadraticBezierTo(size.width*0.0015958,size.height*0.5038197,size.width*0.0012767,size.height*0.2571938);
    path_0.cubicTo(size.width*0.0698328,size.height*0.2329259,size.width*0.2646751,size.height*0.0839063,size.width*0.3525597,size.height*0.1268398);
    path_0.cubicTo(size.width*0.3527384,size.height*0.3361854,size.width*0.6476446,size.height*0.3347084,size.width*0.6474020,size.height*0.1258976);
    path_0.quadraticBezierTo(size.width*0.7336397,size.height*0.0885154,size.width*1.0005617,size.height*0.2546473);
    path_0.lineTo(size.width*1.0003447,size.height*0.9980392);
    path_0.lineTo(0,size.height*1.0007639);
    path_0.close();

    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

