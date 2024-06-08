//FLUTTER INSPECTOR
/*
Flutter inspector es una herramienta de DartDevTools para la
exploración y visualización de widget tress. Es perfecto para
descubrir las salidad y entradas de tu aplicación.

Con esta herramienta puedes seleccionar widgets en la app
o también eliminarlos del debug banner. Te apoya cuando quieras
saber porqué tu widget es invisible o si tienes curiosidad
de como agregar un flex a un child de Row puede afectar tu UI.

Pasos a seguir para un problema de layout:
- Checkea el mensaje error en la consola al correr la app
e identifica el tipo de error y el widget problemático.
- Abre el Layout Explorer para ver el flex widget y sus hijos.
- Inspecciona el tamaño y las indicaciones del widget problemático
y de sus hijos o padres con el Detail Tree
- Navega de vuelta al código y repara el problema.
*/

//PROYECTO "MENÚ"
import 'package:flutter/material.dart';

void main() {
  runApp(Menu());
}

class MenuItem extends StatelessWidget {
  const MenuItem(this.icon, this.itemText);
  final String icon;
  final String itemText;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        icon,
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
      title: Text(itemText),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu Demo'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Modify code here
              Example1(),
              Example2(),
              Example3(),

            ],
          ),
        ),
      ),
    );
  }
}

// Problem 1: Overflow error
class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Explore the restaurant\'s delicious menu items below!',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Problem 2: Viewport was given unbounded height error
class Example2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          MenuItem('🍔', 'Burger'),
          MenuItem('🌭', 'Hot Dog'),
          MenuItem('🍟', 'Fries'),
          MenuItem('🥤', 'Soda'),
          MenuItem('🍦', 'Ice Cream'),
        ],
      ),
    );
  }
}

// Problem 3: Invisible VerticalDivider
class Example3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
            onPressed: () {
              print('Pickup button pressed.');
            },
            child: Text(
              'Pickup',
            ),
          ),
          // This widget is not shown on screen initially.
          VerticalDivider(
            width: 20.0,
            thickness: 5.0,
          ),
          RaisedButton(
            onPressed: () {
              print('Delivery button pressed.');
            },
            child: Text(
              'Delivery',
            ),
          ),
        ],
      ),
    );
  }
 
  RaisedButton({required Null Function() onPressed, required Text child}) {}
}