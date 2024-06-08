import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(new MyApp());
}
//wIDGETS
/*

//Text widget

  Text('Hello World');
//
Image widget
  return Image.asset(
  image,
  fit: BoxFit.cover,
);
// Icon widget
Icon(
  Icons.star,
  color: Colors.red[500],
),
*/

//ADD THE VISIBLE WIDGET TO THE LAYOUT WIDGET
/*
const Center(
  child: Text('Hello World'),
),
*/
//MATERIAL APPS
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}*/

//CUPERTINO APPS
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter layout demo',
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.systemBlue,
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey,
          middle: Text('Flutter layout demo'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello World'),
            ],
          ),
        ),
      ),
    );
  }
}*/

//NON-MATERIAL ARPPS
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text(
          'Hello World',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}*/

//LAY OUT MULTIPLE WIDGETS VERTICALLY AND HORIZONTALLY
/*Row y column son widets primitivos y podemos usar 
ListTile par Row o ListView para column. */

//ALIGNING WIDGETS
//Podemos alinear elementos de Row con MainAxis y de Column con
/*
//CrossAxis
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset('images/pic1.jpg'),
    Image.asset('images/pic2.jpg'),
    Image.asset('images/pic3.jpg'),
  ],
);

/*
 Editando los main axis alignment a spaceEvenly se dividen
 se divide el espacio para que cada imagen ocupe un lugar.
*/ 
Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset('images/pic1.jpg'),
    Image.asset('images/pic2.jpg'),
    Image.asset('images/pic3.jpg'),
  ],
);

/*
Columns funcionan de la misma manera que Rows. El ejemplo
anterior deja ver que las imagenes ocupan 100 px en un
espacio de 300 px y que estás se acomodan de igual forma pero
en vertical
*/
*/

//SIZING WIDGETS
/*
Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(
      child: Image.asset('images/pic1.jpg'),
    ),
    Expanded(
      child: Image.asset('images/pic2.jpg'),
    ),
    Expanded(
      child: Image.asset('images/pic3.jpg'),
    ),
  ],
);
/* Si la imagen no encaja dentro del render de la caja 
entonce podemos repararla por medio de
Expanded Widget*/

Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(
      child: Image.asset('images/pic1.jpg'),
    ),
    Expanded(
      flex: 2,
      child: Image.asset('images/pic2.jpg'),
    ),
    Expanded(
      child: Image.asset('images/pic3.jpg'),
    ),
  ],
);
/*
En el anterior código una imagen ocupa el doble de espacio
que las otras dos utilizando Expanded widget con la propiedad
Flex que es un entero que determna el factor flex para el
widget.
*/
*/

//PACKING WIDGETS
/*
Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
)
/*
Columns y Rows ocupan tanto espacio pueden en su main axis
pero es posible juntarlos por medio de mainAxisSize y el
mainAxisSize.min. El ejemplo anterior junta un sets de 
iconos de estrellas. 
*/
*/

//NESTING GROWS AND COLUMNS
/*
final stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
);

final ratings = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      const Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);

/*
Ahora se han anidado Rows que en este caso contienen un
grupo de estrellas y el Texto
*/

const descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);

// DefaultTextStyle.merge() allows you to create a default text
// style that is inherited by its child and all subsequent children.
final iconList = DefaultTextStyle.merge(
  style: descTextStyle,
  child: Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green[500]),
            const Text('PREP:'),
            const Text('25 min'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.timer, color: Colors.green[500]),
            const Text('COOK:'),
            const Text('1 hr'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.restaurant, color: Colors.green[500]),
            const Text('FEEDS:'),
            const Text('4-6'),
          ],
        ),
      ],
    ),
  ),
);
// iconList define los iconos Row.

final leftColumn = Container(
  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
  child: Column(
    children: [
      titleText,
      subTitle,
      ratings,
      iconList,
    ],
  ),
);
// leftColumn contine los raitings de Rows, como titulo y un texto
body: Center(
  child: Container(
    margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
    height: 600,
    child: Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 440,
            child: leftColumn,
          ),
          mainImage,
        ],
      ),
    ),
  ),
),
/*
Left column está ubicada en SizedBox pra contener su tamaño.
UI está creado con el ROW enteramente.

Puedes juntar una imagen desde el internet usando Image.network()
pero en este ejemplo la imagen está en el directorio del
proyecto.
*/
*/

/*
STANDARD WIDGETS
- Container.
- ListView.
- Stack.
- GridView.

MATERIAL WIDGETS
- Card.
- ListTile.

CONTAINER
- Agregar padding, margins, borders.
- Cambiar el color del background o la imagen.
- Contiene solo un Child widget y es este Child puede ser Row,
Column, hasta la raiz del árbol widget.
*/

