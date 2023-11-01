import 'dart:math';

import 'package:flutter/widgets.dart';

class Border3D extends StatelessWidget {
  /* final List<BoxShadow> boxShadow; */

  /*  final CustomClipper<Path> clipper; */

  final Widget? child;

  final Color? color;
  final double width;
  final double height;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? padding;

  Border3D(
      {
      /* required this.boxShadow, */
      /* required this.clipper, */
      this.child,
      this.color,
      required this.width,
      required this.height,
      this.constraints,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _Border3DPainter(
        width: width,
        height: height,
        boxShadows: [
          const BoxShadow(
              color: Color.fromARGB(47, 0, 0, 0),
              offset: Offset(5, 5),
              spreadRadius: 10,
              blurRadius: 11),
          const BoxShadow(
              color: Color.fromARGB(33, 0, 0, 0),
              offset: Offset(-5, -5),
              spreadRadius: 10,
              blurRadius: 10),
        ],
      ),
      child: Container(
        width: width,
        height: height,
        constraints: constraints,
        padding: padding,
        child: child,
      ),
    );
  }
}

class _Border3DPainter extends CustomPainter {
  const _Border3DPainter({
    required this.width,
    required this.height,
    /* required this.clipper, */
    required this.boxShadows,
  });
  final double width;
  final double height;
/*   final CustomClipper<Path> clipper; */
  final List<BoxShadow> boxShadows;

  @override
  void paint(Canvas canvas, Size size) {
    final agle = Radius.circular(20);
    final path1 = Path()
      ..moveTo(size.width + 8.5, 0)
      ..lineTo(size.width + 8.5, size.height + 8.5)
      ..lineTo(0, size.height + 8.5);
    final paint1 = boxShadows[0].toPaint()
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;
    canvas.drawPath(path1, paint1);
    final path2 = Path()
      ..moveTo(10, size.height)
      ..lineTo(10, 10)
      ..lineTo(size.width, 10);
    final paint2 = boxShadows[1].toPaint()
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;
    canvas.drawPath(path2, paint2);

    final paint = Paint()
      ..color = Color(0xffffffff)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
    Offset a = Offset(0, 0);

    Offset b = Offset(width, height);
    final rect = Rect.fromPoints(a, b);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, agle), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


//нарисовать неон

/*  final agle = Radius.circular(20);
    final path1 = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    final paint1 = BoxShadow(
              color: Color(0xffEA9FDE),
              offset: Offset(5, -5),
              spreadRadius: 10,
              blurRadius: 15).toPaint()
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;
    canvas.drawPath(path1, paint1);
   

    final paint = Paint()
      ..color = Color(0xffffffff)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
    Offset a = Offset(0, 0);

    Offset b = Offset(width, height);
    final rect = Rect.fromPoints(a, b);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, agle), paint); */