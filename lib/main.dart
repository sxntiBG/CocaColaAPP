import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Coca-Cola'),
          ),
          backgroundColor: const Color.fromARGB(255, 245, 16, 0),
        ),
        body: [
          const Image(
            image: AssetImage('assets/cocacola.png'),
            fit: BoxFit.cover,
            height: 500,
            width: 500,
          ),
          ListView(
            children: <Widget>[
              _buildRutinaExpansionTile(
                'Coca-Cola',
                '- Ingredientes: \n'
                    ' Agua carbonatada, color caramelo, saborizantes naturales, acidulante\n'
                    ' (ácido fosfórico), edulcorantes (aspartame, acesulfame K), conservante\n'
                    ' (benzoato de sodio), regulador de acidez (citrato de sodio), cafeína.\n'
                    ' Fenilcetonúricos: Contiene fenilalanina.\n',
                'assets/cocacolaProducto.jpg',
                200,
                400,
              ),
              _buildRutinaExpansionTile(
                'Fanta',
                '- Ingredientes: \n'
                    ' Agua carbonatada, azúcares, concentrado Fanta Naranja,\n'
                    ' saborizante natural a naranja, benzoato de sodio, amarillo 6, mezcla de\n'
                    ' sucralosa y acesulfame potásico (4.74mg/100g), amarillo 5 y rojo 40.\n',
                'assets/fanta.jpg',
                200,
                400,
              ),
              _buildRutinaExpansionTile(
                'Sprite',
                '- Ingredientes: \n'
                    ' Agua carbonatada, azúcar, acidulantes: ácido cítrico y E-334, corrector\n'
                    ' de acidez: citratos de sodio, edulcorantes: E-950 y aspartamo, aromas\n'
                    ' naturales de limón y lima. Contiene una fuente de fenilalanina.\n',
                'assets/sprite.jpg',
                200,
                400,
              ),
              _buildRutinaExpansionTile(
                'Nestea',
                '- Ingredientes: \n'
                    ' Azúcar Refinada, Acidulante (Ácido Cítrico), Extracto de Té (3,1 %),\n'
                    ' Antiaglomerante (Fosfato Tricálcico), Extracto Natural de Limón y Aroma\n'
                    ' Natural (Limón) (0,14 %).\n',
                'assets/nestea.jpeg',
                200,
                400,
              ),
              _buildRutinaExpansionTile(
                'Powerade',
                '- Ingredientes: \n'
                    ' Agua, azúcar, cloruro de potasio, cloruro de sodio, cloruro de magnesio,\n'
                    ' cloruro de calcio, niacina (vitamina B3), clorhidrato de piridoxina\n'
                    ' (vitamina B6), acidulante: ácido cítrico, aromatizantes, secuestrantes:\n'
                    ' hexametafosfato de sodio y edta, conservantes: sorbato de potasio y\n'
                    ' benzoato de sodio, colorante: azul.\n',
                'assets/powerade.jpg',
                200,
                400,
              ),
            ],
          ),
        ][currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPageIndex,
          onTap: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits),
              label: 'Productos',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRutinaExpansionTile(
    String title,
    String content,
    String imagePath,
    double height,
    double width,
  ) {
    return ExpansionTile(
      title: Text(title),
      children: <Widget>[
        ListTile(
          title: Text(content),
        ),
        Image.asset(
          imagePath,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
