import 'package:flutter/material.dart';
import 'package:flutter_disenos/widgets/radial_progress.dart';

class GraficasCircularesPage extends StatefulWidget {
  const GraficasCircularesPage({Key? key}) : super(key: key);

  @override
  _GraficasCircularesPageState createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  double porcentaje = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              porcentaje += 10.0;
              if(porcentaje > 100.0) porcentaje = 0.0;
            });
          },
          child: Icon(Icons.refresh),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CustomRadialProgress(porcentaje: porcentaje, primaryColor: Colors.amber,),
                CustomRadialProgress(porcentaje: porcentaje, primaryColor: Colors.black,),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CustomRadialProgress(porcentaje: porcentaje, primaryColor: Colors.blue,),
                CustomRadialProgress(porcentaje: porcentaje, primaryColor: Colors.red,),
              ]
            )
          ]
        ) 
        
        );
  }
}

class CustomRadialProgress extends StatelessWidget {
  final double porcentaje;
  final Color? primaryColor;
  
  const CustomRadialProgress({
    Key? key,
    required this.porcentaje,
    required this.primaryColor,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      child: RadialProgress(
        porcentaje: porcentaje, 
        primaryColor: primaryColor,
      ),
      // child: Text('$porcentaje %', style: TextStyle(fontSize: 50))
    );
  }
}
