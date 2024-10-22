import 'package:flutter/material.dart';
import 'package:sicoobapp/method_channel/channel.dart';

class ExemploDeMethodChannel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo - Method Channel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IndicadorDeBateria(),
          ],
        ),
      ),
    );
  }

}

class IndicadorDeBateria extends StatefulWidget {
  const IndicadorDeBateria({super.key});

  @override
  State<IndicadorDeBateria> createState() => _IndicadorDeBateriaState();
}

class _IndicadorDeBateriaState extends State<IndicadorDeBateria> {
  double _nivel = 0;

  @override
  void initState() {
    super.initState();
    getNivelDeBateria().then((int nivel) {
      setState(() {
        _nivel = nivel.toDouble();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "Nível da bateria: $_nivel%",
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}