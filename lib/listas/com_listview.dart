import 'package:flutter/material.dart';

import 'box_colorido.dart';

class ExemploDeListaComListView extends StatefulWidget {
  ExemploDeListaComListView({super.key});

  @override
  State<ExemploDeListaComListView> createState() => _ExemploDeListaComListViewState();
}

class _ExemploDeListaComListViewState extends State<ExemploDeListaComListView> {
  List<BoxColorido> boxes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo - Lista COM ListView'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: boxes.length,
          itemBuilder: (context, index) {
            return boxes[index];
          },
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
