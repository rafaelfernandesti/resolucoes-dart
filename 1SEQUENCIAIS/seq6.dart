/*
Escreva um programa em Dart para ler uma temperatura em graus
Fahrenheit, calcular e escrever o valor correspondente em graus Celsius.
*/
import 'dart:io';

main(List<String> args) {
  print("Digite a temperatura (em Fahrenreit): ");
  double tempF = double.parse(stdin.readLineSync()!);
  double tempC = (tempF - 32) * 5 / 9;
  print("Temp.: $tempCº C");
}
