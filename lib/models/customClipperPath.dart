import 'package:flutter/material.dart';
class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = Color(0xFF2196F3)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(0,size.height*1.0007639);
    path_0.quadraticBezierTo(size.width*0.0003575,size.height*0.3741278,size.width*0.0002936,size.height*0.1240387);
    path_0.cubicTo(size.width*-0.0289289,size.height*0.0021390,size.width*0.3897230,size.height*-0.0020117,size.width*0.3342525,size.height*0.0030048);
    path_0.cubicTo(size.width*0.3540917,size.height*0.1425261,size.width*0.6559173,size.height*0.1241915,size.width*0.6571939,size.height*0.0025210);
    path_0.cubicTo(size.width*0.6105834,size.height*-0.0021136,size.width*1.0148857,size.height*0.0057041,size.width*0.9985702,size.height*0.1252101);
    path_0.quadraticBezierTo(size.width*0.9986468,size.height*0.3420932,size.width*1.0003447,size.height*0.9980392);
    path_0.lineTo(0,size.height*1.0007639);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = Color(0xFFD5F2FF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
