class Funcionario {
  String _nome;
  double _salario;

  Funcionario({required String nome, required double salario})
      : _nome = _validaNome(nome),
        _salario = _validaSalario(salario);

  String get nome => _nome;
  set nome(String v) => _nome = _validaNome(v);

  double get salario => _salario;
  set salario(double v) => _salario = _validaSalario(v);

  /// Reutilizável por subclasses: aumenta o salário em %.
  void aplicarAumento(double percentual) {
    if (percentual < 0)
      throw ArgumentError('Percentual não pode ser negativo.');
    _salario *= (1 + percentual / 100.0);
  }

  String descricao() =>
      'Funcionário: $_nome | Salário: R\$ ${_salario.toStringAsFixed(2)}';

  static String _validaNome(String v) {
    final t = v.trim();
    if (t.isEmpty) throw ArgumentError('Nome não pode ser vazio.');
    return t;
  }

  static double _validaSalario(double v) {
    if (v < 0) throw ArgumentError('Salário não pode ser negativo.');
    return v;
  }
}
