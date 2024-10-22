import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const platform = MethodChannel('br.com.alura/bateria');

Future<int> getNivelDeBateria() async {
  try {
    final int result = await platform.invokeMethod('getNivelDeBateria');
    debugPrint('Nível da bateria obtido com Method Channel: $result%');

    return result;
  } on PlatformException catch (e) {
    debugPrint("Falha ao obter o nível da bateria: '${e.message}'.");

    return -1;
  }
}