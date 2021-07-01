/*
Escreva um programa em Dart para ler um valor em Real (R$), calcular e
escrever o valor correspondente em Dólares (US$).
*/
import 'dart:io';

main(List<String> args) {
  print("Digite o valor em reais: ");
  double real = double.parse(stdin.readLineSync()!);
  double dolar = real * 0.2; //cotaçao de 30/06/2021
  print(
      "${real.toStringAsFixed(2)} reais é correspondente a ${dolar.toStringAsFixed(2)} dólares");
}
