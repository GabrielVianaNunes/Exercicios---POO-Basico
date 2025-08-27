POO Básico (Dart Console)

Aplicação console em Dart com menu interativo demonstrando:

Classe Aluno (nome, nota1, nota2, calcularMedia()).

Classe Produto (preço, calcularDesconto(%)).

Herança: Funcionario → Gerente (bônus e salarioTotal()), reutilizando métodos.

Encapsulamento: atributos privados com getters/setters e validações.

Interface Veiculo implementada por Carro e Moto (ligar, acelerar, frear).

✅ Pré-requisitos

Dart SDK >=3.3.0 <4.0.0

(Opcional) VS Code com extensão Dart

Verifique:

dart --version

▶️ Como executar

Na raiz do projeto:

dart pub get
dart run bin/poo_basico.dart


O menu exibirá as opções 1 a 5 (e 0 para sair).

Rodar com F5 (VS Code) — opcional

Crie .vscode/launch.json:

{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Dart Console: POO",
      "type": "dart",
      "request": "launch",
      "program": "bin/poo_basico.dart"
    }
  ]
}

```text
🗂️ Estrutura do projeto
poo_basico/
├─ bin/
│  └─ poo_basico.dart
├─ lib/
│  ├─ interfaces/
│  │  └─ veiculo.dart
│  ├─ models/
│  │  ├─ aluno.dart
│  │  ├─ carro.dart
│  │  ├─ funcionario.dart
│  │  ├─ gerente.dart
│  │  ├─ moto.dart
│  │  └─ produto.dart
│  └─ utils/
│     └─ io.dart
└─ pubspec.yaml
```

Arquivos-chave

bin/poo_basico.dart → menu e demonstrações.

lib/models/aluno.dart → média com validação (0–10).

lib/models/produto.dart → desconto (%) com validação.

lib/models/funcionario.dart & lib/models/gerente.dart → herança, aumento e bônus.

lib/interfaces/veiculo.dart + models/carro.dart & models/moto.dart → interface e polimorfismo.

lib/utils/io.dart → helpers (readInt, readDouble, readLine).

🧪 Comandos úteis
dart analyze      # análise estática
dart format .     # formatação

🛠️ Solução de problemas

“Target of URI doesn’t exist” / imports quebrados
Garanta que os caminhos batem com a árvore acima e que pubspec.yaml tem:

name: poo_basico
environment:
  sdk: ">=3.3.0 <4.0.0"


Depois:

dart pub get


package_config.json did not contain its own root package
(cache incoerente, comum em pastas do OneDrive)

Remove-Item -Recurse -Force .dart_tool
Remove-Item -Force pubspec.lock -ErrorAction SilentlyContinue
dart pub get


Dica: marque a pasta como Sempre manter neste dispositivo no OneDrive ou use um caminho simples (ex.: C:\dev\poo_basico).

🧱 (Opcional) Gerar executável (Windows)
dart compile exe bin/poo_basico.dart -o build/poo.exe
.\build\poo.exe


Autor: Gabriel Nunes


Objetivo: praticar conceitos fundamentais de POO em Dart de forma simples e interativa.