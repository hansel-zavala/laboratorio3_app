import 'package:flutter/material.dart';
import 'package:laboratorio3_app/widgets/pages.dart';

class StackHome extends StatefulWidget{
  const StackHome({super.key});

  @override
  State<StackHome> createState() => _StackHomeState();
}

class _StackHomeState extends State<StackHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu Principal"),
            ),
            ListTile(
              title: const Text('Inicio'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Pagina(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Acerca de"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Pagina2(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Configuracion"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Pagina3(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Pagina de Inicio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                const snackBar = SnackBar(
                  content: Text('Boton de toque presionado'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 55,
                width: 200,
                margin: const EdgeInsets.all(10),
                color: Colors.orange,
                child: const Center(
                  child: Text(
                  'Toque',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                ),
              ),
            ),
            GestureDetector(
              onPanUpdate: (details) {
                const snackBar = SnackBar(
                  content: Text('Boton de desplazamiento desplazado'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 55,
                width: 200,
                margin: const EdgeInsets.all(10),
                color: Colors.green,
                child: const Center(
                  child: Text(
                  'Desplazamiento',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                ),
              ),
            ),
            GestureDetector(
              onDoubleTap: () {
                const snackBar = SnackBar(
                  content: Text('Boton de doble toque presionado'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 55,
                width: 200,
                margin: const EdgeInsets.all(10),
                color: Colors.red,
                child: const Center(child: Text(
                  'Doble Toque',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                ),
              ),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Hola Soy una SnackBar'),
            action: SnackBarAction(
              label: 'undo',
              onPressed: () {
                //Some code to undo
              },
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
