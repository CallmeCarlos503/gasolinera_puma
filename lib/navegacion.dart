import 'package:flutter/material.dart';
import 'package:gasolinera_puma/login.dart';
import 'package:gasolinera_puma/register.dart';

BuildContext? contexto;

class Navegacion extends StatelessWidget {
  const Navegacion({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    contexto = context;
    return MaterialApp(
      title: 'Pagina principal',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navegacion de menu'),
        ),
        body: Center(),
        drawer: Navegador(),
      ),
    );
  }
}

Widget Navegador() {
  return Drawer(
    // Agrega un ListView al drawer. Esto asegura que el usuario pueda desplazarse
    // a través de las opciones en el Drawer si no hay suficiente espacio vertical
    // para adaptarse a todo.
    child: ListView(
      // Importante: elimina cualquier padding del ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'GASOLINERA PUMA',
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(color: Colors.black),
        ),
        ListTile(
          title: Text('INICIO DE SESION'),
          onTap: () {
            Navigator.pop(contexto!);
          },
        ),
        ListTile(
          title: Text('REGISTRARSE'),
          onTap: () {
            Navigator.pop(contexto!);
          },
        ),
      ],
    ),
  );
}
