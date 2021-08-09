import 'package:flutter/material.dart';
import 'package:flutter_disenos/pages/headers_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños APP',
      home: HeadersPage(),
    );
  }
}