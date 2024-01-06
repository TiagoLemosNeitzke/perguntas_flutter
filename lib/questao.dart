import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      color: Colors.blue,
      child: Text(
        texto,
        style: const TextStyle(
          fontSize: 28,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
