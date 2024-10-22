import 'package:flutter/material.dart';
import 'package:sicoobapp/const_constructor/exemplo_const_constructor.dart';
import 'package:sicoobapp/listas/com_listview.dart';
import 'package:sicoobapp/listas/sem_listview.dart';
import 'package:sicoobapp/method_channel/exemplo_method_channel.dart';
import 'package:sicoobapp/widgets_separados_versus_metodos/exemplo_metodos_construtores.dart';
import 'package:sicoobapp/widgets_separados_versus_metodos/exemplo_widgets_separados.dart';

void main() {
  runApp(const SicoobApp());
}

class SicoobApp extends StatelessWidget {
  const SicoobApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sicoob App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF003641)),
        appBarTheme: const AppBarTheme(
          backgroundColor: const Color(0xFF003641),
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const Home(),
      // home: ExemploConstConstructor(),
      // home: ExemploMetodosConstrutores(),
      // home: const ExemploWidgetsSeparados(),
      // home: ExemploDeListaSemListView()
      //   home: ExemploDeListaComListView()
      // home: ExemploDeMethodChannel(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sicoob App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: const Color(0xFF003641),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/sicoob.png'),
              ),
            ),
            SizedBox(height: 40),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExemploConstConstructor()),
                    );
                  },
                  child: const Text('Exemplo - Const Constructor'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExemploMetodosConstrutores()),
                    );
                  },
                  child: const Text('Exemplo - Métodos Construtores'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ExemploWidgetsSeparados()),
                    );
                  },
                  child: const Text('Exemplo - Widgets Separados'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExemploDeListaSemListView()),
                    );
                  },
                  child: const Text('Exemplo - Lista sem ListView'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExemploDeListaComListView()),
                    );
                  },
                  child: const Text('Exemplo - Lista com ListView'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExemploDeMethodChannel()),
                    );
                  },
                  child: const Text('Exemplo - Method Channel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
