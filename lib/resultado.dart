import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int notaTotal;
  final void Function() reiniciarQuestionario;
  const Resultado(this.notaTotal, this.reiniciarQuestionario, {super.key});

  String get fraseResultado {
    if (notaTotal <= 2) {
      return 'Parabéns!';
    } else if (notaTotal <= 6) {
      return 'Bom!';
    } else if (notaTotal <= 10) {
      return 'Impressionate!';
    } else {
      return 'Top Master!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: reiniciarQuestionario,
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
          ),
          child: const Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
