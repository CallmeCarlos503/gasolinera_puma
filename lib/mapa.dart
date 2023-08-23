import 'package:flutter/material.dart';
import 'package:gasolinera_puma/Detalle.dart';
import 'package:gasolinera_puma/Perfil.dart';
import 'package:gasolinera_puma/principal.dart';

BuildContext? myGlobalContext;

class Mapa extends StatelessWidget {
  const Mapa({Key? key}) : super(key: key);
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
      child: Column(
        children: [
          Carta(),
          Carta(),
          Carta(),
        ],
      ));
}

Widget Carta() {
  return Center(
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.local_gas_station,
              color: Colors.greenAccent,
              size: 40.0,
            ),
            title: Text('GASOLINERIA JAN MIGUEL'),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Text('Hola'),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(width: 8),
              TextButton(
                child: const Text('DETALLES'),
                onPressed: () {
                  Navigator.push(myGlobalContext!,
                      MaterialPageRoute(builder: (context) => Detalle()));
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    ),
  );
}