//CONTAINER EXAMPLES 
/*
/*
Este layout consiste en una Column con dos Rows y cada una
contiene 2 imagenes. Un Container se usa para cambiar el 
color de background.
*/
Widget _buildImageColumn() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: [
        _buildImageRow(1),
        _buildImageRow(3),
      ],
    ),
  );
}
/*
Container tambien se usa para agregar bordes redondeados 
a los margins de cada imagen.
*/
Widget _buildDecoratedImage(int imageIndex) => Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('images/pic$imageIndex.jpg'),
      ),
    );

Widget _buildImageRow(int imageIndex) => Row(
      children: [
        _buildDecoratedImage(imageIndex),
        _buildDecoratedImage(imageIndex + 1),
      ],
    );
*/

//GRIDVIEW
/*
/*
Usa GridView para lay widgets y listas 2D. GridView brinda
dos listas pre fabricadas o también puedes construir 
tu propia grid cuando GridView detecta que el contenido es
demasiado largo automaticamente lo baja.

Usa GridView.extent para crear un grid con tiles al maximo
de 159 pixeles

GridView.count en este caso se usa grid de 2 Tile de amplitud
y 3 Tile de la amplitud landscape. Estos titles son creados
por la propiedad footer en cada GridTile.
*/
Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(30));

// The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// The List.generate() constructor allows an easy way to create
// a list when objects have a predictable naming pattern.
List<Container> _buildGridTileList(int count) => List.generate(
    count, (i) => Container(child: Image.asset('images/pic$i.jpg')));
*/

//LISTVIEW
/*
- listsView usa una Column especializada para organizar una lista de boxes
- Puder ser colocada horizontalmente o verticalmente.
- Detecta cuando el contenido no calza y provee acomodarlos.
- Son menos configurable que Column, pero más fáciles para usar
y brindar scrolling.
*/
//Example (ListView)

/*
Widget _buildList() {
  return ListView(
    children: [
      _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
      _tile('The Castro Theater', '429 Castro St', Icons.theaters),
      _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
      _tile('Roxie Theater', '3117 16th St', Icons.theaters),
      _tile('United Artists Stonestown Twin', '501 Buckingham Way',
          Icons.theaters),
      _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
      const Divider(),
      _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
      _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
      _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
      _tile('La Ciccia', '291 30th St', Icons.restaurant),
    ],
  );
}
/*
Se usa ListView para mostrar una lista de un negocio usanto
ListTile. Un Divider para separar los teatros de los restaurantes.
*/
ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}
/*
Por otro lado, tenemos ListView que muestra los colores desde
el Material2 Design palette para un color particular.
*/
*/

//STACK
/*
- Se usa cuando un widget se sobre pone a otro widget.
- El primer widget en la lista de children es el widget base.
- El contenido del Stack no puede scrollear.
- Puedes elegir sujetar al children que excede la caja render.

Stack tambíen se usa para cubrir un Container que muestra
texto sobre un fondo negro translucido en la cima de CircleAvatar.

Usa Stack para cubrir un icono en la cima de la imagen.
*/
/*
Widget _buildStack() {
  return Stack(
    alignment: const Alignment(0.6, 0.6),
    children: [
      const CircleAvatar(
        backgroundImage: AssetImage('images/pic.jpg'),
        radius: 100,
      ),
      Container(
        decoration: const BoxDecoration(
          color: Colors.black45,
        ),
        child: const Text(
          'Mia B',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
*/

//CARD
/*
Es un espacio que consiste en: 
- Implementa Material card
- Se usa para presentar nuggets relacionados de información
- Acepta un solo child y ese child puede ser Row, Column
o otro widget que sostiene una lista de children.
- Se muestra con esquinas redondeadas y una sombra.
- El contenido de Card no puede scrollearse.
- Proviene de la libreria Material.
*/
/*
Widget _buildCard() {
  return SizedBox(
    height: 210,
    child: Card(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              '1625 Main Street',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: const Text('My City, CA 99984'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text(
              '(408) 555-1212',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: const Text('costa@example.com'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
  );
}
/*Contiene 3 ListTiles que encajan en el SizedBox y un Divider
que separa la primera de la segunda.*/
*/

//LISTTILE
/*
- Una Row especializada que contiene hasta 3 lineas de
texto y opciones de icono.
- Menos configurable que una Row pero fácil de usar.
- De Material library.
- Es más utilizada en una Card o ListView.
*/
/*
// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  const ListDemo({super.key, required this.type});

  final ListDemoType type;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('List demo'),
        ),
        body: Scrollbar(
          child: ListView(
            restorationId: 'list_demo_list_view',
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: [
              for (var index = 1; index < 21; index++)
                ListTile(
                  leading: ExcludeSemantics(
                    child: CircleAvatar(child: Text('$index')),
                  ),
                  title: Text('Item $index'),
                  subtitle: type == ListDemoType.twoLine
                      ? const Text('Secondary text')
                      : null,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

enum ListDemoType {
  oneLine,
  twoLine,
}

void main() {
  runApp(const ListDemo(type: ListDemoType.twoLine));
}
*/

//CONSTRAINTS
/*Para entender mejor al layour de Flutter, necesitas aprender
como flutter posiciona y crea sus componentes en un layout*/