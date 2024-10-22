import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class ExemploWidgetsSeparados extends StatelessWidget {

  const ExemploWidgetsSeparados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo - Widgets Separados'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextoAnimado(highlight: Colors.red),
            SizedBox(height: 32),
            TextoAnimado(highlight: Colors.amber),
            BotaoCurtir(),
          ],
        ),
      ),
    );
  }

}

class BotaoCurtir extends StatefulWidget {
  const BotaoCurtir({super.key});

  @override
  State<BotaoCurtir> createState() => _BotaoCurtirState();
}

class _BotaoCurtirState extends State<BotaoCurtir> {
  bool curtido = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        curtido ? Icons.thumb_down_off_alt_outlined : Icons.thumb_up,
        size: 50,
      ),
      onPressed: () => setState(() => curtido = !curtido),
    );
  }
}

class TextoAnimado extends StatelessWidget {
  final Color highlight;

  const TextoAnimado({required this.highlight, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 300,
      child: Shimmer.fromColors(
        baseColor: Color(0xFF3d9f95),
        highlightColor: this.highlight,
        child: Text(
          'COOPERATIVA SICOOB',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}



