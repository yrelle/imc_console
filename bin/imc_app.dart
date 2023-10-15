import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
}

void main() {
  try {
    stdout.write('Digite seu nome: ');
    String nome = stdin.readLineSync()!;

    stdout.write('Digite seu peso em kg: ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Digite sua altura em metros: ');
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = calcularIMC(pessoa);

    print('O IMC de ${pessoa.nome} é: $imc');

    if (imc < 18.5) {
      print('Abaixo do peso');
    } else if (imc >= 18.5 && imc < 24.9) {
      print('Peso normal');
    } else if (imc >= 24.9 && imc < 29.9) {
      print('Sobrepeso');
    } else if (imc >= 30) {
      print('Obesidade');
    }
  } catch (e) {
    print('Erro: $e');
  }
}

double calcularIMC(Pessoa pessoa) {
  return pessoa.peso / (pessoa.altura * pessoa.altura);
}
