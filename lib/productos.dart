import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView(
        children: const <Widget>[
         
          ListTile(
            title: Text('Producto 1: Shampoo'),
            subtitle: Text('Producto para el cabello'),
          ),
          ListTile(
            title: Text('Producto 2: Acondicionador'),
            subtitle: Text('Producto para el cabello'),
          ),
          ListTile(
            title: Text('Producto 3: Gomina '),
            subtitle: Text('Gel para el cabello'),
          ),
         
        ],
      ),
    );
  }
}
