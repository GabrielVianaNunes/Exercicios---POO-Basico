import '../interfaces/veiculo.dart';

class Carro implements Veiculo {
  final String marca;
  final String modelo;

  Carro({required this.marca, required this.modelo});

  @override
  String get tipo => 'Carro';

  @override
  void ligar() => print('$tipo ($marca $modelo) ligado.');

  @override
  void acelerar() => print('$tipo ($marca $modelo) acelerando...');

  @override
  void frear() => print('$tipo ($marca $modelo) freando...');

  @override
  String toString() => '$marca $modelo';
}
