import 'package:flutter/material.dart';
import '../data/datos_ciudadela.dart';

class AlicuotaScreen extends StatelessWidget {
  const AlicuotaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final estado = alicuotaMensual['estado'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Estado de Alícuota'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Icon(
                    Icons.receipt_long,
                    size: 80,
                    color: Colors.indigo,
                  ),
                ),
                const SizedBox(height: 20),

                Text('Residente: ${residente['nombre']}'),
                Text('Vivienda: ${residente['vivienda']}'),
                Text('Mes: ${alicuotaMensual['mes']}'),
                Text('Valor: \$${alicuotaMensual['valor']}'),
                Text('Fecha de pago: ${alicuotaMensual['fechaPago']}'),
                Text('Método: ${alicuotaMensual['metodoPago']}'),

                const SizedBox(height: 20),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: estado == 'Pagado' ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Estado: $estado',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Historial:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                ...historialAlicuotas.map(
                  (item) => Text(
                    '${item['mes']} - ${item['estado']} - \$${item['valor']}',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
