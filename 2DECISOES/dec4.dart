/*
Para controlar melhor a saúde dos pacientes, os médicos podem utilizar algumas
medidas, como o IMC (Índice de Massa Corpórea). Crie um programa em Dart que
apresente o nome do paciente e sua faixa de classificação, a partir da tabela do IMC.
*/
import 'dart:io';

main(List<String> args) {
  print("Digite a sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  print("Digite o seu peso: ");
  double peso = double.parse(stdin.readLineSync()!);
  double imc = peso / (altura * altura);
  if (imc < 18.5)
    print("Abaixo do peso");
  else if (imc < 24.9)
    print("Peso normal");
  else if (imc < 29.9)
    print("Sobrepeso");
  else if (imc < 34.9)
    print("Obesidade Grau I");
  else if (imc < 39.9)
    print("Obesidade Grau II");
  else
    print("Obesidade Grau III - Mórbida");
}
