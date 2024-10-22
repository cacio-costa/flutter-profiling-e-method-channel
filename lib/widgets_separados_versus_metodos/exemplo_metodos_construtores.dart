import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ExemploMetodosConstrutores extends StatefulWidget {
  const ExemploMetodosConstrutores({super.key});

  @override
  State<ExemploMetodosConstrutores> createState() => _ExemploMetodosConstrutoresState();
}

class _ExemploMetodosConstrutoresState extends State<ExemploMetodosConstrutores> {
  bool curtido = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo - Widgets Separados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _rotuloSicoob(Colors.red),
            SizedBox(height: 32),
            _rotuloSicoob(Colors.amber),
            _botaoCurtir(),
          ],
        ),
      ),
    );
  }

  _rotuloSicoob(Color highlight) {
    return SizedBox(
      height: 100,
      width: 300,
      child: Shimmer.fromColors(
        baseColor: Color(0xFF3d9f95),
        highlightColor: highlight,
        child: Text(
          'COOPERATIVA SICOOB',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _botaoCurtir() {
    return IconButton(
      icon: Icon(
        curtido ? Icons.thumb_down_off_alt_outlined : Icons.thumb_up,
        size: 50,
      ),
      onPressed: () => setState(() => curtido = !curtido),
    );
  }
}
