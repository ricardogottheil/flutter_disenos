import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CircularProgressPage extends StatefulWidget {
  CircularProgressPage({Key? key}) : super(key: key);

  @override
  _CircularProgressPageState createState() => _CircularProgressPageState();
}

class _CircularProgressPageState extends State<CircularProgressPage>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  double porcentaje = 0.0;
  double nuevoPorcentaje = 0.0;

  @override
  void initState() {
    super.initState();

    controller = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 800),
    );

    controller?.addListener(() {
      // print('Valor controller: ${controller?.value}');
        porcentaje =
            lerpDouble(porcentaje, nuevoPorcentaje, controller?.value ?? 0.0)!;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          backgroundColor: Colors.pink,
          onPressed: () {
            setState(() {
              porcentaje = nuevoPorcentaje;
              nuevoPorcentaje += 10;
              if (nuevoPorcentaje > 100) {
                nuevoPorcentaje = 0;
                porcentaje = 0;
              }
              

              controller?.forward(from: 0.0);
            });
          },
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(5),
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: _MiRadialProgress(porcentaje: porcentaje),
            ),
          ),
        ));
  }
}

class _MiRadialProgress extends CustomPainter {
  final porcentaje;

  _MiRadialProgress({
    @required this.porcentaje,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Circulo completado
    final paint = new Paint()
      ..strokeWidth = 4
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

    final center = new Offset(size.width / 2, size.height / 2);
    final radio = min(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radio, paint);

    // Arco
    final paintArco = new Paint()
      ..strokeWidth = 10
      ..color = Colors.pink
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
