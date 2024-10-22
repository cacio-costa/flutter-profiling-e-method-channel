class Dinheiro {
  double valor;
  String moeda;

  Dinheiro(this.valor, this.moeda);

}

class DinheiroImutavel {
  final double valor;
  final String moeda;

  const DinheiroImutavel(this.valor, this.moeda);
}