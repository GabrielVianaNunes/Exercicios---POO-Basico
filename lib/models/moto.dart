import 'package:poo_basico/interfaces/veiculo.dart';

class Moto implements Veiculo {
  final String marca;
  final String modelo;

  Moto({required this.marca, required this.modelo});

  @override
  String get tipo => 'Moto';

  @override
  void ligar() => print('$tipo ($marca $modelo) ligada.');

  @override
  void acelerar() => print('$tipo ($marca $modelo) acelerando...');

  @override
  void frear() => print('$tipo ($marca $modelo) freando...');

  @override
  String toString() => '$marca $modelo';
}
