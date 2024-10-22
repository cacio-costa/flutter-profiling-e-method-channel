import 'package:flutter/material.dart';

import 'box_colorido.dart';

class ExemploDeListaSemListView extends StatefulWidget {
  ExemploDeListaSemListView({super.key});

  @override
  State<ExemploDeListaSemListView> createState() => _ExemploDeListaSemListViewState();
}

class _ExemploDeListaSemListViewState extends State<ExemploDeListaSemListView> {

  List<BoxColorido> boxes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo - Lista SEM ListView'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: boxes
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            boxes = getListaDeBoxes();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
