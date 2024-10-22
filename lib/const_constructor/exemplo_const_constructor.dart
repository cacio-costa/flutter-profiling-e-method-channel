import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dinheiro.dart';

class ExemploConstConstructor extends StatelessWidget {

  final List<Dinheiro> mutaveis;
  final List<DinheiroImutavel> imutaveis;
  ExemploConstConstructor({super.key})
      : mutaveis = List.generate(10000, (i) => Dinheiro(10.0, 'BRL')),
        imutaveis = List.generate(10000, (i) => const DinheiroImutavel(10.0, 'BRL'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo - Const Constructor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Muitos dinheiros foram criados...',
              style: TextStyle(fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize),
            )
          ],
        ),
      ),

    );
  }
}


