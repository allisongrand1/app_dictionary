import 'dart:math';
import 'dart:ui';

import 'package:app_dictionary/common/dictionary/dictionary.dart';

class BlurHash extends StatefulWidget {
  final Widget child;
  final double width;
  final double height;
  BlurHash(
      {required this.child,
      super.key,
      required this.width,
      required this.height});

  @override
  State<BlurHash> createState() => _BlurHashState();
}

class _BlurHashState extends State<BlurHash>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 60));
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var width = widget.width;
    var height = widget.height;
    var child = widget.child;
    return Container(
      child: Center(
        child: Container(
            width: widget.width,
            height: widget.width,
            child: AnimatedBuilder(
                animation: _animationController,
                builder: (ctx, widget) {
                  /*   return Icon(Icons.abc); */
                  return CustomPaint(
                    painter: BlurPainter(width: width, height: height),
                    child: child,
                  );
                })),
      ),
    );
  }
}

class BlurPainter extends CustomPainter {
  final double width;
  final double height;

  BlurPainter({required this.width, required this.height});

  @override
  void paint(Canvas canvas, Size size) {
    Random random = Random();

    for (var i = 0; i < width; i += 5) {
      for (var j = 0; j < height; j += 5) {
        Offset point = Offset(
            random.nextDouble() * (width), random.nextDouble() * (height));

        Paint paint = Paint();
        paint.color = const Color.fromARGB(255, 223, 221, 221).withOpacity(0.3);
        paint.strokeWidth = random.nextDouble() * 2;

        canvas.drawPoints(PointMode.points, [point], paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
