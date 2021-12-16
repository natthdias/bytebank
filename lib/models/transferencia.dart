class Transferencia {
  final int numeroConta;
  final double valor;

  Transferencia(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Transferencia{valor:$valor, numeroConta: $numeroConta}';
  }
}
