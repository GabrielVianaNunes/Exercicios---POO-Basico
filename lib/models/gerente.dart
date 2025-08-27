import 'funcionario.dart';

class Gerente extends Funcionario {
  double _bonus;

  Gerente(
      {required String nome, required double salario, required double bonus})
      : _bonus = _validaBonus(bonus),
        super(nome: nome, salario: salario);

  double get bonus => _bonus;
  set bonus(double v) => _bonus = _validaBonus(v);

  /// Salário total (salário base + bônus).
  double salarioTotal() => salario + _bonus;

  @override
  String descricao() =>
      'Gerente: $nome | Salário base: R\$ ${salario.toStringAsFixed(2)} | '
      'Bônus: R\$ ${_bonus.toStringAsFixed(2)}';

  static double _validaBonus(double v) {
    if (v < 0) throw ArgumentError('Bônus não pode ser negativo.');
    return v;
  }
}
