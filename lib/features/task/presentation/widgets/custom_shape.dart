import 'package:flutter/material.dart';
import 'package:task/core/extension/size.dart';
import 'package:task/core/utils/app_colors.dart';
import 'package:task/core/extension/media_query.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35.w,
      height: 7.h,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(38.w, context.h * .12),
            painter: RPSCustomPainter(),
          ),
          Positioned(
            top: 2.h,
            left: 2.w,
            child: Row(
              children: [
                Icon(Icons.location_on_outlined,
                    color: Colors.white, size: 6.w),
                Text(
                  text,
                  style: TextStyle(fontSize: 10.sp, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    Paint paint = Paint()
      ..color = AppColors.kSecondaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    Path path = Path();
    path.moveTo(w * 0.1231000, h * 0.1382000);
    path.cubicTo(w * -0.02, h * 0.27, w * -0.03, h * 0.69, w * 0.12, h * 0.85);
    path.cubicTo(w * -0.02, h * 0.85, w * 1.02, h * 0.85, w * 0.94, h * 0.85);
    path.quadraticBezierTo(w * 1.02, h * 0.69, w * 0.89, h * 0.44);
    path.lineTo(w * 0.80, h * 0.24);
    path.lineTo(w * 0.73, h * 0.14);
    path.quadraticBezierTo(w * 0.71, h * 0.14, w * 0.12, h * 0.13);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
