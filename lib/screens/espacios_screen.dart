import 'package:flutter/material.dart';
import '../data/datos_ciudadela.dart';

class EspaciosScreen extends StatefulWidget {
  const EspaciosScreen({super.key});

  @override
  State<EspaciosScreen> createState() => _EspaciosScreenState();
}

class _EspaciosScreenState extends State<EspaciosScreen> {
  void reservar(int index) {
    setState(() {
      espaciosComunes[index]['estado'] = 'Reservado';
    });

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Reserva realizada'),
        content: Text('Reservaste: ${espaciosComunes[index]['nombre']}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Espacios Comunes'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: espaciosComunes.length,
        itemBuilder: (context, index) {
          final espacio = espaciosComunes[index];
          final disponible = espacio['estado'] == 'Disponible';

          return Card(
            child: ListTile(
              leading: Icon(
                disponible ? Icons.check_circle : Icons.cancel,
                color: disponible ? Colors.green : Colors.red,
              ),
              title: Text(espacio['nombre']),
              subtitle: Text(
                '${espacio['descripcion']}\nHorario: ${espacio['horario']}',
              ),
              trailing: disponible
                  ? ElevatedButton(
                      onPressed: () => reservar(index),
                      child: const Text('Reservar'),
                    )
                  : const Text('No disponible'),
            ),
          );
        },
      ),
    );
  }
}
