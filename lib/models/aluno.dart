class Aluno {
  String _nome;
  double _nota1;
  double _nota2;

  Aluno({required String nome, required double nota1, required double nota2})
      : _nome = nome,
        _nota1 = _validaNota(nota1),
        _nota2 = _validaNota(nota2);

  // Getters e setters com validação (encapsulamento)
  String get nome => _nome;
  set nome(String v) {
    if (v.trim().isEmpty) throw ArgumentError('Nome não pode ser vazio.');
    _nome = v.trim();
  }

  double get nota1 => _nota1;
  set nota1(double v) => _nota1 = _validaNota(v);

  double get nota2 => _nota2;
  set nota2(double v) => _nota2 = _validaNota(v);

  double calcularMedia() => (_nota1 + _nota2) / 2.0;

  @override
  String toString() => 'Aluno(nome: $_nome, nota1: $_nota1, nota2: $_nota2)';

  static double _validaNota(double v) {
    if (v < 0 || v > 10) {
      throw ArgumentError('Nota deve estar entre 0 e 10.');
    }
    return v;
  }
}
