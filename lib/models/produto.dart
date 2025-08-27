class Produto {
  double _preco;

  Produto({required double preco}) : _preco = _validaPreco(preco);

  double get preco => _preco;
  set preco(double v) => _preco = _validaPreco(v);

  /// Retorna o novo preço após aplicar o desconto percentual (0–100).
  double calcularDesconto(double percentual) {
    if (percentual < 0 || percentual > 100) {
      throw ArgumentError('Percentual de desconto deve estar entre 0 e 100%.');
    }
    final desconto = _preco * (percentual / 100.0);
    return _preco - desconto;
  }

  static double _validaPreco(double v) {
    if (v < 0) {
      throw ArgumentError('Preço não pode ser negativo.');
    }
    return v;
  }
}
