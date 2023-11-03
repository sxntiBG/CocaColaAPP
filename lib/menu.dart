import 'package:flutter/material.dart';
import 'package:flutter_application_1/productos.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text(
              'Mi app',
              style: TextStyle(color: Colors.black87, fontSize: 33),
            )),
            backgroundColor: const Color.fromARGB(255, 0, 204, 255)),
        body: ListView(
          children: [
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Color.fromARGB(255, 255, 0, 187),
              ),
              title: Text('Home'),
              subtitle: Text('Subtitle de home'),
              trailing: Icon(Icons.arrow_circle_left),
            ),
            ListTile(
              leading: const Icon(
                Icons.production_quantity_limits,
                color: Color.fromARGB(255, 255, 0, 187),
              ),
              title: Text('Productos'),
              subtitle: Text('Subtitle de productos'),
              trailing: Icon(Icons.arrow_circle_left),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => const Productos());
                Navigator.push(context, route);
              },
            ),
            const ListTile(
              leading: Icon(
                Icons.supervised_user_circle,
                color: Color.fromARGB(255, 255, 0, 187),
              ),
              title: Text('Servicios'),
              subtitle: Text('Subtitle de servicios'),
              trailing: Icon(Icons.arrow_circle_left),
            ),
          ],
        ));
  }
}
