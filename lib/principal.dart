import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gasolinera_puma/Perfil.dart';
import 'package:gasolinera_puma/mapa.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

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
      body: Cuerpo(),
    );
  }
}

Widget Cuerpo() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
      ),
    ),
    child: Conceptos(),
  );
}

Widget Conceptos() {
  return Center(
    child: Column(
      children: [
        Column(
          children: [
            Text(
              'GASOLINERA PUMA',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'AREA DE PROMOCIONES',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                )
              ],
            ),
            Lista(),
          ],
        ),
      ],
    ),
  );
}

Widget Lista() {
  return Column(
    children: <Widget>[
      CarouselSlider(
        options: CarouselOptions(height: 400.0, autoPlay: true),
        items: [1, 2, 3, 4, 5, 6].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                decoration: BoxDecoration(color: Colors.white),
                child: Image.asset('assets/gasolinera.png'),
              );
            },
          );
        }).toList(),
      )
    ],
  );
}
