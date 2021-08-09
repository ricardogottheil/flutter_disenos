import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 300, color: Color(0xFF615AAB));
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  const HeaderBordesRedondeados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Color(0xFF615AAB),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          )),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Color(0xFF615AAB);
    paint.style = PaintingStyle.fill; // fill, stroke
    paint.strokeWidth = 2;

    final path = Path();
    // Dibujar con el path y paint
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Color(0xFF615AAB);
    paint.style = PaintingStyle.fill; // fill, stroke
    paint.strokeWidth = 2;

    final path = Path();
    // Dibujar con el path y paint
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  const HeaderPico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Color(0xFF615AAB);
    paint.style = PaintingStyle.fill; // fill, stroke
    paint.strokeWidth = 2;

    final path = Path();
    // Dibujar con el path y paint
    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Color(0xFF615AAB);
    paint.style = PaintingStyle.fill; // fill, stroke
    paint.strokeWidth = 2;

    final path = Path();
    // Dibujar con el path y paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.40, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWaves extends StatelessWidget {
  const HeaderWaves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderWavesPainter(),
      ),
    );
  }
}

class _HeaderWavesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Color(0xFF615AAB);
    paint.style = PaintingStyle.fill; // fill, stroke
    paint.strokeWidth = 2;

    final path = Path();
    // Dibujar con el path y paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderGradiente extends StatelessWidget {
  const HeaderGradiente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _HeaderGradientePainter(),
      ),
    );
  }
}

class _HeaderGradientePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = new Rect.fromCircle(
      center: Offset(150.0, 55.0), 
      radius: 180.0,
    );

    final Gradient gradiente = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xFF6d05e8),
        Color(0xFFc012ff),
        Color(0xFF6d05fa),
      ],
      stops: [
        0.0,
        0.5,
        1.0,
      ]
    );

    final paint = Paint()..shader = gradiente.createShader(rect);

    // Propiedades
    // paint.color = Color(0xFF615AAB);
    paint.style = PaintingStyle.fill; // fill, stroke
    paint.strokeWidth = 2;

    final path = Path();
    // Dibujar con el path y paint
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
