import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gasolinera_puma/Perfil.dart';
import 'package:gasolinera_puma/mapa.dart';
import 'package:gasolinera_puma/principal.dart';
import 'package:latlng/latlng.dart';

class Detalle extends StatelessWidget {
  const Detalle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Gasolinera Puma'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Principal()));
            },
            child: const Text('INICIO'),
          ),
          TextButton(
              style: style,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Mapa()));
              },
              child: const Text('MAPA')),
          TextButton(
              style: style,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Perfil()));
              },
              child: const Text('PERFIL'))
        ],
      ),
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
      ),
    ),
    child: Contenido(),
  );
}

Widget Contenido() {
  return Center(
    child: Column(
      children: [
        Text('SECCION DE DETALLES',
            style: TextStyle(color: Colors.white, fontSize: 40)),
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 200.0),
                ),
                Image.asset(
                  'assets/personas.png',
                  width: 120,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 100.0),
                    ),
                    Text('PLACEHOLDER',
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
