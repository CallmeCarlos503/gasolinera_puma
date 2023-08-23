import 'package:flutter/material.dart';
import 'package:gasolinera_puma/login.dart';
import 'package:gasolinera_puma/principal.dart';

import 'mapa.dart';

BuildContext? myGlobalContext;

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myGlobalContext = context;
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
    child: Center(
      child: Desarrollo(),
    ),
  );
}

Widget Desarrollo() {
  return Center(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 15.0),
        ),
        Text(
          'AREA DE PERFIL',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
        Column(
          children: [
            Card(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text(
                    'USUARIO',
                    style: TextStyle(fontSize: 40),
                  ),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 50.0)),
                      Image.asset(
                        'assets/personas.png',
                        width: 120,
                      ),
                      Text(
                        'NOMBRE:',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'Placeholder Nombre',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        'TELEFONO:',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '0000-0000',
                        style: TextStyle(fontSize: 30),
                      ),
                      ElevatedButton(
                        child: const Text('CERRAR SESION'),
                        onPressed: () {
                          Navigator.push(myGlobalContext!,
                              MaterialPageRoute(builder: (context) => login()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}
