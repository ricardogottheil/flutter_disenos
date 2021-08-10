import 'dart:math';

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {
  final porcentaje;
  final Color? primaryColor;
  final Color? secondaryColor;
  final double bottomTick;
  final double progressTick;

  const RadialProgress({
    Key? key,
    @required this.porcentaje,
    this.primaryColor = Colors.blue,
    this.secondaryColor = Colors.grey,
    this.bottomTick = 4, 
    this.progressTick = 10,
  }) : super(key: key);

  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  double? porcentajeAnterior;

  @override
  void initState() {
    super.initState();

    porcentajeAnterior = widget.porcentaje;
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller?.forward(from: 0.0);

    final diferenciaAnimar = widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior = widget.porcentaje;

    double porcentaje = widget.porcentaje;
    Color? primaryColor = widget.primaryColor;
    Color? secondaryColor = widget.secondaryColor;
    double bottomTick = widget.bottomTick;
    double progressTick = widget.progressTick;

    return AnimatedBuilder(
        animation: controller!,
        builder: (context, widget) {
          return Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: double.infinity,
            child: CustomPaint(
              painter: _MiRadialProgress(
                  (porcentaje - diferenciaAnimar) +
                      (diferenciaAnimar * controller!.value),
                  primaryColor,
                  secondaryColor,
                  bottomTick,
                  progressTick),
            ),
          );
        });
  }
}

class _MiRadialProgress extends CustomPainter {
  final porcentaje;
  final Color? primaryColor;
  final Color? secondaryColor;
  final double bottomTick;
  final double progressTick;

  _MiRadialProgress(
    this.porcentaje,
    this.primaryColor,
    this.secondaryColor,
    this.bottomTick, 
    this.progressTick,
  );

  @override
  void paint(Canvas canvas, Size size) {
    // Circulo completado
    final paint = new Paint()
      ..strokeWidth = bottomTick
      ..color = secondaryColor!
      ..style = PaintingStyle.stroke;

    final center = new Offset(size.width / 2, size.height / 2);
    final radio = min(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radio, paint);

    // Arco
    final paintArco = new Paint()
      ..strokeWidth = progressTick
      ..color = primaryColor!
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    // Parte que se debe llenar
    double arcAngle = 2 * pi * (porcentaje / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radio), -pi / 2,
        arcAngle, false, paintArco);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
