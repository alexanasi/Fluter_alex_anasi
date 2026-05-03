import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String valor;

  const InfoCard({super.key, required this.icono, required this.titulo, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E293B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icono, color: const Color(0xFFFFD700), size: 34),
            const SizedBox(height: 14),
            Text(titulo, style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 8),
            Text(valor, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
