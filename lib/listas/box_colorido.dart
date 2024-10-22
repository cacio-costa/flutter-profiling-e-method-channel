import 'package:flutter/material.dart';

class BoxColorido extends StatelessWidget {
  static const List<Color> cores = [
    const Color(0xFFc4d20b),
    const Color(0xFF00ae9d),
    const Color(0xFF003641),
    const Color(0xFFffffff),
  ];
  final int numero;

  const BoxColorido(this.numero, {super.key});

  @override
  Widget build(BuildContext context) {
    double? fontSize = Theme.of(context).textTheme.headlineLarge?.fontSize;

    Color cor = cores[numero % cores.length];
    Color corTexto = cor == Colors.white ? Colors.black : Colors.white;

    return Container(
      width: 550,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: cor,
      ),
      child: Center(
        child: Text(
          '$numero',
          style: TextStyle(fontSize: fontSize, color: corTexto),
        ),
      ),
    );
  }
}

List<BoxColorido> getListaDeBoxes() {
  return List.generate(10000, (i) => BoxColorido(i));
}
