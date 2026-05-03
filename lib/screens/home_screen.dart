import 'package:flutter/material.dart';
import '../data/datos_ciudadela.dart';
import 'alicuota_screen.dart';
import 'espacios_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EDF5),
      appBar: AppBar(
        title: const Text('Ciudadela Balcón del Valle'),
        backgroundColor: const Color(0xFF132435),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TARJETA PRINCIPAL
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF132435),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.apartment, size: 40, color: Colors.amber),
                  const SizedBox(height: 6),
                  Text(
                    residente['ciudadela'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Residente: ${residente['nombre']}',
                    style: const TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Vivienda: ${residente['vivienda']}',
                    style: const TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // TARJETAS INFO
            Row(
              children: [
                Expanded(
                  child: _InfoCard(
                    icon: Icons.payments,
                    titulo: 'Alícuota',
                    valor: '\$${alicuotaMensual['valor']}',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _InfoCard(
                    icon: Icons.verified,
                    titulo: 'Estado',
                    valor: alicuotaMensual['estado'],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            const Text(
              'Menú principal',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            // BOTONES
            _MenuButton(
              icon: Icons.receipt_long,
              texto: 'Estado de Alícuota',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AlicuotaScreen()),
                );
              },
            ),

            const SizedBox(height: 8),

            _MenuButton(
              icon: Icons.event_available,
              texto: 'Espacios Comunes',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const EspaciosScreen()),
                );
              },
            ),

            const SizedBox(height: 10),

            // TARJETA INFERIOR (OCUPA TODO EL ESPACIO)
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xFF132435),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Resumen de servicios',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Row(
                      children: [
                        Icon(Icons.local_parking, color: Colors.amber),
                        SizedBox(width: 8),
                        Text(
                          'Parqueadero asignado: A12',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        Icon(Icons.security, color: Colors.amber),
                        SizedBox(width: 8),
                        Text(
                          'Seguridad 24/7 activa',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      children: [
                        Icon(Icons.wifi, color: Colors.amber),
                        SizedBox(width: 8),
                        Text(
                          'Red interna disponible',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),

                    Spacer(),

                    Text(
                      'Sistema desarrollado en Flutter\nDatos estáticos en Dart',
                      style: TextStyle(color: Colors.white54, fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String valor;

  const _InfoCard({
    required this.icon,
    required this.titulo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF132435),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.amber, size: 26),
          const Spacer(),
          Text(
            titulo,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
          Text(
            valor,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final IconData icon;
  final String texto;
  final VoidCallback onTap;

  const _MenuButton({
    required this.icon,
    required this.texto,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF132435),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        icon: Icon(icon, color: Colors.amber),
        label: Text(texto, style: const TextStyle(fontWeight: FontWeight.bold)),
        onPressed: onTap,
      ),
    );
  }
}
