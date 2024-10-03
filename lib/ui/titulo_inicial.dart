import 'package:flutter/material.dart';

class TituloInicialWidget extends StatelessWidget {
  final String titulo;
  final String subTitulo;
  final IconData icone;

  const TituloInicialWidget({super.key, required this.titulo, required this.subTitulo, required this.icone});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icone, size: 100),
        Text(titulo, style: const TextStyle(fontSize: 24)),
        const SizedBox(height: 12),
         Text(subTitulo,
            style: const TextStyle(fontSize: 14), textAlign: TextAlign.center)
      ],
    );
  }
}
