import 'package:flutter/material.dart';
import 'package:flutter_disenos/retos/cuadrado_animado_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños APP',
      home: CuadradoAnimadoPage(),
    );
  }
}