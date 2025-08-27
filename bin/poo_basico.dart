import 'dart:io';
import 'package:poo_basico/utils/io.dart';
import 'package:poo_basico/models/aluno.dart';
import 'package:poo_basico/models/produto.dart';
import 'package:poo_basico/models/funcionario.dart';
import 'package:poo_basico/models/gerente.dart';
import 'package:poo_basico/interfaces/veiculo.dart';
import 'package:poo_basico/models/carro.dart';
import 'package:poo_basico/models/moto.dart';

void main(List<String> args) {
  while (true) {
    stdout.writeln('\n=== POO BÁSICO — ATIVIDADES (Dart Console) ===');
    stdout.writeln(' 1) Classe Aluno (média)');
    stdout.writeln(' 2) Classe Produto (desconto)');
    stdout.writeln(' 3) Herança (Funcionario → Gerente)');
    stdout.writeln(' 4) Encapsulamento (getters/setters com validação)');
    stdout.writeln(' 5) Interface Veiculo (Carro/Moto)');
    stdout.writeln(' 0) Sair');

    final opt = readInt('\nEscolha uma opção: ', min: 0, max: 5);
    if (opt == 0) {
      stdout.writeln('Até mais!');
      break;
    }

    switch (opt) {
      case 1:
        _demoAluno();
        break;
      case 2:
        _demoProduto();
        break;
      case 3:
        _demoHeranca();
        break;
      case 4:
        _demoEncapsulamento();
        break;
      case 5:
        _demoInterface();
        break;
    }
  }
}

void _demoAluno() {
  final nome = readLine('Nome do aluno: ');
  final n1 = readDouble('Nota 1 (0–10): ');
  final n2 = readDouble('Nota 2 (0–10): ');
  final a = Aluno(nome: nome, nota1: n1, nota2: n2);
  stdout.writeln(a);
  stdout.writeln('Média: ${a.calcularMedia().toStringAsFixed(2)}');
}

void _demoProduto() {
  final preco = readDouble('Preço do produto: ');
  final p = Produto(preco: preco);
  final perc = readDouble('Desconto (%) 0–100: ');
  final novoPreco = p.calcularDesconto(perc);
  stdout.writeln('Preço original: R\$ ${p.preco.toStringAsFixed(2)}');
  stdout.writeln('Preço com desconto: R\$ ${novoPreco.toStringAsFixed(2)}');
}

void _demoHeranca() {
  final f = Funcionario(nome: 'Alice', salario: 4000);
  final g = Gerente(nome: 'Bruno', salario: 7000, bonus: 1500);

  stdout.writeln('Antes do aumento:');
  stdout.writeln(f.descricao());
  stdout.writeln(g.descricao());
  stdout.writeln(
      'Salário total do gerente: R\$ ${g.salarioTotal().toStringAsFixed(2)}');

  f.aplicarAumento(10); // +10%
  g.aplicarAumento(10); // +10% (herdado)

  stdout.writeln('\nDepois do aumento de 10%:');
  stdout.writeln(f.descricao());
  stdout.writeln(g.descricao());
  stdout.writeln(
      'Salário total do gerente: R\$ ${g.salarioTotal().toStringAsFixed(2)}');
}

void _demoEncapsulamento() {
  final a = Aluno(nome: 'Carlos', nota1: 8.5, nota2: 9);
  stdout.writeln('Aluno inicial: $a');

  try {
    a.nota1 = -1; // deve disparar exceção
  } catch (e) {
    stdout.writeln('Validação funcionando (nota1 negativa): $e');
  }

  a.nota1 = 9.5;
  stdout.writeln('Aluno após set nota1=9.5: $a');

  final p = Produto(preco: 100);
  try {
    p.preco = -20; // deve disparar exceção
  } catch (e) {
    stdout.writeln('Validação funcionando (preço negativo): $e');
  }
  p.preco = 120;
  stdout
      .writeln('Produto após set preco=120: R\$ ${p.preco.toStringAsFixed(2)}');
}

void _demoInterface() {
  final Veiculo carro = Carro(marca: 'Audi', modelo: 'A4');
  final Veiculo moto = Moto(marca: 'Triumph', modelo: 'Scrambler 900');

  for (final v in [carro, moto]) {
    stdout.writeln('\n${v.tipo} — $v');
    v.ligar();
    v.acelerar();
    v.frear();
  }
}
