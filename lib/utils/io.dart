import 'dart:io';

int readInt(String label, {int? min, int? max}) {
  while (true) {
    stdout.write(label);
    final line = stdin.readLineSync();
    final v = int.tryParse(line ?? '');
    if (v == null) {
      stdout.writeln('→ Valor inválido. Tente novamente.');
      continue;
    }
    if (min != null && v < min) {
      stdout.writeln('→ Deve ser >= $min.');
      continue;
    }
    if (max != null && v > max) {
      stdout.writeln('→ Deve ser <= $max.');
      continue;
    }
    return v;
  }
}

double readDouble(String label) {
  while (true) {
    stdout.write(label);
    final line = stdin.readLineSync();
    final v = double.tryParse(line ?? '');
    if (v == null) {
      stdout.writeln('→ Valor inválido. Use ponto para decimais (ex.: 7.5).');
      continue;
    }
    return v;
  }
}

String readLine(String label, {bool allowEmpty = false}) {
  while (true) {
    stdout.write(label);
    final line = stdin.readLineSync();
    if ((line == null || line.trim().isEmpty) && !allowEmpty) {
      stdout.writeln('→ Entrada vazia. Tente novamente.');
      continue;
    }
    return line!.trim();
  }
}
