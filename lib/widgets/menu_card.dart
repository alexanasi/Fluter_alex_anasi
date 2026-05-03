import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String descripcion;
  final VoidCallback onTap;

  const MenuCard({
    super.key,
    required this.icono,
    required this.titulo,
    required this.descripcion,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E293B),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(18),
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: const Color(0xFFFFD700),
          child: Icon(icono, color: Colors.black, size: 30),
        ),
        title: Text(titulo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Padding(padding: const EdgeInsets.only(top: 6), child: Text(descripcion)),
        trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xFFFFD700)),
        onTap: onTap,
      ),
    );
  }
}
