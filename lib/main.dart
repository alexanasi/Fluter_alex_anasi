import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacionWeb());
}

class MiAplicacionWeb extends StatelessWidget {
  const MiAplicacionWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard Web Modificado',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F172A),
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2563EB),
        title: const Text("Dashboard Empresarial"),
        centerTitle: false,
      ),
      body: Row(
        children: [
          Container(
            width: 220,
            color: const Color(0xFF1E293B),
            child: Column(
              children: const [
                DrawerHeader(
                  child: Text("MENÚ PRINCIPAL", style: TextStyle(fontSize: 20)),
                ),
                ListTile(leading: Icon(Icons.dashboard), title: Text("Inicio")),
                ListTile(
                  leading: Icon(Icons.bar_chart),
                  title: Text("Reportes"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Configuración"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Resumen General del Sistema",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Expanded(child: CardWidget("Producción", "1200")),
                      SizedBox(width: 15),
                      Expanded(child: CardWidget("Energía", "850 kWh")),
                      SizedBox(width: 15),
                      Expanded(child: CardWidget("Alertas", "5")),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Acción ejecutada correctamente"),
                        ),
                      );
                    },
                    child: const Text("Actualizar Datos"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SegundaPantalla(),
                        ),
                      );
                    },
                    child: const Text("Ir a segunda pantalla"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String titulo;
  final String valor;

  const CardWidget(this.titulo, this.valor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E293B),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(titulo, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text(
              valor,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  const SegundaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0EA5E9),
        title: const Text("Segunda Pantalla"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bienvenido a la segunda pantalla",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Regresar"),
            ),
          ],
        ),
      ),
    );
  }
}
