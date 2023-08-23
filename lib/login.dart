import 'package:flutter/material.dart';
import 'package:gasolinera_puma/navegacion.dart';
import 'package:gasolinera_puma/principal.dart';
import 'package:gasolinera_puma/register.dart';

void main() {
  runApp(const login());
}

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return MaterialApp(
      title: 'Gasolinera la oni chan daiski',
      home: Scaffold(
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
                style: style,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: const Text('Registrarse'))
          ],
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.darken),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('INCIO DE SESION',
                    style: TextStyle(color: Colors.white, fontSize: 40)),
                Image.asset(
                  'assets/personas.png',
                  width: 120,
                ),
                Text('INGRESE SUS DATOS',
                    style: TextStyle(color: Colors.white, fontSize: 40)),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Carlossanz503@gmail.com',
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: 'Agregue su usuario',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10.0),
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
                          hintText: '**************',
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: 'Agregue su contraseña',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Principal()));
                    },
                    child: Text('Iniciar sesion')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
