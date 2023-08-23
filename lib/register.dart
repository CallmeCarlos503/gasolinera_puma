import 'package:flutter/material.dart';
import 'package:gasolinera_puma/login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
            child: const Text('Inicio de sesion'),
          ),
          TextButton(
              style: style, onPressed: () {}, child: const Text('Registrarse'))
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
    child: lineamientos(),
  );
}

Widget lineamientos() {
  return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'AREA DE REGISTRO',
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
      Image.asset(
        'assets/registros.png',
        width: 120,
      ),
      Text(
        'INSERTE LOS DATOS QUE SE LE SOLICITA',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Carlosgeek503@gmail.com',
                hintStyle: TextStyle(color: Colors.white),
                labelText: 'Agregue su Correo',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: '******************',
                hintStyle: TextStyle(color: Colors.white),
                labelText: 'Agregue su contraseña',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: '6000-4068',
                hintStyle: TextStyle(color: Colors.white),
                labelText: 'Agregue su numero de telefono',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
          ),
        ],
      ),
      ElevatedButton(onPressed: () {}, child: Text('Registrarse'))
    ],
  ));
}
